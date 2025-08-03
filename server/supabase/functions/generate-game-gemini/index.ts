import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { createClient } from 'jsr:@supabase/supabase-js@2';

console.log("Generate Game Function Started!");

// CORS headers for preflight requests
const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
};

interface GameGenerationRequest {
  prompt: string;
  userId?: string;
  assets?: string[];
}

interface GeminiResponse {
  candidates: Array<{
    content: {
      parts: Array<{
        text: string;
      }>;
    };
  }>;
}

interface GeneratedGame {
  title: string;
  description: string;
  html: string;  // The actual game HTML
  messageToUser: string;
  tags: string[];
}

Deno.serve(async (req) => {
  // Handle CORS preflight requests
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  try {
    // Initialize Supabase client
    const supabaseClient = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('APP_PUB_KEY') ?? '',
      {
        global: {
          headers: { Authorization: req.headers.get('Authorization')! },
        },
      }
    );

    // Verify user authentication
    const {
      data: { user },
      error: authError,
    } = await supabaseClient.auth.getUser();

    if (authError || !user) {
      console.log('Unauthorized access attempt:', authError);
      console.log('User:', user);
      return new Response(
        JSON.stringify({ error: 'Unauthorized' }),
        {
          status: 401,
          headers: { ...corsHeaders, 'Content-Type': 'application/json' }
        }
      );
    }

    // Parse request body
    const requestBody: GameGenerationRequest = await req.json();
    const { prompt, assets } = requestBody;

    if (!prompt || prompt.trim().length === 0) {
      return new Response(
        JSON.stringify({ error: 'Prompt is required' }),
        {
          status: 400,
          headers: { ...corsHeaders, 'Content-Type': 'application/json' }
        }
      );
    }

    // Validate assets if provided
    if (assets && assets.length > 0) {
      const maxAssets = 10;

      if (assets.length > maxAssets) {
        return new Response(
          JSON.stringify({ error: `Maximum ${maxAssets} assets allowed` }),
          {
            status: 400,
            headers: { ...corsHeaders, 'Content-Type': 'application/json' }
          }
        );
      }
    }

    // Rate limiting check (optional)
    const rateLimitResult = await checkRateLimit(supabaseClient, user.id);
    if (!rateLimitResult.allowed) {
      return new Response(
        JSON.stringify({
          error: 'Rate limit exceeded',
          resetTime: rateLimitResult.resetTime
        }),
        {
          status: 429,
          headers: { ...corsHeaders, 'Content-Type': 'application/json' }
        }
      );
    }

    // Generate enhanced prompt for Gemini
    const enhancedPrompt = buildGeminiPrompt(prompt, assets);

    const systemPrompt = buildSystemPrompt();

    // Call Gemini API
    const geminiResponse = await callGeminiAPI(systemPrompt, enhancedPrompt);

    if (!geminiResponse) {
      throw new Error('Failed to generate game content');
    }

    // Parse and validate the generated game
    const generatedGame = parseGeminiResponse(geminiResponse);

    // Save generated game to database
    const { data: savedGame, error: saveError } = await supabaseClient
      .from('generated_games')
      .insert([
        {
          user_id: user.id,
          title: generatedGame.title,
          description: generatedGame.description,
          html: generatedGame.html, // Store HTML directly
          message_to_user: generatedGame.messageToUser, // Store message directly
          tags: generatedGame.tags, // Store as array directly
          original_prompt: prompt,
          assets: assets || [],
          status: 'generated',
        }
      ])
      .select()
      .single();

    if (saveError) {
      console.error('Error saving game:', saveError);
      // Continue anyway, return the generated game
    }

    // Update user's generation count
    await updateUserGenerationCount(supabaseClient, user.id);

    // Return successful response
    return new Response(
      JSON.stringify({
        success: true,
        game: generatedGame,
        gameId: savedGame?.id,
        message: 'Game generated successfully!'
      }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' }
      }
    );

  } catch (error: any) {
    console.error('Function error:', error);

    return new Response(
      JSON.stringify({
        error: 'Internal server error',
        details: error.message
      }),
      {
        status: 500,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' }
      }
    );
  }
});

