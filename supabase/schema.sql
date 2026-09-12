create extension if not exists "pgcrypto";
create table if not exists properties (
 id uuid primary key default gen_random_uuid(), title text not null, builder text, location text, bhk text,
 price_min numeric default 0, price_max numeric default 0, possession text, rera text, status text default 'available',
 description text, property_type text, area text, carpet_area text, map_url text, brochure_url text,
 featured boolean default true, amenities jsonb default '[]'::jsonb, floor_plans jsonb default '[]'::jsonb, images jsonb default '[]'::jsonb,
 created_at timestamptz default now()
);
create table if not exists leads (
 id uuid primary key default gen_random_uuid(), name text not null, phone text not null, email text, message text,
 property_title text, status text default 'new', notes text default '', follow_up_date date, created_at timestamptz default now()
);
insert into storage.buckets (id,name,public) values ('property-images','property-images',true) on conflict (id) do nothing;
create policy "public read property images" on storage.objects for select using (bucket_id='property-images');
create policy "service upload property images" on storage.objects for insert with check (bucket_id='property-images');
