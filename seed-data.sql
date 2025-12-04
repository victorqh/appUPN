-- Script para insertar datos iniciales en la base de datos
-- Ejecutar este script en el SQL Editor de Neon

-- Insertar Categorías
INSERT INTO categorias (nombre, descripcion) VALUES
('Laptops', 'Computadoras portátiles de última generación'),
('Smartphones', 'Teléfonos inteligentes y accesorios'),
('Tablets', 'Tablets y dispositivos móviles'),
('Televisores', 'Televisores Smart TV y pantallas'),
('Electrodomésticos', 'Lavadoras, refrigeradoras y más'),
('Audio', 'Audífonos, parlantes y equipos de sonido'),
('Gaming', 'Consolas, accesorios y periféricos gamer'),
('Accesorios', 'Accesorios tecnológicos variados');

-- Insertar Productos

-- LAPTOPS (Categoría 1)
INSERT INTO productos (nombre, descripcion, precio, precioanterior, stock, imagenurl, categoriaid, estaactivo, esoferta, fechacreacion) VALUES
('Laptop HP Pavilion 15', 'Intel Core i5 11va Gen, 8GB RAM, 512GB SSD, Windows 11', 2499.00, 2999.00, 15, 'https://placehold.co/300x200/2196F3/FFF?text=Laptop+HP', 1, true, true, NOW()),
('MacBook Air M2', 'Chip M2, 8GB RAM, 256GB SSD, Pantalla Retina 13.6"', 5499.00, NULL, 8, 'https://placehold.co/300x200/4CAF50/FFF?text=MacBook+Air', 1, true, false, NOW()),
('Lenovo IdeaPad 3', 'AMD Ryzen 5, 16GB RAM, 512GB SSD, 15.6" FHD', 2199.00, 2599.00, 12, 'https://placehold.co/300x200/FF5722/FFF?text=Lenovo', 1, true, true, NOW()),
('Dell Inspiron 15', 'Intel Core i7 12va Gen, 16GB RAM, 1TB SSD', 3899.00, NULL, 10, 'https://placehold.co/300x200/3F51B5/FFF?text=Dell+Laptop', 1, true, false, NOW()),
('ASUS VivoBook 14', 'Intel Core i3, 8GB RAM, 256GB SSD, Ultradelgada', 1799.00, 2199.00, 18, 'https://placehold.co/300x200/00BCD4/FFF?text=ASUS', 1, true, true, NOW()),
('MSI Gaming GF63', 'Intel i5, 16GB RAM, GTX 1650, 512GB SSD', 3499.00, NULL, 6, 'https://placehold.co/300x200/F44336/FFF?text=MSI+Gaming', 1, true, false, NOW());

-- SMARTPHONES (Categoría 2)
INSERT INTO productos (nombre, descripcion, precio, precioanterior, stock, imagenurl, categoriaid, estaactivo, esoferta, fechacreacion) VALUES
('iPhone 15 Pro', '128GB, Titanio Azul, Triple Cámara 48MP', 5299.00, NULL, 12, 'https://placehold.co/300x200/FF9800/FFF?text=iPhone+15', 2, true, false, NOW()),
('Samsung Galaxy S24', '256GB, Violeta, Snapdragon 8 Gen 3, 5G', 3899.00, 4299.00, 10, 'https://placehold.co/300x200/9C27B0/FFF?text=Galaxy+S24', 2, true, true, NOW()),
('Xiaomi Redmi Note 13', '128GB, 6GB RAM, Cámara 108MP, Negro', 899.00, 1199.00, 25, 'https://placehold.co/300x200/FF5722/FFF?text=Xiaomi', 2, true, true, NOW()),
('Google Pixel 8', '128GB, Obsidiana, Tensor G3, Android 14', 3499.00, NULL, 8, 'https://placehold.co/300x200/4285F4/FFF?text=Pixel+8', 2, true, false, NOW()),
('OnePlus 11', '256GB, 16GB RAM, Snapdragon 8 Gen 2', 2999.00, 3499.00, 15, 'https://placehold.co/300x200/E91E63/FFF?text=OnePlus', 2, true, true, NOW()),
('Motorola Edge 40', '256GB, 5G, Pantalla OLED 144Hz', 1899.00, NULL, 20, 'https://placehold.co/300x200/00ACC1/FFF?text=Motorola', 2, true, false, NOW());