function buildSystemPrompt(): string {
  return String.raw`
You are an expert 2D game developer and a highly secure, reliable code generator. Your task is to create complete, self-contained 2D web games using only vanilla HTML, CSS, and JavaScript. The games must be playable directly in a web browser without any external libraries or frameworks.

Strictly adhere to the following security and asset constraints:
- DO NOT generate any JavaScript code that interacts with the user's local file system (e.g., FileReader, localStorage, indexedDB, fs modules, file:// URLs).
- DO NOT generate any JavaScript code that attempts to make network requests (e.g., fetch, XMLHttpRequest, WebSocket), *except* for loading game assets from URLs explicitly provided in the user's prompt.
- DO NOT generate any JavaScript code that uses eval(), new Function(), or similar dynamic code execution methods.
- DO NOT generate any JavaScript code that attempts to interact with the parent window or frames (e.g., window.parent, window.top).
- DO NOT generate any JavaScript code that manipulates browser history (history.pushState, history.replaceState).
- **All game assets (images, audio) MUST use the exact URLs provided in the user prompt.** If an asset is described in the prompt without a URL, use CSS-styled colored divs/shapes instead.
- DO NOT generate any HTML tags or attributes that load external resources from any domain not explicitly provided in the user prompt.
- DO NOT generate any code that could lead to excessive CPU/memory consumption or infinite loops.


CRITICAL JSON FORMATTING REQUIREMENTS:
- Your entire response MUST be a single, valid JSON object
- ALL quotes inside HTML content MUST be escaped as \"
- ALL backslashes inside HTML content MUST be escaped as \\\\
- ALL newlines inside HTML content MUST be escaped as \\n
- Use double quotes for JSON properties only
- NO trailing commas in JSON
- NO comments in JSON

Response format:
{
  "title": "Game Title",
  "description": "Brief description of the game",
  "html": "Complete HTML5 document with inline CSS and JavaScript. Must be a fully playable game.",
  "messageToUser": "Short, encouraging message about the generation or suggestion targetted at the creator (max 300 characters)",
  "tags": ["tag1", "tag2", "tag3"]
}

The HTML must be a complete, valid HTML5 document that can be rendered directly in a browser. Include all CSS in <style> tags and all JavaScript in <script> tags within the HTML.
`;

}

// Helper function to build enhanced prompt for Gemini
function buildGeminiPrompt(
  userPrompt: string,
  assets: string[] = []
): string {
  let assetSection: string = '';

  if (assets && assets.length > 0) {
    assetSection = `

**Available Assets:**
${assets.map((assetUrl, index) => `${index + 1}. ${assetUrl}`).join('\n')}

**Asset Instructions:**
- Use these exact URLs for loading images/audio in your game
- Reference them directly in your HTML/CSS/JavaScript
- Ensure proper error handling for asset loading
- If an asset fails to load, provide a fallback (colored div/shape)
`;
  }


  const basePrompt = `
Generate a complete 2D web game based on this user request:

**User's Game Request:** ${userPrompt}
${assetSection}

**Requirements:**
- Create a fully playable 2D game using only HTML, CSS, and JavaScript
- Use ONLY the asset URLs provided above (if any)
- colored divs/shapes can also be used 
- Implement intuitive controls (arrow keys, WASD, or mouse/touch) where applicable
- The game is strictly mobile based and a single HTML document
- Include clear win/lose conditions
- Add a reset/restart mechanism
- Make the game visually appealing with the specified theme/style

**Technical Constraints:**
- No external libraries or frameworks
- No network requests except for user-provided asset URLs
- No file system access
- No eval() or dynamic code execution
- Complete game must be in a single HTML document

**Output Format:**
Respond with a valid JSON object containing the complete game as specified in the system instructions.

**Asset Usage:**
- Only use the image/audio URLs provided in the Available Assets section above
- If user mentions visual elements without providing URLs, implement them as CSS-styled elements
- Ensure all referenced assets are loaded properly with error handling
`;

  return basePrompt;
}



// Function to call Gemini API
async function callGeminiAPI(sysPrompt: string, prompt: string): Promise<string | null> {
  const geminiApiKey = Deno.env.get('GEMINI_API_KEY');

  if (!geminiApiKey) {
    throw new Error('GEMINI_API_KEY environment variable not set');
  }

  const geminiUrl = `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${geminiApiKey}`;

  try {
    const response = await fetch(geminiUrl, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        system_instruction: {
          parts: [
            {
              text: sysPrompt
            }
          ]
        },
        contents: [
          {
            parts: [
              {
                text: prompt
              }
            ]
          }
        ],
        generationConfig: {
          temperature: 0.7,
          topK: 40,
          topP: 0.95,
          maxOutputTokens: 2048,
        },
        safetySettings: [
          {
            category: "HARM_CATEGORY_HARASSMENT",
            threshold: "BLOCK_MEDIUM_AND_ABOVE"
          },
          {
            category: "HARM_CATEGORY_HATE_SPEECH",
            threshold: "BLOCK_MEDIUM_AND_ABOVE"
          }
        ]
      }),
    });

    if (!response.ok) {
      console.error('Gemini API error:', response.status, response.statusText);
      return null;
    }

    const data: GeminiResponse = await response.json();

    if (data.candidates && data.candidates.length > 0) {
      return data.candidates[0].content.parts[0].text;
    }

    return null;
  } catch (error) {
    console.error('Error calling Gemini API:', error);
    return null;
  }
}

