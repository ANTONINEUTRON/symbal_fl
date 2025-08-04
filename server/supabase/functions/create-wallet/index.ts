// supabase/functions/create-wallet/index.ts
import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'
import { Keypair, Buffer } from 'https://esm.sh/@solana/web3.js@1.87.6'
import { encrypt } from '../_shared/crypto.ts'

serve(async (req) => {
  const { pin, user_id } = await req.json()
  
  try {
    // Generate new Solana keypair
    const keypair = Keypair.generate()
    const publicKey = keypair.publicKey.toString()
    const privateKey = Buffer.from(keypair.secretKey).toString('base64')
    
    // Encrypt private key with user's PIN
    const encryptedPrivateKey = await encrypt(privateKey, pin)
    
    // Store in database
    const supabase = createClient(
      Deno.env.get('SUPABASE_URL')!,
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
    )
    
    const { data, error } = await supabase
      .from('user_wallets')
      .insert({
        user_id,
        wallet_address: publicKey,
        encrypted_private_key: encryptedPrivateKey,
        wallet_type: 'created'
      })
      .select()
      .single()
    
    if (error) throw error
    
    return new Response(JSON.stringify({
      success: true,
      wallet_address: publicKey,
      wallet_id: data.id
    }))
    
  } catch (error: any) {
    return new Response(JSON.stringify({ error: error.message }), {
      status: 400
    })
  }
})