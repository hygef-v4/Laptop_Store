USE [master]
GO
/****** Object:  Database [LaptopStore2]    Script Date: 03/04/25 11:29:04 PM ******/
CREATE DATABASE [LaptopStore2]
 GO
USE [LaptopStore2]
GO
/****** Object:  Table [dbo].[tblBrands]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBrands](
	[brandID] [varchar](10) NOT NULL,
	[brandName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCarts]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCarts](
	[cartID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategories]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategories](
	[categoryID] [varchar](10) NOT NULL,
	[categoryName] [nvarchar](255) NOT NULL,
	[describe] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiscounts]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiscounts](
	[discountID] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[discountPercent] [int] NOT NULL,
	[startDate] [datetime] NOT NULL,
	[endDate] [datetime] NOT NULL,
	[minOrderValue] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[discountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetails]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetails](
	[detailID] [int] IDENTITY(1,1) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[quantity] [int] NOT NULL,
	[orderID] [int] NOT NULL,
	[productID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NOT NULL,
	[total] [decimal](10, 2) NOT NULL,
	[userID] [int] NOT NULL,
	[orderStatus] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPayments]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPayments](
	[paymentID] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NOT NULL,
	[paymentMethod] [nvarchar](50) NOT NULL,
	[paymentDate] [datetime] NOT NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[transactionID] [nvarchar](100) NULL,
	[status] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductDetails]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductDetails](
	[detailID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[cpu] [nvarchar](255) NULL,
	[ram] [nvarchar](50) NULL,
	[storage] [nvarchar](50) NULL,
	[screen] [nvarchar](50) NULL,
	[gpu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](255) NOT NULL,
	[image] [nvarchar](255) NULL,
	[price] [decimal](10, 2) NOT NULL,
	[quantity] [int] NOT NULL,
	[categoryID] [varchar](10) NOT NULL,
	[brandID] [varchar](10) NOT NULL,
	[importDate] [date] NULL,
	[warrantyMonths] [int] NULL,
 CONSTRAINT [PK__tblProdu__2D10D14AA95D3051] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductViews]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductViews](
	[viewID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[viewedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[viewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReviews]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReviews](
	[reviewID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[userID] [int] NOT NULL,
	[rating] [int] NOT NULL,
	[comment] [nvarchar](max) NOT NULL,
	[reviewDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblShipping]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblShipping](
	[shippingID] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[trackingNumber] [nvarchar](100) NULL,
	[estimatedDelivery] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[shippingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[roleID] [int] NOT NULL,
	[address] [nvarchar](255) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](255) NULL,
	[activate] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWishlist]    Script Date: 03/04/25 11:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWishlist](
	[wishlistID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[productID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (N'B001', N'Lenovo')
GO
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (N'B002', N'Asus')
GO
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (N'B003', N'Dell')
GO
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (N'B004', N'HP')
GO
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (N'B005', N'Acer')
GO
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (N'B006', N'Apple')
GO
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (N'B007', N'MSI')
GO
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (N'B009', N'LG')
GO
SET IDENTITY_INSERT [dbo].[tblCarts] ON 
GO
INSERT [dbo].[tblCarts] ([cartID], [userID], [productID], [quantity]) VALUES (1, 1, 5, 4)
GO
INSERT [dbo].[tblCarts] ([cartID], [userID], [productID], [quantity]) VALUES (3, 2, 6, 3)
GO
INSERT [dbo].[tblCarts] ([cartID], [userID], [productID], [quantity]) VALUES (4, 1, 10, 3)
GO
SET IDENTITY_INSERT [dbo].[tblCarts] OFF
GO
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [describe]) VALUES (N'C001', N'Laptop Gaming', N'Laptop chuyên dụng cho game thủ')
GO
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [describe]) VALUES (N'C002', N'Laptop Văn Phòng', N'Laptop phục vụ công việc văn phòng')
GO
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [describe]) VALUES (N'C003', N'Laptop Mỏng Nhẹ', N'Laptop có thiết kế mỏng nhẹ, di động cao')
GO
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [describe]) VALUES (N'C004', N'Laptop Đồ Họa', N'Laptop chuyên dụng cho thiết kế đồ họa')
GO
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [describe]) VALUES (N'C005', N'Laptop Cao Cấp', N'Laptop cao cấp, sang trọng')
GO
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [describe]) VALUES (N'C007', N'Laptop Workstation', N'Laptop chuyên dụng cho công việc đồ họa, kỹ thuật chuyên nghiệp')
GO
SET IDENTITY_INSERT [dbo].[tblDiscounts] ON 
GO
INSERT [dbo].[tblDiscounts] ([discountID], [code], [discountPercent], [startDate], [endDate], [minOrderValue], [quantity]) VALUES (1, N'SUMMER20', 20, CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-08-31T00:00:00.000' AS DateTime), CAST(5000.00 AS Decimal(10, 2)), 100)
GO
SET IDENTITY_INSERT [dbo].[tblDiscounts] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrderDetails] ON 
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (1, CAST(25990.00 AS Decimal(10, 2)), 1, 1, 5)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (2, CAST(32990.00 AS Decimal(10, 2)), 2, 2, 6)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (3, CAST(44990.00 AS Decimal(10, 2)), 1, 3, 28)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (4, CAST(21990.00 AS Decimal(10, 2)), 2, 4, 4)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (5, CAST(32990.00 AS Decimal(10, 2)), 1, 4, 8)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (6, CAST(18990.00 AS Decimal(10, 2)), 1, 5, 17)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (7, CAST(55990.00 AS Decimal(10, 2)), 1, 6, 32)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (8, CAST(48990.00 AS Decimal(10, 2)), 1, 7, 30)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (9, CAST(29990.00 AS Decimal(10, 2)), 1, 8, 9)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (10, CAST(23990.00 AS Decimal(10, 2)), 1, 9, 15)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [price], [quantity], [orderID], [productID]) VALUES (11, CAST(32990.00 AS Decimal(10, 2)), 1, 10, 7)
GO
SET IDENTITY_INSERT [dbo].[tblOrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrders] ON 
GO
INSERT [dbo].[tblOrders] ([orderID], [orderDate], [total], [userID], [orderStatus]) VALUES (1, CAST(N'2023-06-10' AS Date), CAST(25990.00 AS Decimal(10, 2)), 1, N'Ch? xác nh?n')
GO
INSERT [dbo].[tblOrders] ([orderID], [orderDate], [total], [userID], [orderStatus]) VALUES (2, CAST(N'2023-07-15' AS Date), CAST(65980.00 AS Decimal(10, 2)), 2, N'Ch? xác nh?n')
GO
INSERT [dbo].[tblOrders] ([orderID], [orderDate], [total], [userID], [orderStatus]) VALUES (3, CAST(N'2023-08-22' AS Date), CAST(44990.00 AS Decimal(10, 2)), 3, N'Ch? xác nh?n')
GO
INSERT [dbo].[tblOrders] ([orderID], [orderDate], [total], [userID], [orderStatus]) VALUES (4, CAST(N'2023-09-10' AS Date), CAST(87980.00 AS Decimal(10, 2)), 4, N'Ch? xác nh?n')
GO
INSERT [dbo].[tblOrders] ([orderID], [orderDate], [total], [userID], [orderStatus]) VALUES (5, CAST(N'2023-10-05' AS Date), CAST(18990.00 AS Decimal(10, 2)), 5, N'Ch? xác nh?n')
GO
INSERT [dbo].[tblOrders] ([orderID], [orderDate], [total], [userID], [orderStatus]) VALUES (6, CAST(N'2023-10-18' AS Date), CAST(55990.00 AS Decimal(10, 2)), 1, N'Ch? xác nh?n')
GO
INSERT [dbo].[tblOrders] ([orderID], [orderDate], [total], [userID], [orderStatus]) VALUES (7, CAST(N'2023-11-25' AS Date), CAST(48990.00 AS Decimal(10, 2)), 2, N'Ch? xác nh?n')
GO
INSERT [dbo].[tblOrders] ([orderID], [orderDate], [total], [userID], [orderStatus]) VALUES (8, CAST(N'2023-12-08' AS Date), CAST(29990.00 AS Decimal(10, 2)), 3, N'Ch? xác nh?n')
GO
INSERT [dbo].[tblOrders] ([orderID], [orderDate], [total], [userID], [orderStatus]) VALUES (9, CAST(N'2023-12-20' AS Date), CAST(23990.00 AS Decimal(10, 2)), 4, N'Ch? xác nh?n')
GO
INSERT [dbo].[tblOrders] ([orderID], [orderDate], [total], [userID], [orderStatus]) VALUES (10, CAST(N'2024-01-12' AS Date), CAST(32990.00 AS Decimal(10, 2)), 5, N'Ch? xác nh?n')
GO
SET IDENTITY_INSERT [dbo].[tblOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPayments] ON 
GO
INSERT [dbo].[tblPayments] ([paymentID], [orderID], [paymentMethod], [paymentDate], [amount], [transactionID], [status]) VALUES (1, 1, N'Credit Card', CAST(N'2025-03-04T22:24:49.987' AS DateTime), CAST(25990.00 AS Decimal(10, 2)), N'CC123456789', N'Completed')
GO
INSERT [dbo].[tblPayments] ([paymentID], [orderID], [paymentMethod], [paymentDate], [amount], [transactionID], [status]) VALUES (2, 2, N'PayPal', CAST(N'2025-03-04T22:24:49.990' AS DateTime), CAST(65980.00 AS Decimal(10, 2)), N'PP987654321', N'Completed')
GO
INSERT [dbo].[tblPayments] ([paymentID], [orderID], [paymentMethod], [paymentDate], [amount], [transactionID], [status]) VALUES (3, 3, N'Cash on Delivery', CAST(N'2025-03-04T22:24:49.990' AS DateTime), CAST(44990.00 AS Decimal(10, 2)), NULL, N'Pending')
GO
INSERT [dbo].[tblPayments] ([paymentID], [orderID], [paymentMethod], [paymentDate], [amount], [transactionID], [status]) VALUES (4, 4, N'Bank Transfer', CAST(N'2023-09-11T10:30:00.000' AS DateTime), CAST(87980.00 AS Decimal(10, 2)), N'BT_TRANS_121', N'Completed')
GO
INSERT [dbo].[tblPayments] ([paymentID], [orderID], [paymentMethod], [paymentDate], [amount], [transactionID], [status]) VALUES (5, 5, N'Credit Card', CAST(N'2025-03-04T22:24:49.990' AS DateTime), CAST(18990.00 AS Decimal(10, 2)), N'CC_FAIL_789', N'Failed')
GO
INSERT [dbo].[tblPayments] ([paymentID], [orderID], [paymentMethod], [paymentDate], [amount], [transactionID], [status]) VALUES (6, 6, N'PayPal', CAST(N'2025-03-04T22:24:49.990' AS DateTime), CAST(55990.00 AS Decimal(10, 2)), N'ASJDA_001', N'Completed')
GO
INSERT [dbo].[tblPayments] ([paymentID], [orderID], [paymentMethod], [paymentDate], [amount], [transactionID], [status]) VALUES (7, 7, N'Credit Card', CAST(N'2025-03-04T22:24:49.990' AS DateTime), CAST(48990.00 AS Decimal(10, 2)), N'CC_002', N'Completed')
GO
INSERT [dbo].[tblPayments] ([paymentID], [orderID], [paymentMethod], [paymentDate], [amount], [transactionID], [status]) VALUES (8, 8, N'Cash on Delivery', CAST(N'2025-03-04T22:24:49.990' AS DateTime), CAST(29990.00 AS Decimal(10, 2)), NULL, N'Pending')
GO
INSERT [dbo].[tblPayments] ([paymentID], [orderID], [paymentMethod], [paymentDate], [amount], [transactionID], [status]) VALUES (9, 9, N'Credit Card', CAST(N'2025-03-04T22:24:49.990' AS DateTime), CAST(23990.00 AS Decimal(10, 2)), N'CC_003', N'Completed')
GO
INSERT [dbo].[tblPayments] ([paymentID], [orderID], [paymentMethod], [paymentDate], [amount], [transactionID], [status]) VALUES (10, 10, N'PayPal', CAST(N'2025-03-04T22:24:49.990' AS DateTime), CAST(32990.00 AS Decimal(10, 2)), N'ASJDA_002', N'Completed')
GO
SET IDENTITY_INSERT [dbo].[tblPayments] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProductDetails] ON 
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (1, 5, N'AMD Ryzen 7 5800H', N'16GB DDR4', N'512GB NVMe SSD', N'15.6-inch FHD (1920x1080) IPS 165Hz', N'NVIDIA GeForce RTX 3050 Ti')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (2, 25, N'Intel Core i9-12900HK', N'32GB DDR5', N'1TB NVMe SSD', N'17-inch UHD+ (3840 x 2400) InfinityEdge Touch', N'NVIDIA GeForce RTX 3060')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (3, 1, N'Intel Core i7-12650H', N'16GB DDR5', N'512GB NVMe SSD', N'15.6-inch FHD (1920x1080) 144Hz', N'NVIDIA GeForce RTX 3050 Ti')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (4, 2, N'AMD Ryzen 5 5600H', N'8GB DDR4', N'512GB SSD', N'15.6-inch FHD (1920x1080) IPS 144Hz', N'NVIDIA GeForce GTX 1650')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (5, 3, N'Intel Core i5-11400H', N'8GB DDR4', N'512GB NVMe SSD', N'15.6-inch FHD (1920x1080) 144Hz', N'NVIDIA GeForce RTX 3050')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (6, 4, N'AMD Ryzen 5 6600H', N'8GB DDR5', N'256GB NVMe SSD', N'15.6-inch FHD (1920x1080) 120Hz', N'NVIDIA GeForce RTX 3050')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (7, 6, N'AMD Ryzen 9 5900HS', N'16GB DDR4', N'1TB NVMe SSD', N'14-inch WQHD (2560x1440) 120Hz', N'NVIDIA GeForce RTX 3050 Ti')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (8, 7, N'Intel Core i7-1260P', N'16GB LPDDR5', N'1TB NVMe SSD', N'14-inch WQUXGA (3840x2400) OLED', N'Integrated Intel Iris Xe Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (9, 8, N'Intel Core i7-1255U', N'16GB LPDDR5', N'512GB NVMe SSD', N'13.5-inch 3K2K (3000x2000) OLED Touch', N'Integrated Intel Iris Xe Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (10, 9, N'Intel Core i5-1145G7', N'16GB DDR4', N'256GB NVMe SSD', N'14-inch FHD (1920x1080)', N'Integrated Intel Iris Xe Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (11, 10, N'Intel Core i7-1165G7', N'16GB LPDDR4X', N'1TB NVMe SSD', N'14-inch FHD (1920x1080)', N'Integrated Intel Iris Xe Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (12, 11, N'Intel Core i7-1260P', N'16GB LPDDR5', N'1TB NVMe SSD', N'17-inch WQXGA (2560x1600) IPS', N'Integrated Intel Iris Xe Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (13, 12, N'Intel Core i7-1250U', N'16GB LPDDR5', N'512GB NVMe SSD', N'13.4-inch FHD+ (1920 x 1200) InfinityEdge', N'Integrated Intel Iris Xe Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (14, 13, N'Intel Core i7-11800H', N'16GB DDR4', N'512GB NVMe SSD', N'15.6-inch FHD (1920 x 1080) IPS', N'NVIDIA GeForce RTX 3050 Ti')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (15, 14, N'AMD Ryzen 5 5600U', N'8GB DDR4', N'256GB NVMe SSD', N'13.3-inch WQXGA (2560x1600) IPS', N'Integrated AMD Radeon Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (16, 15, N'Intel Core i7-1260P', N'16GB LPDDR5', N'1TB SSD', N'14-inch WQXGA (2560x1600) Touch', N'Integrated Intel Iris Xe Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (17, 16, N'AMD Ryzen 7 5800U', N'16GB LPDDR4X', N'512GB NVMe SSD', N'14-inch FHD (1920x1080) OLED', N'Integrated AMD Radeon Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (18, 17, N'Intel Core i5-1235U', N'8GB DDR4', N'512GB NVMe SSD', N'14-inch FHD+ (1920 x 1200)', N'Integrated Intel Iris Xe Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (19, 18, N'Intel Core i5-1135G7', N'8GB LPDDR4X', N'512GB NVMe SSD', N'14-inch FHD (1920x1080) IPS', N'Integrated Intel Iris Xe Graphics')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (20, 19, N'Apple M1 chip', N'8GB Unified Memory', N'256GB SSD', N'13.3-inch Retina (2560x1600)', N'Apple 7-core GPU')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (21, 20, N'Intel Core i9-12900H', N'32GB DDR5', N'2TB NVMe SSD', N'16-inch QHD+ (2560x1600) 165Hz Touch', N'NVIDIA GeForce RTX 3070 Ti')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (22, 21, N'Intel Core i9-11950H', N'32GB DDR4', N'1TB NVMe SSD', N'15.6-inch UHD (3840x2160) OLED Touch', N'NVIDIA RTX A2000')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (23, 22, N'Intel Core i7-10875H', N'32GB DDR4', N'1TB NVMe SSD', N'15.6-inch 4K UHD (3840x2160) IPS Pantone Validated', N'NVIDIA GeForce RTX 2080 Super Max-Q')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (25, 24, N'Intel Core i7-8500Y', N'16GB LPDDR3', N'1TB SSD', N'13.3-inch FHD (1920x1080) Touch', N'Integrated Intel UHD Graphics 615')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (26, 26, N'Intel Core i9-11950H', N'32GB DDR4', N'1TB NVMe SSD', N'16-inch 4K UHD (3840x2400) IPS', N'NVIDIA GeForce RTX 3080')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (27, 27, N'Intel Core i7-1280P', N'16GB LPDDR5', N'1TB NVMe SSD', N'14-inch FHD+ (1920x1200) IPS-Level', N'NVIDIA GeForce RTX 3050')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (28, 28, N'Apple M1 Max chip', N'32GB Unified Memory', N'1TB SSD', N'16.2-inch Liquid Retina XDR (3456x2234)', N'Apple 32-core GPU')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (29, 29, N'Intel Xeon W-11855M', N'32GB ECC DDR4', N'1TB NVMe SSD', N'15.6-inch UHD (3840x2160) IPS', N'NVIDIA RTX A4000')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (30, 30, N'Intel Core i9-11950H', N'64GB DDR4', N'2TB NVMe SSD', N'17.3-inch UHD (3840x2160) DreamColor', N'NVIDIA RTX A5000')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (31, 31, N'Intel Xeon W-11955M', N'32GB ECC DDR4', N'1TB NVMe SSD', N'15.6-inch UHD (3840x2160)', N'NVIDIA RTX A3000')
GO
INSERT [dbo].[tblProductDetails] ([detailID], [productID], [cpu], [ram], [storage], [screen], [gpu]) VALUES (32, 32, N'Intel Core i9-11900H', N'64GB DDR4', N'2TB NVMe SSD', N'17.3-inch 4K UHD (3840x2160) IPS', N'NVIDIA RTX A5000')
GO
SET IDENTITY_INSERT [dbo].[tblProductDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProducts] ON 
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (1, N'MSI Katana GF66', N'msi_katana.jpg', CAST(23990.00 AS Decimal(10, 2)), 18, N'C001', N'B007', CAST(N'2023-03-15' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (2, N'Acer Nitro 5', N'acer_nitro5.jpg', CAST(20990.00 AS Decimal(10, 2)), 25, N'C001', N'B005', CAST(N'2023-05-10' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (3, N'Asus TUF Gaming F15', N'asus_tuf_f15.jpg', CAST(22990.00 AS Decimal(10, 2)), 22, N'C001', N'B002', CAST(N'2023-06-18' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (4, N'Dell G15', N'dell_g15.jpg', CAST(21990.00 AS Decimal(10, 2)), 20, N'C001', N'B003', CAST(N'2023-07-25' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (5, N'Lenovo Legion 5', N'lenovo_legion5.jpg', CAST(25990.00 AS Decimal(10, 2)), 20, N'C001', N'B001', CAST(N'2023-01-01' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (6, N'Asus ROG Zephyrus G14', N'asus_zephyrusg14.jpg', CAST(32990.00 AS Decimal(10, 2)), 15, N'C001', N'B002', CAST(N'2023-02-01' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (7, N'Lenovo ThinkPad X1 Carbon', N'lenovo_x1carbon.jpg', CAST(35990.00 AS Decimal(10, 2)), 15, N'C002', N'B001', CAST(N'2023-04-05' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (8, N'HP Spectre x360', N'hp_spectrex360.jpg', CAST(32990.00 AS Decimal(10, 2)), 18, N'C002', N'B004', CAST(N'2023-05-12' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (9, N'Dell Latitude 7420', N'dell_latitude7420.jpg', CAST(29990.00 AS Decimal(10, 2)), 20, N'C002', N'B003', CAST(N'2023-06-20' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (10, N'Asus ExpertBook B9', N'asus_expertbookb9.jpg', CAST(27990.00 AS Decimal(10, 2)), 22, N'C002', N'B002', CAST(N'2023-07-15' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (11, N'LG Gram 17', N'lg_gram17.jpg', CAST(26990.00 AS Decimal(10, 2)), 16, N'C002', N'B009', CAST(N'2023-08-22' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (12, N'Dell XPS 13', N'dell_xps13.jpg', CAST(28990.00 AS Decimal(10, 2)), 25, N'C002', N'B003', CAST(N'2023-03-01' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (13, N'HP Envy 15', N'hp_envy15.jpg', CAST(23990.00 AS Decimal(10, 2)), 30, N'C002', N'B004', CAST(N'2023-04-01' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (14, N'HP Pavilion Aero 13', N'hp_pavilion_aero.jpg', CAST(19990.00 AS Decimal(10, 2)), 30, N'C003', N'B004', CAST(N'2023-06-10' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (15, N'Acer Swift 5', N'acer_swift5.jpg', CAST(21990.00 AS Decimal(10, 2)), 28, N'C003', N'B005', CAST(N'2023-07-18' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (16, N'Asus ZenBook 14', N'asus_zenbook14.jpg', CAST(23990.00 AS Decimal(10, 2)), 22, N'C003', N'B002', CAST(N'2023-08-25' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (17, N'Dell Inspiron 14', N'dell_inspiron14.jpg', CAST(18990.00 AS Decimal(10, 2)), 35, N'C003', N'B003', CAST(N'2023-09-12' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (18, N'Acer Swift 3', N'acer_swift3.jpg', CAST(18990.00 AS Decimal(10, 2)), 40, N'C003', N'B005', CAST(N'2023-05-01' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (19, N'MacBook Air', N'macbook_air.jpg', CAST(27990.00 AS Decimal(10, 2)), 35, N'C003', N'B006', CAST(N'2023-06-01' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (20, N'MSI Creator Z16', N'msi_creatorz16.jpg', CAST(46990.00 AS Decimal(10, 2)), 8, N'C004', N'B007', CAST(N'2023-06-05' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (21, N'HP ZBook Studio', N'hp_zbookstudio.jpg', CAST(44990.00 AS Decimal(10, 2)), 10, N'C004', N'B004', CAST(N'2023-08-20' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (22, N'Acer ConceptD 7', N'acer_conceptd7.jpg', CAST(42990.00 AS Decimal(10, 2)), 12, N'C004', N'B005', CAST(N'2023-09-15' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (23, N'Asus ProArt StudioBook', N'asus_proart.jpg', CAST(48990.00 AS Decimal(10, 2)), 7, N'C004', N'B002', CAST(N'2023-10-22' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (24, N'Dell XPS 17', N'dell_xps17.jpg', CAST(43990.00 AS Decimal(10, 2)), 12, N'C005', N'B003', CAST(N'2023-07-01' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (25, N'HP Spectre Folio', N'hp_spectrefolio.jpg', CAST(40990.00 AS Decimal(10, 2)), 15, N'C005', N'B004', CAST(N'2023-08-10' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (26, N'Lenovo ThinkPad X1 Extreme', N'lenovo_x1extreme.jpg', CAST(45990.00 AS Decimal(10, 2)), 10, N'C005', N'B001', CAST(N'2023-09-18' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (27, N'MSI Prestige 14', N'msi_prestige14.jpg', CAST(38990.00 AS Decimal(10, 2)), 14, N'C005', N'B007', CAST(N'2023-11-12' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (28, N'MacBook Pro 16', N'macbook_pro16.jpg', CAST(55990.00 AS Decimal(10, 2)), 8, N'C005', N'B006', CAST(N'2023-10-01' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (29, N'Lenovo ThinkPad P15', N'lenovo_thinkpadp15.jpg', CAST(52990.00 AS Decimal(10, 2)), 8, N'C007', N'B001', CAST(N'2023-09-05' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (30, N'HP ZBook Fury 17', N'hp_zbookfury17.jpg', CAST(58990.00 AS Decimal(10, 2)), 6, N'C007', N'B004', CAST(N'2023-10-12' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (31, N'Dell Precision 7560', N'dell_precision7560.jpg', CAST(55990.00 AS Decimal(10, 2)), 7, N'C007', N'B003', CAST(N'2023-11-20' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (32, N'MSI WS76', N'msi_ws76.jpg', CAST(60990.00 AS Decimal(10, 2)), 5, N'C007', N'B007', CAST(N'2023-12-15' AS Date), 12)
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [image], [price], [quantity], [categoryID], [brandID], [importDate], [warrantyMonths]) VALUES (33, N'Asus ProArt StudioBook Pro X', N'asus_proartstudiobookx.jpg', CAST(65990.00 AS Decimal(10, 2)), 4, N'C007', N'B002', CAST(N'2024-01-22' AS Date), 12)
GO
SET IDENTITY_INSERT [dbo].[tblProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[tblReviews] ON 
GO
INSERT [dbo].[tblReviews] ([reviewID], [productID], [userID], [rating], [comment], [reviewDate]) VALUES (1, 1, 1, 5, N'Excellent laptop!  Fast and reliable.', CAST(N'2025-03-04T22:59:28.013' AS DateTime))
GO
INSERT [dbo].[tblReviews] ([reviewID], [productID], [userID], [rating], [comment], [reviewDate]) VALUES (2, 1, 2, 4, N'Good value for the money.', CAST(N'2025-03-04T22:59:28.050' AS DateTime))
GO
INSERT [dbo].[tblReviews] ([reviewID], [productID], [userID], [rating], [comment], [reviewDate]) VALUES (3, 5, 3, 3, N'It''s okay, but the battery life is a bit short.', CAST(N'2025-03-04T22:59:28.050' AS DateTime))
GO
INSERT [dbo].[tblReviews] ([reviewID], [productID], [userID], [rating], [comment], [reviewDate]) VALUES (4, 25, 1, 5, N'This is my dream laptop!', CAST(N'2025-03-04T22:59:28.050' AS DateTime))
GO
INSERT [dbo].[tblReviews] ([reviewID], [productID], [userID], [rating], [comment], [reviewDate]) VALUES (5, 10, 2, 1, N'Terrible product.  Would not recommend.', CAST(N'2025-03-04T22:59:28.053' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblReviews] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRoles] ON 
GO
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (2, N'Customer')
GO
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (3, N'Manager')
GO
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (4, N'Staff')
GO
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (5, N'Guest')
GO
SET IDENTITY_INSERT [dbo].[tblRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUsers] ON 
GO
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [phone], [email], [activate]) VALUES (1, N'Nguyễn Văn A', N'password1', 1, N'Hà Nội', N'0123456789', N'a@example.com', 1)
GO
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [phone], [email], [activate]) VALUES (2, N'Nguyễn Thị B', N'password2', 2, N'Hải Phòng', N'0987654321', N'b@example.com', 1)
GO
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [phone], [email], [activate]) VALUES (3, N'Lê Văn C', N'password3', 3, N'Đà Nẵng', N'0934567890', N'c@example.com', 1)
GO
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [phone], [email], [activate]) VALUES (4, N'Trần Thị D', N'password4', 4, N'TP HCM', N'0945678901', N'd@example.com', 0)
GO
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [phone], [email], [activate]) VALUES (5, N'Phạm Văn E', N'password5', 5, N'Cần Thơ', N'0956789012', N'e@example.com', 1)
GO
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tblDisco__357D4CF924684122]    Script Date: 03/04/25 11:29:04 PM ******/
ALTER TABLE [dbo].[tblDiscounts] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblOrders] ADD  DEFAULT ('Ch? xác nh?n') FOR [orderStatus]
GO
ALTER TABLE [dbo].[tblPayments] ADD  DEFAULT (getdate()) FOR [paymentDate]
GO
ALTER TABLE [dbo].[tblPayments] ADD  DEFAULT ('Pending') FOR [status]
GO
ALTER TABLE [dbo].[tblProductViews] ADD  DEFAULT (getdate()) FOR [viewedAt]
GO
ALTER TABLE [dbo].[tblReviews] ADD  DEFAULT (getdate()) FOR [reviewDate]
GO
ALTER TABLE [dbo].[tblShipping] ADD  DEFAULT ('Ch? x? lý') FOR [status]
GO
ALTER TABLE [dbo].[tblCarts]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUsers] ([userID])
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([orderID])
REFERENCES [dbo].[tblOrders] ([orderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblOrderDetails] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[tblProducts] ([productID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblOrderDetails] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUsers] ([userID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblOrders] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[tblPayments]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[tblOrders] ([orderID])
GO
ALTER TABLE [dbo].[tblProductDetails]  WITH CHECK ADD  CONSTRAINT [FK__tblProduc__produ__5DCAEF64] FOREIGN KEY([productID])
REFERENCES [dbo].[tblProducts] ([productID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblProductDetails] CHECK CONSTRAINT [FK__tblProduc__produ__5DCAEF64]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([brandID])
REFERENCES [dbo].[tblBrands] ([brandID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategories] ([categoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[tblProductViews]  WITH CHECK ADD  CONSTRAINT [FK__tblProduc__produ__60A75C0F] FOREIGN KEY([productID])
REFERENCES [dbo].[tblProducts] ([productID])
GO
ALTER TABLE [dbo].[tblProductViews] CHECK CONSTRAINT [FK__tblProduc__produ__60A75C0F]
GO
ALTER TABLE [dbo].[tblProductViews]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUsers] ([userID])
GO
ALTER TABLE [dbo].[tblReviews]  WITH CHECK ADD  CONSTRAINT [FK__tblReview__produ__628FA481] FOREIGN KEY([productID])
REFERENCES [dbo].[tblProducts] ([productID])
GO
ALTER TABLE [dbo].[tblReviews] CHECK CONSTRAINT [FK__tblReview__produ__628FA481]
GO
ALTER TABLE [dbo].[tblReviews]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUsers] ([userID])
GO
ALTER TABLE [dbo].[tblShipping]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[tblOrders] ([orderID])
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRoles] ([roleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblUsers] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[tblWishlist]  WITH CHECK ADD  CONSTRAINT [FK__tblWishli__produ__66603565] FOREIGN KEY([productID])
REFERENCES [dbo].[tblProducts] ([productID])
GO
ALTER TABLE [dbo].[tblWishlist] CHECK CONSTRAINT [FK__tblWishli__produ__66603565]
GO
ALTER TABLE [dbo].[tblWishlist]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUsers] ([userID])
GO
ALTER TABLE [dbo].[tblCarts]  WITH CHECK ADD CHECK  (([quantity]>(0)))
GO
ALTER TABLE [dbo].[tblReviews]  WITH CHECK ADD CHECK  (([rating]>=(1) AND [rating]<=(5)))
GO
USE [master]
GO
ALTER DATABASE [LaptopStore2] SET  READ_WRITE 
GO