-- TABLETS (Categoría 3)
INSERT INTO productos (nombre, descripcion, precio, precioanterior, stock, imagenurl, categoriaid, estaactivo, esoferta, fechacreacion) VALUES
('iPad Air 2024', '128GB WiFi, Pantalla 10.9", Chip M1', 2899.00, NULL, 20, 'https://placehold.co/300x200/E91E63/FFF?text=iPad+Air', 3, true, false, NOW()),
('Samsung Galaxy Tab S9', '128GB, 11", S Pen incluido, WiFi', 1899.00, 2199.00, 7, 'https://placehold.co/300x200/00BCD4/FFF?text=Tab+S9', 3, true, true, NOW()),
('Lenovo Tab M10', '64GB, 10.1", Android 13, Batería 5000mAh', 699.00, 899.00, 15, 'https://placehold.co/300x200/607D8B/FFF?text=Lenovo+Tab', 3, true, true, NOW()),
('Huawei MatePad 11', '128GB, WiFi 6, Pantalla 2K, Stylus', 1599.00, NULL, 12, 'https://placehold.co/300x200/FF9800/FFF?text=MatePad', 3, true, false, NOW());

-- TELEVISORES (Categoría 4)
INSERT INTO productos (nombre, descripcion, precio, precioanterior, stock, imagenurl, categoriaid, estaactivo, esoferta, fechacreacion) VALUES
('Samsung Smart TV 55"', 'QLED 4K, Tizen OS, HDR10+, 120Hz', 2899.00, 3299.00, 8, 'https://placehold.co/300x200/1976D2/FFF?text=Samsung+TV', 4, true, true, NOW()),
('LG OLED 65"', '4K UHD, WebOS, Dolby Vision, HDMI 2.1', 5499.00, NULL, 5, 'https://placehold.co/300x200/D32F2F/FFF?text=LG+OLED', 4, true, false, NOW()),
('Sony Bravia 50"', 'LED 4K, Google TV, Triluminos, X1', 2399.00, 2799.00, 10, 'https://placehold.co/300x200/388E3C/FFF?text=Sony+TV', 4, true, true, NOW()),
('TCL 43" Smart TV', 'Full HD, Android TV, Chromecast integrado', 1299.00, NULL, 18, 'https://placehold.co/300x200/7B1FA2/FFF?text=TCL+TV', 4, true, false, NOW()),
('Hisense 58" ULED', '4K UHD, Quantum Dot, Dolby Atmos', 1999.00, 2399.00, 12, 'https://placehold.co/300x200/0288D1/FFF?text=Hisense', 4, true, true, NOW());

-- ELECTRODOMÉSTICOS (Categoría 5)
INSERT INTO productos (nombre, descripcion, precio, precioanterior, stock, imagenurl, categoriaid, estaactivo, esoferta, fechacreacion) VALUES
('Lavadora LG 18kg', 'Carga frontal, Inverter Direct Drive, SmartThinQ', 1899.00, 2199.00, 10, 'https://placehold.co/300x200/C62828/FFF?text=Lavadora+LG', 5, true, true, NOW()),
('Refrigeradora Samsung', '500L, No Frost, Dispensador agua/hielo', 2999.00, NULL, 7, 'https://placehold.co/300x200/1565C0/FFF?text=Refrigeradora', 5, true, false, NOW()),
('Microondas Panasonic', '1.3 cu.ft, Inverter, 1100W, Acero inoxidable', 499.00, 599.00, 20, 'https://placehold.co/300x200/6A1B9A/FFF?text=Microondas', 5, true, true, NOW()),
('Aspiradora Dyson V15', 'Sin bolsa, Tecnología ciclónica, Batería 60min', 2199.00, NULL, 8, 'https://placehold.co/300x200/00796B/FFF?text=Dyson', 5, true, false, NOW()),
('Licuadora Oster 600W', '3 velocidades, Vaso vidrio 1.25L, Acero', 199.00, 249.00, 30, 'https://placehold.co/300x200/F57C00/FFF?text=Licuadora', 5, true, true, NOW());

