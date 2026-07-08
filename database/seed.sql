-- ============================================
-- DATA SEED E-COMMERCE
-- Tugas Besar - Integrasi Supabase
-- ============================================
-- Catatan:
--   - Data dummy realistis untuk toko online Indonesia
--   - Harga dalam Rupiah (IDR)
--   - Jalankan setelah schema.sql
-- ============================================


-- ============================================
-- KATEGORI PRODUK (HYPE. Streetwear)
-- 6 kategori utama toko streetwear
-- ============================================
INSERT INTO categories (name, slug, description, image_url) VALUES
  (
    'Sneakers',
    'sneakers',
    'Koleksi sepatu sneakers hypebeast dan limited edition',
    'https://images.unsplash.com/photo-1552346154-21d32810baa3?w=400&q=80'
  ),
  (
    'Tees',
    'tees',
    'Kaos oversized dengan grafis bold dan material premium',
    'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400&q=80'
  ),
  (
    'Outerwear',
    'outerwear',
    'Hoodie, jaket varsity, dan windbreaker untuk layer gaya kamu',
    'https://images.unsplash.com/photo-1556821840-3a63f95609a7?w=400&q=80'
  ),
  (
    'Bottoms',
    'bottoms',
    'Celana cargo parachute, baggy jeans, dan celana pendek',
    'https://images.unsplash.com/photo-1624378439575-d8705ad7ae80?w=400&q=80'
  ),
  (
    'Accessories',
    'accessories',
    'Topi beanie, kacamata hitam, kalung rantai, dan tas selempang',
    'https://images.unsplash.com/photo-1611652022419-a9419f74343d?w=400&q=80'
  ),
  (
    'Tech Vibes',
    'tech-vibes',
    'Aksesoris gadget estetik, casing HP, dan earbuds keren',
    'https://images.unsplash.com/photo-1612815154858-60aa4c59eaa6?w=400&q=80'
  );


-- ============================================
-- PRODUK (HYPE.)
-- 18 produk terdistribusi di berbagai kategori
-- ============================================

-- ---- Kategori: Sneakers ----
INSERT INTO products (name, slug, description, price, stock, category_id, image_url) VALUES
  (
    'Air Retro High OG "Chicago"',
    'air-retro-high-og-chicago',
    'Sepatu sneakers ikonik dengan colorway klasik merah, putih, dan hitam. Wajib dimiliki untuk melengkapi rotasi hype-mu.',
    3250000.00,
    15,
    (SELECT id FROM categories WHERE slug = 'sneakers'),
    'https://images.unsplash.com/photo-1597045566677-8cf032ed6634?w=400&q=80'
  ),
  (
    'Yeezy Boost 350 V2 "Zebra"',
    'yeezy-boost-350-v2-zebra',
    'Kenyamanan maksimal dipadukan dengan corak zebra hitam putih yang mencolok. Cocok untuk daily flex.',
    4500000.00,
    8,
    (SELECT id FROM categories WHERE slug = 'sneakers'),
    'https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=400&q=80'
  ),
  (
    'Dunk Low "Panda" Retro',
    'dunk-low-panda-retro',
    'Sneakers paling versatile tahun ini. Desain monokrom yang cocok dipadukan dengan fit apapun.',
    2100000.00,
    30,
    (SELECT id FROM categories WHERE slug = 'sneakers'),
    'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?w=400&q=80'
  );

-- ---- Kategori: Tees ----
INSERT INTO products (name, slug, description, price, stock, category_id, image_url) VALUES
  (
    'HYPE. Heavyweight Boxy Tee - Black',
    'hype-heavyweight-boxy-tee-black',
    'Kaos hitam berpotongan boxy (lebar) dengan material katun tebal 24s. Jatuh sempurna di badan.',
    250000.00,
    150,
    (SELECT id FROM categories WHERE slug = 'tees'),
    'https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?w=400&q=80'
  ),
  (
    'Vintage Wash Band Graphic Tee',
    'vintage-wash-band-graphic-tee',
    'Kaos dengan proses pencucian acid-wash memberikan efek vintage/pudar dengan grafis band rock.',
    320000.00,
    60,
    (SELECT id FROM categories WHERE slug = 'tees'),
    'https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?w=400&q=80'
  ),
  (
    'Minimalist Logo Embroided Tee',
    'minimalist-logo-embroided-tee',
    'Kaos putih bersih dengan logo bordir kecil di bagian dada. Pilihan tepat untuk gaya quiet luxury streetwear.',
    275000.00,
    100,
    (SELECT id FROM categories WHERE slug = 'tees'),
    'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400&q=80'
  );

