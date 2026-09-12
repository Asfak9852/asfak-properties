# Asfak Properties — Supabase Edition

## What changed
- PostgreSQL database through Supabase (properties + leads)
- Permanent cloud data instead of `data/db.json`
- Direct multiple image upload from phone/computer
- Images stored in Supabase Storage
- Existing image URLs still supported
- Individual image removal
- Lead CRM and admin dashboard now use Supabase

## Setup (required once)
1. Create a Supabase project.
2. Open SQL Editor and run `supabase/schema.sql`.
3. Copy `.env.example` to `.env`.
4. Add `SUPABASE_URL` and **service_role** key (never expose this key in browser/client code).
5. Run `npm install` then `npm start`.

## Render
Add every `.env` value as an Environment Variable in Render. Do not commit `.env`.