// Function to parse Gemini response
function parseGeminiResponse(response: string): GeneratedGame {
  try {
    // Clean the response more thoroughly
    let cleanedResponse = response.trim();

    // Remove markdown code blocks
    cleanedResponse = cleanedResponse
      .replace(/```json\s*/g, '')
      .replace(/```\s*/g, '')
      .trim();

    // Try to find JSON object boundaries
    const jsonStart = cleanedResponse.indexOf('{');
    const jsonEnd = cleanedResponse.lastIndexOf('}');

    if (jsonStart === -1 || jsonEnd === -1) {
      throw new Error('No valid JSON object found in response');
    }

    let jsonString = cleanedResponse.substring(jsonStart, jsonEnd + 1);

    jsonString = fixJsonEscaping(jsonString);

    // Log the JSON string for debugging (first 200 chars)
    console.log('Attempting to parse JSON:', jsonString.substring(0, 200) + '...');


    const parsedGame: GeneratedGame = JSON.parse(jsonString);

    // Validate required fields
    if (!parsedGame.title || !parsedGame.html) {
      throw new Error('Invalid game structure from Gemini');
    }

    // Ensure questions have required fields
    return {
      title: parsedGame.title || 'Generated Game',
      description: parsedGame.description || 'A game generated from your prompt',
      html: parsedGame.html || '',
      messageToUser: parsedGame.messageToUser || 'Enjoy your new game!',
      tags: Array.isArray(parsedGame.tags) ? parsedGame.tags : ['generated']
    };
  } catch (error) {
    console.error('Error parsing Gemini response:', error);
    console.error('Raw response length:', response.length);

    // ✅ NEW: Try alternative parsing approach
    const fallbackGame = tryFallbackParsing(response);
    if (fallbackGame) {
      return fallbackGame;
    }

    // Return a fallback game structure
    return {
      title: 'Simple Game',
      description: 'A basic game',
      html: '<html><body><h1>Game generation failed</h1><p>Please try again.</p></body></html>',
      messageToUser: 'Game generation encountered an error. Please try again.',
      tags: ['error']
    };
  }
}

function fixJsonEscaping(jsonString: string): string {
  try {
    // First, let's try to fix common escaping issues
    let fixed = jsonString;

    // Fix unescaped quotes within HTML content
    // Look for patterns like: "html": "...content with "quotes"..."
    fixed = fixed.replace(/"html":\s*"([^"]*(?:\\.[^"]*)*)"/, (match, htmlContent) => {
      // Properly escape quotes within the HTML content
      const escapedHtml = htmlContent
        .replace(/\\/g, '\\\\')  // Escape backslashes
        .replace(/"/g, '\\"')    // Escape quotes
        .replace(/\n/g, '\\n')   // Escape newlines
        .replace(/\r/g, '\\r')   // Escape carriage returns
        .replace(/\t/g, '\\t');  // Escape tabs

      return `"html": "${escapedHtml}"`;
    });

    return fixed;
  } catch (error) {
    console.error('Error fixing JSON escaping:', error);
    return jsonString;
  }
}

// ✅ NEW: Fallback parsing approach
function tryFallbackParsing(response: string): GeneratedGame | null {
  try {
    // Extract individual fields using regex patterns
    const titleMatch = response.match(/"title":\s*"([^"]+)"/);
    const descriptionMatch = response.match(/"description":\s*"([^"]+)"/);
    const messageMatch = response.match(/"messageToUser":\s*"([^"]+)"/);
    const tagsMatch = response.match(/"tags":\s*\[([^\]]+)\]/);

    // Extract HTML content more carefully
    const htmlMatch = response.match(/"html":\s*"(.*?)"\s*,\s*"messageToUser"/s);

    if (titleMatch && htmlMatch) {
      const tags = tagsMatch ?
        tagsMatch[1].split(',').map(tag => tag.trim().replace(/"/g, '')) :
        ['generated'];

      return {
        title: titleMatch[1] || 'Generated Game',
        description: descriptionMatch?.[1] || 'A game generated from your prompt',
        html: htmlMatch[1].replace(/\\"/g, '"').replace(/\\n/g, '\n') || '',
        messageToUser: messageMatch?.[1] || 'Enjoy your new game!',
        tags: tags
      };
    }

    return null;
  } catch (error) {
    console.error('Fallback parsing failed:', error);
    return null;
  }
}

// Rate limiting function
async function checkRateLimit(supabaseClient: any, userId: string) {
  const now = new Date();
  const oneHourAgo = new Date(now.getTime() - 60 * 60 * 1000);

  const { data, error } = await supabaseClient
    .from('user_generations')
    .select('created_at')
    .eq('user_id', userId)
    .gte('created_at', oneHourAgo.toISOString());

  if (error) {
    console.error('Rate limit check error:', error);
    return { allowed: true };
  }

  const generationsInLastHour = data?.length || 0;
  const maxGenerationsPerHour = 10; // Adjust as needed

  return {
    allowed: generationsInLastHour < maxGenerationsPerHour,
    resetTime: new Date(now.getTime() + 60 * 60 * 1000).toISOString()
  };
}

// Update user generation count
async function updateUserGenerationCount(supabaseClient: any, userId: string) {
  const { error } = await supabaseClient
    .from('user_generations')
    .insert([
      {
        user_id: userId,
        created_at: new Date().toISOString()
      }
    ]);

  if (error) {
    console.error('Error updating generation count:', error);
  }
}


