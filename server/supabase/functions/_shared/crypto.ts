import { crypto } from "https://deno.land/std@0.168.0/crypto/mod.ts"

export async function encrypt(data: string, pin: string): Promise<string> {
  const encoder = new TextEncoder()
  const keyMaterial = await crypto.subtle.importKey(
    "raw",
    encoder.encode(pin.padEnd(32, '0')),
    { name: "AES-GCM" },
    false,
    ["encrypt"]
  )
  
  const iv = crypto.getRandomValues(new Uint8Array(12))
  const encrypted = await crypto.subtle.encrypt(
    { name: "AES-GCM", iv },
    keyMaterial,
    encoder.encode(data)
  )
  
  const result = new Uint8Array(iv.length + encrypted.byteLength)
  result.set(iv)
  result.set(new Uint8Array(encrypted), iv.length)
  
  return btoa(String.fromCharCode(...result))
}

export async function decrypt(encryptedData: string, pin: string): Promise<string> {
  const data = Uint8Array.from(atob(encryptedData), c => c.charCodeAt(0))
  const iv = data.slice(0, 12)
  const encrypted = data.slice(12)
  
  const encoder = new TextEncoder()
  const keyMaterial = await crypto.subtle.importKey(
    "raw",
    encoder.encode(pin.padEnd(32, '0')),
    { name: "AES-GCM" },
    false,
    ["decrypt"]
  )
  
  const decrypted = await crypto.subtle.decrypt(
    { name: "AES-GCM", iv },
    keyMaterial,
    encrypted
  )
  
  return new TextDecoder().decode(decrypted)
}