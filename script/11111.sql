USE [Pet_shop]

CREATE TABLE [dbo].[City](
	[Id] [int] NOT NULL,
	[City] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[Id] [int] NOT NULL,
	[IndexOf] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderOrderDate] [date] NOT NULL,
	[OrderDeliveryDate] [date] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[OrderIdClient] [int] NULL,
	[OrderCode] [int] NOT NULL,
	[OrderStatus] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF48DC8BC6] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[ID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductCount] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickPoint]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickPoint](
	[Id] [int] NOT NULL,
	[IdIndex] [int] NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[HouseNum] [int] NULL,
 CONSTRAINT [PK_PickPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [int] NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [int] NOT NULL,
	[ProductManufacturer] [int] NOT NULL,
	[ProductSupplier] [int] NOT NULL,
	[ProductCategory] [int] NOT NULL,
	[ProductDiscountNow] [int] NOT NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductDescription] [nvarchar](500) NOT NULL,
	[ProductPhotoName] [nvarchar](100) NULL,
	[ProductPhoto] [image] NULL,
 CONSTRAINT [PK__Product__2EA7DCD5BA95B976] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductManufacture]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductManufacture](
	[ManufactureId] [int] NOT NULL,
	[ManufactureName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductManufacture] PRIMARY KEY CLUSTERED 
(
	[ManufactureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[NameId] [int] NOT NULL,
	[NameName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[NameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSupplier]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSupplier](
	[SupplierId] [int] NOT NULL,
	[SupplierName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductSupplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOrder]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOrder](
	[StatusID] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StatusOrder] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [int] NOT NULL,
	[Street] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06.09.2024 14:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserRole] [int] NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](100) NOT NULL,
	[UserPassword] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__User__1788CCAC71105184] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([Id], [City]) VALUES (1, N'Нефтеюганск')