-- AUDIO (Categoría 6)
INSERT INTO productos (nombre, descripcion, precio, precioanterior, stock, imagenurl, categoriaid, estaactivo, esoferta, fechacreacion) VALUES
('AirPods Pro 2', 'Cancelación de ruido activa, USB-C, H2 chip', 1099.00, NULL, 25, 'https://placehold.co/300x200/607D8B/FFF?text=AirPods', 6, true, false, NOW()),
('Sony WH-1000XM5', 'Audífonos Bluetooth, ANC Premium, 30hrs batería', 1599.00, 1899.00, 15, 'https://placehold.co/300x200/212121/FFF?text=Sony+Audio', 6, true, true, NOW()),
('JBL Flip 6', 'Parlante Bluetooth, IP67, 12hrs batería, Azul', 499.00, NULL, 22, 'https://placehold.co/300x200/2196F3/FFF?text=JBL+Flip', 6, true, false, NOW()),
('Bose QuietComfort', 'Audífonos inalámbricos, ANC, Bluetooth 5.1', 1399.00, 1699.00, 10, 'https://placehold.co/300x200/424242/FFF?text=Bose', 6, true, true, NOW()),
('Samsung Galaxy Buds2 Pro', 'Earbuds con ANC, IPX7, Carga inalámbrica', 799.00, NULL, 18, 'https://placehold.co/300x200/9C27B0/FFF?text=Buds2', 6, true, false, NOW());

-- GAMING (Categoría 7)
INSERT INTO productos (nombre, descripcion, precio, precioanterior, stock, imagenurl, categoriaid, estaactivo, esoferta, fechacreacion) VALUES
('PlayStation 5', 'Consola 825GB SSD, Control DualSense, 4K 120fps', 2499.00, NULL, 8, 'https://placehold.co/300x200/003791/FFF?text=PS5', 7, true, false, NOW()),
('Xbox Series X', '1TB SSD, Ray Tracing, 4K, Game Pass Ultimate', 2299.00, 2599.00, 10, 'https://placehold.co/300x200/107C10/FFF?text=Xbox', 7, true, true, NOW()),
('Nintendo Switch OLED', 'Pantalla OLED 7", 64GB, Dock HDMI', 1699.00, NULL, 15, 'https://placehold.co/300x200/E60012/FFF?text=Switch', 7, true, false, NOW()),
('Razer DeathAdder V3', 'Mouse gaming, 30K DPI, RGB Chroma', 349.00, 449.00, 25, 'https://placehold.co/300x200/00FF00/000?text=Razer', 7, true, true, NOW()),
('Logitech G Pro X', 'Teclado mecánico, Switch GX Blue, RGB', 699.00, NULL, 12, 'https://placehold.co/300x200/00B8FC/FFF?text=Logitech+G', 7, true, false, NOW()),
('HyperX Cloud III', 'Audífonos gaming, 7.1 surround, USB-C', 599.00, 749.00, 20, 'https://placehold.co/300x200/FF0000/FFF?text=HyperX', 7, true, true, NOW());

-- ACCESORIOS (Categoría 8)
INSERT INTO productos (nombre, descripcion, precio, precioanterior, stock, imagenurl, categoriaid, estaactivo, esoferta, fechacreacion) VALUES
('Logitech MX Master 3S', 'Mouse inalámbrico, 8000 DPI, Ergonómico', 399.00, 499.00, 30, 'https://placehold.co/300x200/795548/FFF?text=Mouse', 8, true, true, NOW()),
('Webcam Logitech C920', 'Full HD 1080p, Micrófono dual, USB', 349.00, NULL, 22, 'https://placehold.co/300x200/00BCD4/FFF?text=Webcam', 8, true, false, NOW()),
('Teclado Mecánico Keychron', 'K2, Wireless, RGB, Hot-swappable', 499.00, 599.00, 18, 'https://placehold.co/300x200/FF5722/FFF?text=Keychron', 8, true, true, NOW()),
('Hub USB-C Anker 7 en 1', 'HDMI 4K, USB 3.0, SD/microSD, 100W PD', 199.00, NULL, 35, 'https://placehold.co/300x200/607D8B/FFF?text=Hub+Anker', 8, true, false, NOW()),
('Cable HDMI 2.1', '2 metros, 8K 60Hz, eARC, Ultra HD', 79.00, 99.00, 50, 'https://placehold.co/300x200/9E9E9E/FFF?text=HDMI', 8, true, true, NOW());

-- Usuarios de prueba (las contraseñas deben ser hasheadas en producción)
INSERT INTO users (nombre, email, passwordhash, telefono, direccion, rol) VALUES
('Admin Test', 'admin@test.com', '$2a$11$XqGz8Q9YZJKx8nYZ5V0sZuGz8Q9YZJKx8nYZ5V0sZu', '999888777', 'Lima, Peru', 'Admin'),
('Cliente Test', 'cliente@test.com', '$2a$11$XqGz8Q9YZJKx8nYZ5V0sZuGz8Q9YZJKx8nYZ5V0sZu', '999777888', 'Lima, Peru', 'Cliente');
