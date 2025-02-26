-- Check if the database exists and drop it if it does
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'LaptopStore')
BEGIN
    -- Drop any existing foreign key constraints to avoid errors
    -- (You'll need to add these back later when you re-create the tables)

    -- Drop foreign keys from tblUsers
    IF OBJECT_ID('FK_Users_Roles', 'F') IS NOT NULL
        ALTER TABLE tblUsers DROP CONSTRAINT FK_Users_Roles;

    -- Drop foreign keys from tblProducts
    IF OBJECT_ID('FK_Product_Category', 'F') IS NOT NULL
        ALTER TABLE tblProducts DROP CONSTRAINT FK_Product_Category;
    IF OBJECT_ID('FK_Product_Brand', 'F') IS NOT NULL
        ALTER TABLE tblProducts DROP CONSTRAINT FK_Product_Brand;

    -- Drop foreign keys from tblProductDetails
    IF OBJECT_ID('FK_ProductDetail_Product', 'F') IS NOT NULL
        ALTER TABLE tblProductDetails DROP CONSTRAINT FK_ProductDetail_Product;

    -- Drop foreign keys from tblOrders
    IF OBJECT_ID('FK_Order_Users', 'F') IS NOT NULL
        ALTER TABLE tblOrders DROP CONSTRAINT FK_Order_Users;

    -- Drop foreign keys from tblOrderDetails
    IF OBJECT_ID('FK_OrderDetail_Order', 'F') IS NOT NULL
        ALTER TABLE tblOrderDetails DROP CONSTRAINT FK_OrderDetail_Order;
    IF OBJECT_ID('FK_OrderDetail_Product', 'F') IS NOT NULL
        ALTER TABLE tblOrderDetails DROP CONSTRAINT FK_OrderDetail_Product;

    -- Now, drop the database itself
    DROP DATABASE LaptopStore;
END
GO
CREATE DATABASE LaptopStore
GO
USE LaptopStore

-- Create tblRoles table
CREATE TABLE tblRoles (
    roleID INT IDENTITY(1,1) PRIMARY KEY,
    roleName NVARCHAR(255) NOT NULL
)
GO

-- Create tblUsers table
CREATE TABLE tblUsers (
    userID VARCHAR(50) PRIMARY KEY,
    fullName NVARCHAR(255) NOT NULL,
    password NVARCHAR(255) NOT NULL,
    roleID INT NOT NULL,
    address NVARCHAR(255),
    phone NVARCHAR(50),
    email NVARCHAR(255),
	activate BIT
    CONSTRAINT FK_Users_Roles FOREIGN KEY (roleID) REFERENCES tblRoles(roleID) ON DELETE CASCADE
)
GO

-- Create tblBrands table (for laptop brands)
CREATE TABLE tblBrands (
    brandID VARCHAR(10) PRIMARY KEY,
    brandName NVARCHAR(255) NOT NULL
)
GO

-- Create tblCategories table (for laptop categories)
CREATE TABLE tblCategories (
    categoryID VARCHAR(10) PRIMARY KEY,
    categoryName NVARCHAR(255) NOT NULL,
	describe NVARCHAR(255)
)
GO

-- Create tblProducts table (specifically for laptops)
CREATE TABLE tblProducts (
    productID INT IDENTITY(1,1) PRIMARY KEY,
    productName NVARCHAR(255) NOT NULL,
    image NVARCHAR(255),
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    categoryID VARCHAR(10) NOT NULL,
    brandID VARCHAR(10) NOT NULL,
    importDate DATE,
    usingDate DATE,
	processor NVARCHAR(255),
    ram NVARCHAR(255),
    storage NVARCHAR(255),
    graphics NVARCHAR(255),
    display NVARCHAR(255),
    operatingSystem NVARCHAR(255),
    warranty NVARCHAR(255),
    CONSTRAINT FK_Product_Category FOREIGN KEY (categoryID) REFERENCES tblCategories(categoryID) ON DELETE CASCADE,
    CONSTRAINT FK_Product_Brand FOREIGN KEY (brandID) REFERENCES tblBrands(brandID) ON DELETE CASCADE
)
GO

-- Create tblProductDetails table
CREATE TABLE tblProductDetails (
    detailID INT IDENTITY(1,1) PRIMARY KEY,
    productID INT NOT NULL,
    specName NVARCHAR(255) NOT NULL,
    specValue NVARCHAR(255) NOT NULL,
    CONSTRAINT FK_ProductDetail_Product FOREIGN KEY (productID) REFERENCES tblProducts(productID) ON DELETE CASCADE
);
GO

-- Create tblOrders table
CREATE TABLE tblOrders (
    orderID INT IDENTITY(1,1) PRIMARY KEY,
    orderDate DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    userID VARCHAR(50) NOT NULL,
    CONSTRAINT FK_Order_Users FOREIGN KEY (userID) REFERENCES tblUsers(userID) ON DELETE CASCADE
)
GO

-- Create tblOrderDetails table
CREATE TABLE tblOrderDetails (
    detailID INT IDENTITY(1,1) PRIMARY KEY,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    orderID INT NOT NULL,
    productID INT NOT NULL,
    CONSTRAINT FK_OrderDetail_Order FOREIGN KEY (orderID) REFERENCES tblOrders(orderID) ON DELETE CASCADE,
    CONSTRAINT FK_OrderDetail_Product FOREIGN KEY (productID) REFERENCES tblProducts(productID) ON DELETE CASCADE
)
GO

-- Insert data into tblRoles
INSERT INTO tblRoles (roleName) VALUES
('Admin'),
('Customer'),
('Manager'),
('Staff'),
('Guest');
GO

-- Insert data into tblUsers
INSERT INTO tblUsers (userID, fullName, password, roleID, address, phone, email, activate) VALUES
('U001', N'Nguyễn Văn A', 'password1', 1, N'Hà Nội', '0123456789', 'a@example.com', 1),
('U002', N'Nguyễn Thị B', 'password2', 2, N'Hải Phòng', '0987654321', 'b@example.com', 1),
('U003', N'Lê Văn C', 'password3', 3, N'Đà Nẵng', '0934567890', 'c@example.com', 1),
('U004', N'Trần Thị D', 'password4', 4, N'TP HCM', '0945678901', 'd@example.com', 0),
('U005', N'Phạm Văn E', 'password5', 5, N'Cần Thơ', '0956789012', 'e@example.com', 1);
GO

-- Insert data into tblBrands (Laptop brands only, no Razer or Samsung)
INSERT INTO tblBrands (brandID, brandName) VALUES
('B001', N'Lenovo'),
('B002', N'Asus'),
('B003', N'Dell'),
('B004', N'HP'),
('B005', N'Acer'),
('B006', N'Apple'),
('B007', N'MSI'),
('B009', N'LG');
GO

-- Insert data into tblCategories (Laptop categories only, no 2-in-1)
INSERT INTO tblCategories (categoryID, categoryName, describe) VALUES
('C001', N'Laptop Gaming', N'Laptop chuyên dụng cho game thủ'),
('C002', N'Laptop Văn Phòng', N'Laptop phục vụ công việc văn phòng'),
('C003', N'Laptop Mỏng Nhẹ', N'Laptop có thiết kế mỏng nhẹ, di động cao'),
('C004', N'Laptop Đồ Họa', N'Laptop chuyên dụng cho thiết kế đồ họa'),
('C005', N'Laptop Cao Cấp', N'Laptop cao cấp, sang trọng'),
('C007', N'Laptop Workstation', N'Laptop chuyên dụng cho công việc đồ họa, kỹ thuật chuyên nghiệp');
GO

-- Insert data into tblProducts (Laptops only, no 2-in-1, no Razer or Samsung)
-- Gaming Laptops
INSERT INTO tblProducts (productName, image, price, quantity, categoryID, brandID, importDate, usingDate, processor, ram, storage, graphics, display, operatingSystem, warranty) VALUES
(N'MSI Katana GF66', 'msi_katana.jpg', 23990.00, 18, 'C001', 'B007', '2023-03-15', '2026-03-15', 'Intel Core i7-12650H', '16GB DDR5', '512GB NVMe SSD', 'NVIDIA GeForce RTX 3050 Ti', '15.6-inch FHD (1920x1080) 144Hz', 'Windows 11 Home', '2-Year'),
(N'Acer Nitro 5', 'acer_nitro5.jpg', 20990.00, 25, 'C001', 'B005', '2023-05-10', '2026-05-10', 'AMD Ryzen 5 5600H', '8GB DDR4', '512GB SSD', 'NVIDIA GeForce GTX 1650', '15.6-inch FHD (1920x1080) IPS 144Hz', 'Windows 11 Home', '1-Year'),
(N'Asus TUF Gaming F15', 'asus_tuf_f15.jpg', 22990.00, 22, 'C001', 'B002', '2023-06-18', '2026-06-18', 'Intel Core i5-11400H', '8GB DDR4', '512GB NVMe SSD', 'NVIDIA GeForce RTX 3050', '15.6-inch FHD (1920x1080) 144Hz', 'Windows 11 Home', '2-Year'),
(N'Dell G15', 'dell_g15.jpg', 21990.00, 20, 'C001', 'B003', '2023-07-25', '2026-07-25', 'AMD Ryzen 5 6600H', '8GB DDR5', '256GB NVMe SSD', 'NVIDIA GeForce RTX 3050', '15.6-inch FHD (1920x1080) 120Hz', 'Windows 11 Home', '1-Year'),
(N'Lenovo Legion 5', 'lenovo_legion5.jpg', 25990.00, 20, 'C001', 'B001', '2023-01-01', '2026-01-01', 'AMD Ryzen 7 5800H', '16GB DDR4', '512GB NVMe SSD', 'NVIDIA GeForce RTX 3050 Ti', '15.6-inch FHD (1920x1080) IPS 165Hz', 'Windows 11 Home', '1-Year'),
(N'Asus ROG Zephyrus G14', 'asus_zephyrusg14.jpg', 32990.00, 15, 'C001', 'B002', '2023-02-01', '2026-02-01', 'AMD Ryzen 9 5900HS', '16GB DDR4', '1TB NVMe SSD', 'NVIDIA GeForce RTX 3050 Ti', '14-inch WQHD (2560x1440) 120Hz', 'Windows 10 Home', '2-Year'),

-- Office Laptops
(N'Lenovo ThinkPad X1 Carbon', 'lenovo_x1carbon.jpg', 35990.00, 15, 'C002', 'B001', '2023-04-05', '2027-04-05', 'Intel Core i7-1260P', '16GB LPDDR5', '1TB NVMe SSD', 'Integrated Intel Iris Xe Graphics', '14-inch WQUXGA (3840x2400) OLED', 'Windows 11 Pro', '3-Year'),
(N'HP Spectre x360', 'hp_spectrex360.jpg', 32990.00, 18, 'C002', 'B004', '2023-05-12', '2027-05-12', 'Intel Core i7-1255U', '16GB LPDDR5', '512GB NVMe SSD', 'Integrated Intel Iris Xe Graphics', '13.5-inch 3K2K (3000x2000) OLED Touch', 'Windows 11 Home', '2-Year'),
(N'Dell Latitude 7420', 'dell_latitude7420.jpg', 29990.00, 20, 'C002', 'B003', '2023-06-20', '2026-06-20', 'Intel Core i5-1145G7', '16GB DDR4', '256GB NVMe SSD', 'Integrated Intel Iris Xe Graphics', '14-inch FHD (1920x1080)', 'Windows 10 Pro', '3-Year'),
(N'Asus ExpertBook B9', 'asus_expertbookb9.jpg', 27990.00, 22, 'C002', 'B002', '2023-07-15', '2026-07-15', 'Intel Core i7-1165G7', '16GB LPDDR4X', '1TB NVMe SSD', 'Integrated Intel Iris Xe Graphics', '14-inch FHD (1920x1080)', 'Windows 10 Pro', '3-Year'),
(N'LG Gram 17', 'lg_gram17.jpg', 26990.00, 16, 'C002', 'B009', '2023-08-22', '2026-08-22', 'Intel Core i7-1260P', '16GB LPDDR5', '1TB NVMe SSD', 'Integrated Intel Iris Xe Graphics', '17-inch WQXGA (2560x1600) IPS', 'Windows 11 Home', '1-Year'),
(N'Dell XPS 13', 'dell_xps13.jpg', 28990.00, 25, 'C002', 'B003', '2023-03-01', '2026-03-01', 'Intel Core i7-1250U', '16GB LPDDR5', '512GB NVMe SSD', 'Integrated Intel Iris Xe Graphics', '13.4-inch FHD+ (1920 x 1200) InfinityEdge', 'Windows 11 Home', '1-Year'),
(N'HP Envy 15', 'hp_envy15.jpg', 23990.00, 30, 'C002', 'B004', '2023-04-01', '2026-04-01', 'Intel Core i7-11800H', '16GB DDR4', '512GB NVMe SSD', 'NVIDIA GeForce RTX 3050 Ti', '15.6-inch FHD (1920 x 1080) IPS', 'Windows 11 Home', '1-Year'),

-- Thin & Light Laptops
(N'HP Pavilion Aero 13', 'hp_pavilion_aero.jpg', 19990.00, 30, 'C003', 'B004', '2023-06-10', '2025-06-10', 'AMD Ryzen 5 5600U', '8GB DDR4', '256GB NVMe SSD', 'Integrated AMD Radeon Graphics', '13.3-inch WQXGA (2560x1600) IPS', 'Windows 11 Home', '1-Year'),
(N'Acer Swift 5', 'acer_swift5.jpg', 21990.00, 28, 'C003', 'B005', '2023-07-18', '2025-07-18', 'Intel Core i7-1260P', '16GB LPDDR5', '1TB SSD', 'Integrated Intel Iris Xe Graphics', '14-inch WQXGA (2560x1600) Touch', 'Windows 11 Home', '1-Year'),
(N'Asus ZenBook 14', 'asus_zenbook14.jpg', 23990.00, 22, 'C003', 'B002', '2023-08-25', '2025-08-25', 'AMD Ryzen 7 5800U', '16GB LPDDR4X', '512GB NVMe SSD', 'Integrated AMD Radeon Graphics', '14-inch FHD (1920x1080) OLED', 'Windows 11 Home', '2-Year'),
(N'Dell Inspiron 14', 'dell_inspiron14.jpg', 18990.00, 35, 'C003', 'B003', '2023-09-12', '2025-09-12', 'Intel Core i5-1235U', '8GB DDR4', '512GB NVMe SSD', 'Integrated Intel Iris Xe Graphics', '14-inch FHD+ (1920 x 1200)', 'Windows 11 Home', '1-Year'),
(N'Acer Swift 3', 'acer_swift3.jpg', 18990.00, 40, 'C003', 'B005', '2023-05-01', '2025-05-01', 'Intel Core i5-1135G7', '8GB LPDDR4X', '512GB NVMe SSD', 'Integrated Intel Iris Xe Graphics', '14-inch FHD (1920x1080) IPS', 'Windows 10 Home', '1-Year'),
(N'MacBook Air', 'macbook_air.jpg', 27990.00, 35, 'C003', 'B006', '2023-06-01', '2026-06-01', 'Apple M1 chip', '8GB Unified Memory', '256GB SSD', 'Apple 7-core GPU', '13.3-inch Retina (2560x1600)', 'macOS Monterey', '1-Year'),

-- Graphic Design Laptops
(N'MSI Creator Z16', 'msi_creatorz16.jpg', 46990.00, 8, 'C004', 'B007', '2023-06-05', '2027-06-05', 'Intel Core i9-12900H', '32GB DDR5', '2TB NVMe SSD', 'NVIDIA GeForce RTX 3070 Ti', '16-inch QHD+ (2560x1600) 165Hz Touch', 'Windows 11 Pro', '2-Year'),
(N'HP ZBook Studio', 'hp_zbookstudio.jpg', 44990.00, 10, 'C004', 'B004', '2023-08-20', '2027-08-20', 'Intel Core i9-11950H', '32GB DDR4', '1TB NVMe SSD', 'NVIDIA RTX A2000', '15.6-inch UHD (3840x2160) OLED Touch', 'Windows 10 Pro', '3-Year'),
(N'Acer ConceptD 7', 'acer_conceptd7.jpg', 42990.00, 12, 'C004', 'B005', '2023-09-15', '2027-09-15', 'Intel Core i7-10875H', '32GB DDR4', '1TB NVMe SSD', 'NVIDIA GeForce RTX 2080 Super Max-Q', '15.6-inch 4K UHD (3840x2160) IPS Pantone Validated', 'Windows 10 Pro', '2-Year'),
(N'Asus ProArt StudioBook', 'asus_proart.jpg', 48990.00, 7, 'C004', 'B002', '2023-10-22', '2028-10-22', 'Intel Xeon W-11955M', '64GB ECC DDR4', '2TB NVMe SSD', 'NVIDIA RTX A5000', '16-inch 4K UHD (3840x2400) OLED Pantone Validated Touch', 'Windows 10 Pro', '3-Year'),

-- High-End Laptops
(N'Dell XPS 17', 'dell_xps17.jpg', 43990.00, 12, 'C005', 'B003', '2023-07-01', '2027-07-01', 'Intel Core i9-12900HK', '32GB DDR5', '1TB NVMe SSD', 'NVIDIA GeForce RTX 3060', '17-inch UHD+ (3840 x 2400) InfinityEdge Touch', 'Windows 11 Home', '1-Year'),
(N'HP Spectre Folio', 'hp_spectrefolio.jpg', 40990.00, 15, 'C005', 'B004', '2023-08-10', '2027-08-10', 'Intel Core i7-8500Y', '16GB LPDDR3', '1TB SSD', 'Integrated Intel UHD Graphics 615', '13.3-inch FHD (1920x1080) Touch', 'Windows 10 Home', '1-Year'),
(N'Lenovo ThinkPad X1 Extreme', 'lenovo_x1extreme.jpg', 45990.00, 10, 'C005', 'B001', '2023-09-18', '2027-09-18', 'Intel Core i9-11950H', '32GB DDR4', '1TB NVMe SSD', 'NVIDIA GeForce RTX 3080', '16-inch 4K UHD (3840x2400) IPS', 'Windows 11 Pro', '3-Year'),
(N'MSI Prestige 14', 'msi_prestige14.jpg', 38990.00, 14, 'C005', 'B007', '2023-11-12', '2027-11-12', 'Intel Core i7-1280P', '16GB LPDDR5', '1TB NVMe SSD', 'NVIDIA GeForce RTX 3050', '14-inch FHD+ (1920x1200) IPS-Level', 'Windows 11 Home', '2-Year'),
(N'MacBook Pro 16', 'macbook_pro16.jpg', 55990.00, 8, 'C005', 'B006', '2023-10-01', '2028-10-01', 'Apple M1 Max chip', '32GB Unified Memory', '1TB SSD', 'Apple 32-core GPU', '16.2-inch Liquid Retina XDR (3456x2234)', 'macOS Monterey', '1-Year'),

-- Workstation Laptops
(N'Lenovo ThinkPad P15', 'lenovo_thinkpadp15.jpg', 52990.00, 8, 'C007', 'B001', '2023-09-05', '2028-09-05', 'Intel Xeon W-11855M', '32GB ECC DDR4', '1TB NVMe SSD', 'NVIDIA RTX A4000', '15.6-inch UHD (3840x2160) IPS', 'Windows 10 Pro for Workstations', '3-Year'),
(N'HP ZBook Fury 17', 'hp_zbookfury17.jpg', 58990.00, 6, 'C007', 'B004', '2023-10-12', '2028-10-12', 'Intel Core i9-11950H', '64GB DDR4', '2TB NVMe SSD', 'NVIDIA RTX A5000', '17.3-inch UHD (3840x2160) DreamColor', 'Windows 10 Pro for Workstations', '3-Year'),
(N'Dell Precision 7560', 'dell_precision7560.jpg', 55990.00, 7, 'C007', 'B003', '2023-11-20', '2028-11-20', 'Intel Xeon W-11955M', '32GB ECC DDR4', '1TB NVMe SSD', 'NVIDIA RTX A3000', '15.6-inch UHD (3840x2160)', 'Windows 10 Pro for Workstations', '3-Year'),
(N'MSI WS76', 'msi_ws76.jpg', 60990.00, 5, 'C007', 'B007', '2023-12-15', '2029-12-15', 'Intel Core i9-11900H', '64GB DDR4', '2TB NVMe SSD', 'NVIDIA RTX A5000', '17.3-inch 4K UHD (3840x2160) IPS', 'Windows 10 Pro', '2-Year'),
(N'Asus ProArt StudioBook Pro X', 'asus_proartstudiobookx.jpg', 65990.00, 4, 'C007', 'B002', '2024-01-22', '2029-01-22', 'Intel Xeon W-11955M', '128GB ECC DDR4', '4TB NVMe SSD (2x 2TB)', 'NVIDIA RTX A5000', '16-inch 4K UHD (3840x2400) OLED Pantone Validated Touch', 'Windows 10 Pro', '3-Year');
GO

-- Insert data into tblProductDetails
-- Example for Lenovo Legion 5 (productID = 5)
INSERT INTO tblProductDetails (productID, specName, specValue) VALUES
(5, N'CPU Cores', N'8'),
(5, N'CPU Threads', N'16'),
(5, N'Max Turbo Frequency', N'4.4 GHz'),
(5, N'RAM Type', N'DDR4-3200'),
(5, N'Maximum RAM Capacity', N'32 GB'),
(5, N'Storage Type', N'PCIe NVMe SSD'),
(5, N'GPU Memory', N'4 GB GDDR6'),
(5, N'Display Refresh Rate', N'165 Hz'),
(5, N'Display Type', N'IPS'),
(5, N'Panel Type', N'Anti-glare'),
(5, N'Brightness', N'300 nits'),
(5, N'Color Gamut', N'100% sRGB'),
(5, N'Webcam', N'720p HD'),
(5, N'Keyboard', N'4-Zone RGB Backlit'),
(5, N'Audio', N'2 x 2W Harman Speakers with Nahimic Audio'),
(5, N'Wi-Fi', N'Wi-Fi 6 (802.11ax)'),
(5, N'Bluetooth', N'Bluetooth 5.1'),
(5, N'Ports', N'1 x USB-C 3.2 Gen 2, 3 x USB-A 3.2 Gen 1, 1 x HDMI 2.1, 1 x RJ45 Ethernet, 1 x Headphone/Mic Combo'),
(5, N'Battery', N'60 Wh'),
(5, N'Battery Life', N'Up to 8 hours'),
(5, N'Weight', N'2.4 kg'),
(5, N'Dimensions', N'363.06 x 259.61 x 23.57-26.1 mm'),
(5, N'Security', N'Webcam Privacy Shutter');

-- Example for Dell XPS 17 (productID = 25)
INSERT INTO tblProductDetails (productID, specName, specValue) VALUES
(25, N'CPU Cores', N'8'),
(25, N'CPU Threads', N'16'),
(25, N'Max Turbo Frequency', N'5.0 GHz'),
(25, N'RAM Type', N'DDR5-4800'),
(25, N'Maximum RAM Capacity', N'64 GB'),
(25, N'Storage Type', N'PCIe NVMe SSD'),
(25, N'GPU Memory', N'6 GB GDDR6'),
(25, N'Display Type', N'InfinityEdge'),
(25, N'Panel Type', N'Anti-Reflective'),
(25, N'Brightness', N'500 nits'),
(25, N'Color Gamut', N'100% Adobe RGB'),
(25, N'Webcam', N'720p HD'),
(25, N'Keyboard', N'Backlit'),
(25, N'Audio', N'Quad-speaker design with 2.5W x2 woofers and 1.5W x2 tweeters'),
(25, N'Wi-Fi', N'Killer Wi-Fi 6E (802.11ax)'),
(25, N'Bluetooth', N'Bluetooth 5.2'),
(25, N'Ports', N'4 x Thunderbolt 4 (USB-C) with DisplayPort and Power Delivery, 1 x Full-size SD card reader v6.0, 1 x 3.5mm Headphone/Mic Combo'),
(25, N'Battery', N'97 Wh'),
(25, N'Battery Life', N'Up to 10 hours'),
(25, N'Weight', N'2.42 kg'),
(25, N'Dimensions', N'374.45 x 248.05 x 19.5 mm'),
(25, N'Security', N'Fingerprint Reader, Windows Hello Face Recognition');
-- ... (Insert details for other laptops similarly)

-- Insert data into tblOrders (More Orders, different dates)
INSERT INTO tblOrders (orderDate, total, userID) VALUES
('2023-06-10', 25990.00, 'U001'),
('2023-07-15', 65980.00, 'U002'),
('2023-08-22', 44990.00, 'U003'),
('2023-09-10', 87980.00, 'U004'),
('2023-10-05', 18990.00, 'U005'),
('2023-10-18', 55990.00, 'U001'),
('2023-11-25', 48990.00, 'U002'),
('2023-12-08', 29990.00, 'U003'),
('2023-12-20', 23990.00, 'U004'),
('2024-01-12', 32990.00, 'U005');
GO

-- Insert data into tblOrderDetails (Matching the products and orders)
INSERT INTO tblOrderDetails (price, quantity, orderID, productID) VALUES
(25990.00, 1, 1, 5),
(32990.00, 2, 2, 6),
(44990.00, 1, 3, 28),
(21990.00, 2, 4, 4),
(32990.00, 1, 4, 8),
(18990.00, 1, 5, 17),
(55990.00, 1, 6, 32),
(48990.00, 1, 7, 30),
(29990.00, 1, 8, 9),
(23990.00, 1, 9, 15),
(32990.00, 1, 10, 7);
GO