GO
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (1, N'125061')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (2, N'125703')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (3, N'125837')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (4, N'190949')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (5, N'344288')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (6, N'394060')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (7, N'394242')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (8, N'394782')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (9, N'400562')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (10, N'410172')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (11, N'410542')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (12, N'410661')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (13, N'420151')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (14, N'426030')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (15, N'443890')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (16, N'450375')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (17, N'450558')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (18, N'450983')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (19, N'454311')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (20, N'603002')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (21, N'603036')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (22, N'603379')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (23, N'603721')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (24, N'614164')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (25, N'614510')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (26, N'614611')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (27, N'614753')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (28, N'620839')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (29, N'625283')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (30, N'625560')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (31, N'625590')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (32, N'625683')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (33, N'630201')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (34, N'630370')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (35, N'660007')
INSERT [dbo].[Index] ([Id], [IndexOf]) VALUES (36, N'660540')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderOrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIdClient], [OrderCode], [OrderStatus]) VALUES (1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, 601, 2)
INSERT [dbo].[Order] ([OrderID], [OrderOrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIdClient], [OrderCode], [OrderStatus]) VALUES (2, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, 602, 2)
INSERT [dbo].[Order] ([OrderID], [OrderOrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIdClient], [OrderCode], [OrderStatus]) VALUES (3, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, 8, 603, 1)
INSERT [dbo].[Order] ([OrderID], [OrderOrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIdClient], [OrderCode], [OrderStatus]) VALUES (4, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, 604, 1)
INSERT [dbo].[Order] ([OrderID], [OrderOrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIdClient], [OrderCode], [OrderStatus]) VALUES (5, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, 605, 1)
INSERT [dbo].[Order] ([OrderID], [OrderOrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIdClient], [OrderCode], [OrderStatus]) VALUES (6, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, 7, 606, 1)
INSERT [dbo].[Order] ([OrderID], [OrderOrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIdClient], [OrderCode], [OrderStatus]) VALUES (7, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, 607, 2)
INSERT [dbo].[Order] ([OrderID], [OrderOrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIdClient], [OrderCode], [OrderStatus]) VALUES (8, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, 608, 2)
INSERT [dbo].[Order] ([OrderID], [OrderOrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIdClient], [OrderCode], [OrderStatus]) VALUES (9, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, 10, 609, 2)
INSERT [dbo].[Order] ([OrderID], [OrderOrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIdClient], [OrderCode], [OrderStatus]) VALUES (10, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, 9, 610, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (1, 1, N'А112Т4', 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (2, 2, N'F432F4', 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (3, 3, N'E532Q5', 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (4, 4, N'G345E4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (5, 5, N'R356F4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (6, 6, N'H436R4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (7, 7, N'H342F5', 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (8, 8, N'K436T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (9, 9, N'V527T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (10, 10, N'M356R4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (11, 1, N'G453T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (12, 2, N'Y324F4', 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (13, 3, N'T432F4', 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (14, 4, N'E345R4', 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (15, 5, N'E431R5', 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (16, 6, N'D643B5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (17, 7, N'Q245F5', 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (18, 8, N'V527T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (19, 9, N'K452T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (20, 10, N'W548O7', 1)
GO
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (1, 5, 1, 27, 1)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (2, 24, 1, 30, 30)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (3, 7, 1, 7, 43)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (4, 36, 1, 23, 25)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (5, 3, 1, 29, 40)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (6, 2, 1, 16, 49)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (7, 29, 1, 17, 46)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (8, 26, 1, 11, 50)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (9, 19, 1, 14, 19)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (10, 35, 1, 15, 19)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (11, 21, 1, 20, 4)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (12, 18, 1, 8, 26)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (13, 8, 1, 27, 3)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (14, 20, 1, 4, 28)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (15, 17, 1, 12, 30)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (16, 6, 1, 25, 43)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (17, 12, 1, 28, 50)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (18, 31, 1, 7, 20)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (19, 32, 1, 1, NULL)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (20, 9, 1, 5, 32)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (21, 25, 1, 9, 47)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (22, 11, 1, 21, 46)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (23, 28, 1, 26, 8)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (24, 15, 1, 7, 1)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (25, 22, 1, 24, 46)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (26, 23, 1, 3, 41)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (27, 10, 1, 22, 13)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (28, 13, 1, 2, 32)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (29, 1, 1, 18, 8)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (30, 34, 1, 29, 24)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (31, 27, 1, 19, 35)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (32, 14, 1, 9, 44)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (33, 16, 1, 6, 44)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (34, 30, 1, 13, 12)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (35, 33, 1, 8, 17)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (36, 4, 1, 10, 26)
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'B427R5', 6, CAST(400.0000 AS Decimal(19, 4)), 15, 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'D356R4', 7, CAST(600.0000 AS Decimal(19, 4)), 15, 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'D563F4', 1, CAST(600.0000 AS Decimal(19, 4)), 10, 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'D643B5', 8, CAST(4100.0000 AS Decimal(19, 4)), 30, 1, 1, 2, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'E345R4', 1, CAST(199.0000 AS Decimal(19, 4)), 5, 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'E431R5', 4, CAST(170.0000 AS Decimal(19, 4)), 5, 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'E434U6', 4, CAST(140.0000 AS Decimal(19, 4)), 20, 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'E466T6', 2, CAST(3500.0000 AS Decimal(19, 4)), 30, 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'E532Q5', 4, CAST(166.0000 AS Decimal(19, 4)), 15, 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'F432F4', 8, CAST(1200.0000 AS Decimal(19, 4)), 10, 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'G345E4', 7, CAST(300.0000 AS Decimal(19, 4)), 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'G453T5', 9, CAST(149.0000 AS Decimal(19, 4)), 15, 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'G542F5', 8, CAST(2190.0000 AS Decimal(19, 4)), 30, 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'H342F5', 1, CAST(510.0000 AS Decimal(19, 4)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'H432F4', 6, CAST(385.0000 AS Decimal(19, 4)), 10, 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'H436R4', 1, CAST(300.0000 AS Decimal(19, 4)), 15, 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'H542R6', 4, CAST(177.0000 AS Decimal(19, 4)), 15, 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'H643W2', 6, CAST(292.0000 AS Decimal(19, 4)), 25, 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'K436T5', 7, CAST(100.0000 AS Decimal(19, 4)), 5, 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'K452T5', 5, CAST(800.0000 AS Decimal(19, 4)), 25, 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'M356R4', 4, CAST(50.0000 AS Decimal(19, 4)), 5, 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'Q245F5', 1, CAST(510.0000 AS Decimal(19, 4)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'R356F4', 6, CAST(234.0000 AS Decimal(19, 4)), 10, 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'S245R4', 8, CAST(280.0000 AS Decimal(19, 4)), 15, 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'T432F4', 8, CAST(1700.0000 AS Decimal(19, 4)), 25, 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'V352R4', 8, CAST(1700.0000 AS Decimal(19, 4)), 25, 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'V527T5', 1, CAST(640.0000 AS Decimal(19, 4)), 5, 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'W548O7', 8, CAST(600.0000 AS Decimal(19, 4)), 15, 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'Y324F4', 4, CAST(86.0000 AS Decimal(19, 4)), 5, 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountNow], [ProductQuantityInStock], [ProductDescription], [ProductPhotoName], [ProductPhoto]) VALUES (N'А112Т4', 4, CAST(123.0000 AS Decimal(19, 4)), 30, 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
GO
INSERT [dbo].[ProductCategory] ([CategoryId], [CategoryName]) VALUES (1, N'Для животных')
INSERT [dbo].[ProductCategory] ([CategoryId], [CategoryName]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[ProductCategory] ([CategoryId], [CategoryName]) VALUES (3, N'Товары для собак')
GO
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (1, N'Cat Chow')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (2, N'Chappy')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (3, N'Dog Chow')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (4, N'Dreames')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (6, N'LIKER')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (7, N'Nobby')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (8, N'Pro Plan')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (9, N'TitBit')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (10, N'Triol')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (11, N'trixie')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (12, N'True Touch')
INSERT [dbo].[ProductManufacture] ([ManufactureId], [ManufactureName]) VALUES (13, N'ZooM')
GO
INSERT [dbo].[ProductName] ([NameId], [NameName]) VALUES (1, N'Игрушка')
INSERT [dbo].[ProductName] ([NameId], [NameName]) VALUES (2, N'Клетка')
INSERT [dbo].[ProductName] ([NameId], [NameName]) VALUES (3, N'Лакомство')
INSERT [dbo].[ProductName] ([NameId], [NameName]) VALUES (4, N'Лакомство')
INSERT [dbo].[ProductName] ([NameId], [NameName]) VALUES (5, N'Лежак')
INSERT [dbo].[ProductName] ([NameId], [NameName]) VALUES (6, N'Миска')
INSERT [dbo].[ProductName] ([NameId], [NameName]) VALUES (7, N'Мячик')
INSERT [dbo].[ProductName] ([NameId], [NameName]) VALUES (8, N'Сухой корм')
INSERT [dbo].[ProductName] ([NameId], [NameName]) VALUES (9, N'Щетка-варежка')
GO
INSERT [dbo].[ProductSupplier] ([SupplierId], [SupplierName]) VALUES (1, N'PetShop')
INSERT [dbo].[ProductSupplier] ([SupplierId], [SupplierName]) VALUES (2, N'ZooMir')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[StatusOrder] ([StatusID], [StatusName]) VALUES (1, N'Завершен')
INSERT [dbo].[StatusOrder] ([StatusID], [StatusName]) VALUES (2, N'Новый ')
GO
INSERT [dbo].[Street] ([Id], [Street]) VALUES (1, N' ул. 8 Марта')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (2, N' ул. Вишневая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (3, N' ул. Гоголя')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (4, N' ул. Дзержинского')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (5, N' ул. Зеленая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (6, N' ул. Клубная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (7, N' ул. Коммунистическая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (8, N' ул. Комсомольская')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (9, N' ул. Маяковского')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (10, N' ул. Мичурина')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (11, N' ул. Молодежная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (12, N' ул. Набережная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (13, N' ул. Некрасова')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (14, N' ул. Новая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (15, N' ул. Октябрьская')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (16, N' ул. Партизанская')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (17, N' ул. Победы')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (18, N' ул. Подгорная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (19, N' ул. Полевая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (20, N' ул. Садовая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (21, N' ул. Светлая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (22, N' ул. Северная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (23, N' ул. Солнечная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (24, N' ул. Спортивная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (25, N' ул. Фрунзе')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (26, N' ул. Цветочная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (27, N' ул. Чехова')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (28, N' ул. Школьная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (29, N' ул. Шоссейная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (30, N' ул. Степная')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (1, 2, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (2, 3, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (3, 1, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (4, 3, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (5, 1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (6, 3, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (7, 2, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (8, 2, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (9, 2, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (10, 1, N'Яковлева', N'Ярослава', N'Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickPoint] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_StatusOrder] FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[StatusOrder] ([StatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_StatusOrder]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([OrderIdClient])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order1] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order1]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_City]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Index] FOREIGN KEY([IdIndex])
REFERENCES [dbo].[Index] ([Id])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Index]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Street] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[Street] ([Id])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Street]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[ProductCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductManufacture] FOREIGN KEY([ProductManufacturer])
REFERENCES [dbo].[ProductManufacture] ([ManufactureId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductManufacture]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductName] FOREIGN KEY([ProductName])
REFERENCES [dbo].[ProductName] ([NameId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductName]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductSupplier] FOREIGN KEY([ProductSupplier])
REFERENCES [dbo].[ProductSupplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductSupplier]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Pet_shop] SET  READ_WRITE 
GO