-- ---- Kategori: Outerwear ----
INSERT INTO products (name, slug, description, price, stock, category_id, image_url) VALUES
  (
    'Varsity Jacket "Championship" Navy',
    'varsity-jacket-championship-navy',
    'Jaket varsity dengan bahan wool premium dan lengan kulit sintetis. Terdapat patch bordir bergaya retro campus.',
    650000.00,
    45,
    (SELECT id FROM categories WHERE slug = 'outerwear'),
    'https://images.unsplash.com/photo-1559551409-dadc959f76b8?w=400&q=80'
  ),
  (
    'Oversized Zip-Up Hoodie Grey',
    'oversized-zip-up-hoodie-grey',
    'Hoodie resleting berpotongan sangat longgar (oversized). Sangat nyaman untuk gaya santai ke kampus.',
    380000.00,
    80,
    (SELECT id FROM categories WHERE slug = 'outerwear'),
    'https://images.unsplash.com/photo-1556821840-3a63f95609a7?w=400&q=80'
  ),
  (
    'Nylon Parachute Windbreaker',
    'nylon-parachute-windbreaker',
    'Jaket tipis berbahan parasut nilon yang tahan air dan angin. Gaya techwear masa kini.',
    420000.00,
    65,
    (SELECT id FROM categories WHERE slug = 'outerwear'),
    'https://images.unsplash.com/photo-1544441893-675973e31985?w=400&q=80'
  );

-- ---- Kategori: Bottoms ----
INSERT INTO products (name, slug, description, price, stock, category_id, image_url) VALUES
  (
    'Techwear Parachute Cargo Pants',
    'techwear-parachute-cargo-pants',
    'Celana kargo berukuran ekstra lebar (baggy) dengan tali serut di pergelangan kaki. Wajib untuk gaya Y2K.',
    350000.00,
    120,
    (SELECT id FROM categories WHERE slug = 'bottoms'),
    'https://images.unsplash.com/photo-1624378439575-d8705ad7ae80?w=400&q=80'
  ),
  (
    'Faded Baggy Denim Jeans',
    'faded-baggy-denim-jeans',
    'Jeans denim dengan potongan longgar lurus dan efek pudar (faded) di bagian lutut.',
    450000.00,
    90,
    (SELECT id FROM categories WHERE slug = 'bottoms'),
    'https://images.unsplash.com/photo-1542272604-787c3835535d?w=400&q=80'
  ),
  (
    'Sweatshorts "Essential" Black',
    'sweatshorts-essential-black',
    'Celana pendek berbahan baby terry yang tebal namun adem. Nyaman dipakai nongkrong.',
    180000.00,
    150,
    (SELECT id FROM categories WHERE slug = 'bottoms'),
    'https://images.unsplash.com/photo-1591195853828-11db59a44f6b?w=400&q=80'
  );

-- ---- Kategori: Accessories ----
INSERT INTO products (name, slug, description, price, stock, category_id, image_url) VALUES
  (
    'Fisherman Beanie Hat Black',
    'fisherman-beanie-hat-black',
    'Kupluk berpotongan pendek (fisherman style) berbahan rajut tebal. Melengkapi tampilan rebel kamu.',
    85000.00,
    200,
    (SELECT id FROM categories WHERE slug = 'accessories'),
    'https://images.unsplash.com/photo-1576871337622-98d48d1cf531?w=400&q=80'
  ),
  (
    'Cuban Link Chain Necklace',
    'cuban-link-chain-necklace',
    'Kalung rantai baja anti karat dengan ketebalan medium. Tidak mudah pudar walau terkena keringat.',
    120000.00,
    100,
    (SELECT id FROM categories WHERE slug = 'accessories'),
    'https://images.unsplash.com/photo-1599643478524-fb66fa7a4933?w=400&q=80'
  ),
  (
    'Tactical Sling Bag Crossbody',
    'tactical-sling-bag-crossbody',
    'Tas selempang dengan banyak kompartemen gaya taktikal. Dilengkapi buckle strap yang tangguh.',
    220000.00,
    85,
    (SELECT id FROM categories WHERE slug = 'accessories'),
    'https://images.unsplash.com/photo-1547949003-9792a18a2601?w=400&q=80'
  );

-- ---- Kategori: Tech Vibes ----
INSERT INTO products (name, slug, description, price, stock, category_id, image_url) VALUES
  (
    'Clear Shockproof iPhone Case',
    'clear-shockproof-iphone-case',
    'Casing HP bening dengan bumper tebal untuk melindungi dari benturan ekstrim. Anti menguning.',
    95000.00,
    300,
    (SELECT id FROM categories WHERE slug = 'tech-vibes'),
    'https://images.unsplash.com/photo-1601593346740-925612772716?w=400&q=80'
  ),
  (
    'Mechanical Keyboard 60% RGB',
    'mechanical-keyboard-60-rgb',
    'Keyboard mekanik ringkas dengan lampu RGB kustom. Red switch untuk suara ketikan yang hening namun responsif.',
    550000.00,
    40,
    (SELECT id FROM categories WHERE slug = 'tech-vibes'),
    'https://images.unsplash.com/photo-1595225476474-87563907a212?w=400&q=80'
  ),
  (
    'Cyberpunk LED Display Backpack',
    'cyberpunk-led-display-backpack',
    'Tas punggung futuristik dengan layar LED yang bisa diprogram melalui aplikasi. Tampilkan grafis buatanmu sendiri.',
    1250000.00,
    15,
    (SELECT id FROM categories WHERE slug = 'tech-vibes'),
    'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400&q=80'
  );
