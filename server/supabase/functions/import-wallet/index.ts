import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { Keypair, Buffer, bip39 } from 'https://esm.sh/@solana/web3.js@1.87.6'
import { encrypt } from '../_shared/crypto.ts'
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'

serve(async (req) => {
  const { seedPhrase, privateKey, pin, user_id } = await req.json()
  
  try {
    const supabase = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('APP_PUB_KEY') ?? '',
      {
        global: {
          headers: { Authorization: req.headers.get('Authorization')! },
        },
      }
    );
    
    let keypair: Keypair
    
    if (seedPhrase) {
      // Import from seed phrase
      const seed = await bip39.mnemonicToSeed(seedPhrase)
      keypair = Keypair.fromSeed(seed.slice(0, 32))
    } else if (privateKey) {
      // Import from private key
      const secretKey = Buffer.from(privateKey, 'base64')
      keypair = Keypair.fromSecretKey(secretKey)
    } else {
      throw new Error('Either seedPhrase or privateKey required')
    }
    
    const publicKey = keypair.publicKey.toString()
    const encryptedPrivateKey = await encrypt(
      Buffer.from(keypair.secretKey).toString('base64'), 
      pin
    )
    
    // Store in database
    const { data, error } = await supabase
      .from('user_wallets')
      .insert({
        user_id,
        wallet_address: publicKey,
        encrypted_private_key: encryptedPrivateKey,
        wallet_type: 'imported'
      })
      .select()
      .single()
    
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
