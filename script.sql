USE [Assgn_PRJ301_Sach]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/8/2023 11:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/8/2023 11:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/8/2023 11:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/8/2023 11:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/8/2023 11:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 3/8/2023 11:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 3/8/2023 11:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'tu', N'1', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (8, N'Micah', N'RVV5SR', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (12, N'Howard', N'TSR5MR', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (13, N'Tana', N'EHS8CM', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (16, N'Slade', N'OFO6QS', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (21, N'Vera', N'CZB2VM', 0, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (23, N'Katell', N'SFS0IW', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (25, N'Robin', N'KIS9AF', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (27, N'admin', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (28, N'mra', N'mra', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (29, N'mrb', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (30, N'Camden', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (31, N'manhdsz', N'123456', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (32, N'sfdfds', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (33, N'aaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (34, N'bbbb', N'1234', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (35, N'luong', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (38, N'mit', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (39, N'aaaaaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (40, N'bantq', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (41, N'thong', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (42, N'abcdd', N'1', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (43, N'quan', N'1', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (44, N'z', N'1', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (45, N'abc', N'1', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'COMIC BOOK')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'DETECTIVE BOOK')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'HUMOUR AND SATIRE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'ADVENTURE STORIES')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (38, 14, N'Giày adidas 2A', N'https://product.hstatic.net/1000366086/product/dard_101fdf2799784f28a0690e1311837792_df450a9a160f45cc954a10f84dbf7d0d_03483f289d6c4f33b855ab3bf2b4d18f_master.jpg', 140, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (39, 14, N'Giày adidas 2B', N'https://product.hstatic.net/1000366086/product/3158_31486cac3c2d47a5a345906dc662f1b6_c957587e2dcb402b9e8223f237a67854_8d59adbe718a448584fae731b2ff516b_large.jpg', 150, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (40, 14, N'New Trend Men Hiking Shoes', N'https://canary.contestimg.wish.com/api/webimage/5df1f07d1fc34e0c50f78eb7-large.jpg?cache_buster=36188c130400df0faa4256aad8e90109', 150, 3)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (41, 15, N'Men''s Outdoors Waterproof Boots Sports Shoes', N'https://canary.contestimg.wish.com/api/webimage/5e0db090b6383fa7bb0416ab-large.jpg?cache_buster=92297459781628185d780669109c00d6', 120, 3)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (42, 16, N'Giày adidas 2A', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/340/361/products/arhr033-2-a.jpg', 140, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (43, 16, N'Giày adidas 2B', N'https://product.hstatic.net/1000312752/product/arhr103-2-b_8303118d20ab4d4ea39ada961843cd1e_master.jpg', 150, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (44, 17, N'Giày Thể Thao Nike Air Jordan 1', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/340/361/products/arhr033-2-a.jpg', 140, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (45, 18, N'Akira', N'https://media.wired.co.uk/photos/606d9e779a15f73a597a1a15/1:1/w_1928,h_1928,c_limit/shutterstock_editorial_5874266e_huge.jpg', 150, 2)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (14, 1, 1030, N'hàng dễ vỡ xin cẩn thận ', CAST(N'2022-03-15' AS Date), 14)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (15, 41, 360, N'non', CAST(N'2022-03-17' AS Date), 15)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (16, 1, 290, N'hàng dẽ vo', CAST(N'2022-07-03' AS Date), 16)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (17, 1, 140, N'e', CAST(N'2022-07-07' AS Date), 17)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (18, 44, 300, N'ds', CAST(N'2022-11-06' AS Date), 18)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'One Piece', N'https://vnw-img-cdn.popsww.com/api/v2/containers/file2/cms_topic/thumbnail_title-6e402c277c9a-1592296049904-Jegh031s.png', 140.0000, N'Hành động, Phiêu lưu, Viễn tưởng, Hài', N'Đây là bộ manga xoay quanh chàng trai Monkey D. Luffy, chàng trai ngô nghê pha chút hài hước đến từ vùng biển East Blue. Luffy đã thành lập Băng hải tặc Mũ rơm cùng với những người bạn mà anh đã cứu giúp. Trên con tàu Going Merry, họ đã cùng nhau đi qua vô vàn thử thách để tìm kiếm One Piece - kho báu danh giá.

Với những thước truyện vừa gây cấn vừa đẹp đẽ về tình bạn, One Piece nhận được sự yêu mến của vô vàn người hâm mộ trên thế giới. Tác giả Oda Eiichiro cũng ghi tên mình vào Sách kỷ lục Guiness với thành tích bộ manga có số lượng in lớn nhất.

Tính đến thời điểm hiện tại, One Piece đã có đến hơn 1000 tập truyện, sức hút ngày càng được nhân rộng và nhận được nhiều sự yêu thích đến từ đọc giả trên toàn thế giới. One Piece là tác phẩm Manga kinh điển nhất được nhiều người biết đến nhất.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Akira', N'https://media.wired.co.uk/photos/606d9e779a15f73a597a1a15/1:1/w_1928,h_1928,c_limit/shutterstock_editorial_5874266e_huge.jpg', 150.0000, N'Hành động, Tình cảm, Viễn tưởng, Phiêu lưu', N'Akira là bộ manga có nội dung xoay quanh đề tài hậu tận thế. Năm 1992, cột mốc bắt đầu cho Thế chiến lần 3, một loại bom mới được chế tạo ra với sức công phá khủng khiếp đã thử nghiệm ngay trên thủ đô nước Nhật - Neo-Tokyo. Thành phố nhỏ vỡ vụn, hàng trăm ngàn người thiệt mạng và không biết bao nhiêu nhà cửa bị đổ nát, và hậu quả để lại là nhiều năm sau đó thành phố vẫn chưa khôi phục được. Tetsuo, nhân vật chính của bộ manga, khi tình cờ dạo quanh những đống đổ nát đã vô tình bị hút vào một cuộc thí nghiệm tâm linh bí ẩn do chính phủ thực hiện. Chính anh cũng không biết mình sắp đối diện với một thứ sức mạnh vô cùng đáng sợ, thứ đang là mục tiêu của những tổ chức khủng bố, thứ mang tên Akira,...', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Sherlock Holmes', N'https://nationaltoday.com/wp-content/uploads/2022/07/9-Sherlock-Holmes-Day.jpg', 160.0000, N' Sherlock Holmes – Athur Conan Doyle ', N'SÁCH THEO CHỦ ĐỀ
Top 12 cuốn tiểu thuyết trinh thám hay nhất không nên bỏ qua
Trinh thám luôn là thể loại sách thu hút số lượng lớn độc giả bởi sự kịch tính và bất ngờ của nó. Khác hẳn với các thể loại khác, dòng văn trinh thám đòi hỏi khả năng tư duy rất cao từ tác giả, cũng như khối lượng kiến thức, thông tin khổng lồ được sử dụng để là chất liệu cho tác phẩm. Không phải bất cứ tác giả nào cũng đủ khả năng để nghĩ ra những vụ án giả tưởng song lại rất hợp lý. Ngày nay, dòng văn học trinh thám phát triển mạnh mẽ với số lượng tác phẩm khổng lồ. Tuy nhiên, nổi bật trong thế giới đầy phức tạp của văn học trinh thám, vẫn có những tác phẩm được xếp vào hàng kinh điển của thế giới và không thể thay thế trong lòng của các độc giả.

Review sách Bá Tước Monte Cristo - Alexandre Dumas
Những Cuốn Tiểu Thuyết Về Tuổi Thanh Xuân Hay Nhất
Review sách Tiếng Chim Hót Trong Bụi Mận Gai
Thiên thần nổi giận - Một tác phẩm nữ quyền
Những tác phẩm của Agatha Christie hay nhất mọi thời đại
Hãy cùng Sách Hay 24H điểm qua Top 12 cuốn tiểu thuyết trinh thám hay và nổi tiếng nhất trên toàn thế giới mà bạn không nên bỏ qua.

1, Sherlock Holmes – Athur Conan Doyle 
Sherlock Holmes được xem là một trong những huyền thoại trinh thám trên nền văn học thế giới. Hình tượng của vị thám tử tài ba là khuôn mẫu mà các nhà văn hướng tới khi xây dựng các tác phẩm trinh thám, nổi tiếng đến mức độ độc giả quyên mất đây chỉ là một nhân vật hư cấu.

Đây là cuốn tiểu thuyết vô cùng hấp dẫn với những câu chuyện đặc sắc, khiến người xem "nghẹt thở" đến giây phút cuối cùng. Cuốn sách xuất bản lần đầu tiên vào năm 1887, cho đến nay Sherlock Holmes Conan Doyle đã trở thành một tượng đài bất tử trong làng truyện trinh thám.', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Mật mã Davinci', N'data:image/jpeg;base64,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', 170.0000, N'Mật mã Davinci – Dan Brown', N'Thêm một cuốn tiểu thuyết nổi tiếng của nhà văn Dan Brown được mệnh danh là một trong số cuốn tiểu thuyết trinh thám hay nhất mọi thời đại đó chính là Mật mã Davinci. Vào thời điểm tác phẩm này ra đời đã gây ra cuộc tranh cãi lớn trên văn đàn thế giới bởi việc sử dụng yếu tố thần học trong tác phẩm. Cuốn sách mang đậm phong cách cá nhân của Dan Brown khi có sự đan xen giữa yếu tố trinh thám và yếu tố thần thoại, hai chất liệu hoàn toàn trái ngược nhau.

Với những tình tiết hấp dẫn, hồi hộp hết sức nhưng không kém thú vị bạn sẽ khám phá được từ bất ngờ này đến bất ngờ khác trong câu chuyện. Tác phẩm kể nhân vật Langdon đang sống yên ổn, bỗng nhiên một ngày lại rơi vào một hoàn cảnh nguy hiểm đến tính mạng. Những may mắn ông đã gặp một người phụ nữ xinh đẹp nhưng không kém phần thông minh đó chính là Sophia. Sau một chuyến chạy trốn đầy nguy hiểm nhờ sự giúp đỡ của một nhà sử học tài ba có tên Teabing cả Langdon và Sophie đã khám phá được một bí mật động trời.', 2, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Agatha Christie', N'https://cf.shopee.vn/file/352e559b923aea159280a65f64d4fb50', 120.0000, N'Án mạng trên chuyến tàu tốc hành Phương Đông - Agatha Christie', N'Được chắp bút bởi Agatha Christe – nữ hoàng truyện trinh thám, tác phẩm mang hơi hướng cổ điển song vẫn còn nguyên sức hút đối với độc giả qua thời gian.

Tác phẩm nói về vụ án mạng kỳ lạ xảy ra trên chuyến tàu tốc hành Phương Đông chạy từ Istambul về Calais mà thám tử Hercule Poirot tình cờ có mặt. Con tàu trở thành một căn phòng kín và hung thủ thì vẫn có mặt trên chuyến tàu trong suốt hành trình phá án. Nạn nhân trong tác phẩm là một kẻ thủ ác, đang bị đe dọa bởi những lá thư vì những tội ác hắn đã làm trong quá khứ, bị giết bởi 12 nhát dao. Nhưng điều kì là là các nhát dao này không phải của cùng 1 người, câu hỏi đặt ra là tại sao lại xuất hiện các vết thương khác nhau trên cùng một nạn nhân đã khiến cho vị thám tử vô cùng đau đầu.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Attack on Titan', N'https://pbs.twimg.com/media/FVzFdAtUEAATYgN.jpg', 130.0000, N'Hành động, Viễn tưởng, Kì ảo', N'Nếu muốn tìm một bộ manga với những tình tiết kỳ ảo siêu thực thì Attack on Titan sẽ là một sự lựa chọn khá đúng đắn. Truyện được xây dựng với sự tưởng tượng của tác giả về một thế giới giả tưởng, với cách kể đan xen giữa quá khứ và hiện tại khơi gợi sự tò mò nơi người đọc. Ở thế giới đó, người nắm quyền lực cao nhất là những người khổng lồ Titan. Con người lúc ấy bé nhỏ và yếu ớt vô cùng, họ phải làm những bức tường thành để ngăn chặn Titan. Nhưng rồi một ngày nọ, một Titan bất ngờ xuất hiện, phá nát tường thành và đem lại nỗi sợ hãi kinh hoàng cho loài người. Nhóm ba người bạn trẻ Eren, Armin và Mikasa quyết tâm lên đường mặc bao nguy hiểm để tìm ra chân tướng sự việc…', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Bleach', N'https://ict-imgs.vgcloud.vn/2021/05/06/09/lien-quan-mobile-x-bleach-hop-tac-dac-biet-voi-cac-trang-phuc-doc-quyen-ichigo-kurosaki-byakuya-kuchiki-va-toshiro-hitsugaya-buoc-vao-the-gioi-lien-quan-3.jpg', 100.0000, N'Viễn tưởng, Hài hước, Tình cảm', N'Cái thiện và cái ác là những đề tài phổ biến trong các tác phẩm truyện tranh, nhưng để diễn tả ranh giới và những bài học xung quanh hai thái cực đối lập này thì Bleach chính là một kiệt tác. Nhân vật chính trong bộ truyện này là Kurosachi Ichigo. Một cách vô cùng tình cờ tựa như sự sắp đặt của số phận, Ichigo bỗng nhiên biến thành thần chết. Và ở cương vị mới này, anh đã giúp bạn bè và những người thân yêu của mình vượt qua muôn vàn thử thách hiểm nguy. Và họ cũng chính là những người luôn sát cánh bên anh, cùng anh vượt qua gian khó.

Thời gian đầu ra mắt, Bleach đã tạo nên cơn sốt khủng khiếp trên khắp châu Á với hàng triệu bản được bán ra và được dựng thành phim. Đến tận bây giờ, Bleach vẫn sống mãi trong lòng người đọc như một tượng đài manga vô cùng vĩ đại.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Detective Conan', N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGCBMTExcTFRMYGBcZGRkZGBoaGBoaGRohGxscGhoaGSEaHysjHx8oHRkaJDUkKiwuMjIyHyE3PDcyOysxMjEBCwsLDw4PHBERHDQoIyg7MTQ0MTExMTExMjQxMTExMzEzMTExLjExMy4xMTExMzEuMTExMTExMTExMTExMTExMf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABgEDBAUHAgj/xABFEAACAQIEAgcFBQYEBAcBAAABAgMAEQQSITEFQQYTIlFhcYEHMlKRoSNCYnKxFIKSosHRFTNT8CSzwuE1Q2Nzo7LSCP/EABoBAQADAQEBAAAAAAAAAAAAAAACAwQBBQb/xAAsEQACAgEEAQMDAwUBAAAAAAAAAQIRAwQSITFBMlFhBSJxExSxIzORodGB/9oADAMBAAIRAxEAPwDstKUoBSlKAUpSgFKUoBSlWcTOkal3YKqi5ZiAB5k7UBepUC477Qo0JXDR9Yf9R7rH5qPeb+UdxNQni3H8ViL9ZO5U/cU5I/LKu4/Nc+NVymkdSOvcR6QYSAkSYiNWH3cwZ/4Vu30rTYr2g4Jfc62T8qW/5hWuQTYqKPRnVfC4/QVhy8egGxZvJf72qO+T6R3adfb2kwcsPL6mMfoxryPaTDzw0voyH9SK44ekUfKN/p/eg6RJ/pt9Kbp+x3Yzt2E9oeDb31lj/Mgb/lsx+lb7hnHsLObRYiN2+HMA/wDCbN9K+eI+PQHfMvmv9iazIcZDJoHVvA7/ACNd3yXaObWfR1K4pwXpTi8NYJKXQfclu6+hJzL6G3hXQejfTWDEkRv9lKdArEFWPcj6AnwNieQNSjNM40SqlK0vTPif7NhJJAbORkj/ADP2VPpfN5A1NnDlPtD42JcRLKTeOP7NPEISDb8zljfut3VOPZVx8YiHqGa7RqCh5tHsPVT2T4Za4h0pxOqwjYat/wBI+X6isjoHx18LOhU6q11ubA396M+DC48DrVUb9RNx4Pp+lYnC8ak8STIbo4DDv8j3EHQjvBrLq0gKUpQClKUApSlAKVreM8Zgwq55pAt9huzeCqNT/TnUG4t7SJDcQQqg+OU3P8KkAfxGouSXYOl0rhmN6fYlic2Ny+CCMW/hW/1qxF06nG2Pe/iQfoykVzf8EtrO9UrkPCPaTiFIDtFOOeyP800/lqS4z2gwdQXiVuuOgjddFJ++xGhUeBudBpfQpo5TN30q6SQ4JO12pGHYjB7R5XJ+6t/vH0udK5Tx/jU+LfNK+gN1jW4jTyHM/iOvkNK1/EcazF5pZLsdXZuf+9gB5CopxbjDSXVLqn1bz8PCoNuT46JRjZt+Icajj0Xtt3DYeZ/tWhxnFZpN2yjuXT/uawL1SpKKRNRSKk1SlK6SFKUoBVapSgM3CcSlj91zbuOo+u3pW9wPG45OzIMhPfqp/t61FarXHFM41Z3Hob01eErDiWLxaBZDcvH3ZjuyeO48Rtd9sHF1JiiDAoiGZiDcHMCsZBG+gf8AiFcc4PxVojlbtJ3c18V/tW74yjSwfZnMNDa5N1HJe62mnhXG2uGQ28kVxMxd2dtySa9YTDvI6pGrM7EBVUEsTyAA516wGDkmkWKNCzscqqouSf8AfPlXcOhPAsDwVOsxU0bYth2rdtowfuRqoLebW18BUzspUSX2ccFnwmECTuC7HOUGqxkgAqDzJIubaXJt3mUVFeF9Ip8Y/wDwsGSIGzTTbabiNEPbP7wA566GVVJFQpSlAKUpQCo1046TJgYr6GRgcin3Rbd3/CO7mdO8iQyuFUsxsoBJJ2AGpJrkfAuAycdxD4/FZlweciKO5DSqhIW55IBvbdi1ramjOoionx/E5mOGieZybPKwsi+F2sqgX0X5CpDgPY9iZrNi8YqnmqKZCPVioHoDXYMDhI4UWOJFRFFlVQAoHgBUY6ZdMUwpMMQDzc7+5HfbNbdueUepGl40o8nb9iM4j2T8MgXrJ8XMqjcs8SL5Dsb+FRrinR/gi6RHGyH4g8aL/wDJHm/lrxxLHSTOZZpC7fEx0A7l5KPAWFaXF8chTQEufw7fM/0qtzb9KOrcWcX0eiJ+yZ1Hc7LIfmqJ+lbHDRrDHYtoouSfqf8AtWjl6RufdjUeZJ/S1YWP4rJKuVrAXvoLX89a5tk+yVPyV4xxAzN3IPdH9T4/pWvpVKsSomKUpQClKUApSlAKUpQClKUBWtt0f4j1bZGPYb+U9/l31qKrR8nGT3h8fUu7xF0eSynISGNz7q5ddTuBvU96I9Ay1pcWuVdxCNCfGQjb8o17zuK5z0M4u6GOVdZIWBH4htY+a3UmvonBYhZY0kQ3V1VlPeGFx9DUYrnkql2e4Y1RQqgKoFgALAAbAAbCrtKVaRFKUoBSlKA13SPBNPh5IFbKZF6stexCuQshHjkLW8bVlYPDJFGkaKFRFCqo2AAsAPSr9eJXCqWJsACSe4DUmgIv0/6RfssQjj/zpAQv4F2Mh8eQB3PeAa4xxTiKQg3JZzc2vcknUsxOupvqdTWf004+ZZJMS27m0Snko9xfQanxJ76g0aSzyhVDPI7AKALsxOwFVep/BOMfc9Y/HySntNpyUe6PT+tW2hyrdtCR2Rz8z3D9aknGeGxcOTq2yyYk6SHeOI840+Ir95u/sjZrxidmJJa9zqb761IsRbqlKUOlaWrJ4XHmljXvZb+QNz9KvY7DnLEbavn+ec/3FDhr6VU0odKUqtqUBSlKUApVaUBSlVtSgKUpSgNl0exGSZe5uyfXb62r6J9l2K6zBKpNzE7x+l86/JXA9K+Z0JBuNxqK+gvYvNmhmHItG/8AGlv+gUXZXNHQaUpUysUpSgFKUoBUe9omKMWAmI3cLH6SMEb+UmpDUQ9rB/4Lw61L/wA39bVyXQR8+dI8TnlI5J2R/wBR+enpXRuinCl4Tw88QlFsVOuWAMP8lGBJex+9lBY/urzN4h7NeCDH8RjjcXjBMsgPNVN8p8GYqp8CamPtnxcmIxceDi1a6Qov4pMrOdOWsQ8MpriVIsfsQOLDmYPi5b5ASEBNy5UZmFzvYFbnm0g8a0UrliSdyST61OPaMqQKMJH7kOWEH4ivblc+LSlr+Q7qgpFcJRFMtZPD8MZGPcqO58kUt/QD1qnUHqut5F8g8wuY/qPnXTpv+h3Cs8U+JI0j6tU/M0iAn0U/Wq8UgyRI9v8ALlzfulyf/wA1OOg3C78KdAO3IjOPFtXT9EqMSgP2Tqrqf9jxIb6VmWTdJ/DJTjtoifGcL1UrKPdPaXyP9tvSsNalXEuHmWEDeRBYH4rafUAHzqKEWrRF2RTJr0SwGEx0fUyDq5kFhIlgSPuuw2a2x57G9abpV0anwMmWQXRr5JF91v7N+E/XetdwySRZFaIkOD2bbnw8b7W511Do90mw3EITg8WAjMMtm0FxsUJ2YHbmPGqpOUJX2v4LIqMlXk5JasrD4JpFunaI3XY+nI/r4Vm9IOEtg8S0MnaVSCCNM6HZh3Ej5EHurK4rwyTAusqOkkbe611NwdckiXuNPTmDfa3cuKINM0SEowJGqkaEd3Ig1M4uj+HxsYfDsIZbXKMT1b+K7lNdOYB003Op4q+HxEQlWQJINDG+a58FexzDuza95rA4LxRoGBBOW99Nwe8f22NQluauPDCaT5LXEcDLBIY5kaNhuGGuvMciPEaGrsnDHKKyqSSL2GoYfEh57gEbgkd4qbcQ43hcRhwuKjZ1HuSRrdkPMqSbqO9G0rQ9FcdGvWROS0Iu2YCzoNQJVGtiu5FzdSwN9KRm3G2g0r4ZFTVKlfTbgjRnrgBuBIV9xswLRzJ+CQBvJ1ccxUVNTTvkVQrvPsE1w8p8Ih8g/wDeuDV9BewSG3Dy/wAcpt5Kqj9c1dRXPo6HSlKkVilKUApSlAKjntIwxkwEtt0ySeiOrN/LmqR1ZxUKyI0bC6upVh3hhYj5GjByX/8AnXAWOMmO4ZIh4WzM36r8qv8ARLCftPHZp3FxB1zj8zytEnyRW+Qrc+x/Bthzj8O/vx4m58QyLZvI2uPA1ldBMCI8dxK+5kj+TNLIv0kFc9iTfJx7jsTYrEwRD3p5T85XW5/mJqL41QJHA2DsB5AkD6V0zoVgL8Xwit/5XXk+caFfoxHyqIdMODNBJNcf5eLljbwDASRE/mXP8qiuiSfNFehmFzxY5/gwj2/eZf6KasYmaL/D4owT1omd2GVgLMuUdq1ieyNAas8D4sMOk32au0iqqh7lBqbsQCLsAdCdjrW94HwXieJgfCI6xwxuQ6SEL2g2fWyltCQe6uPjllifhE76A8dwhw8cImQSBVGRjkJsig2zWvsdqjXSSKBMQ6pKjKD1gyMHMYa4YEKb9kk9nmthzqHYLo7iJoZJ0GZI3SLQ++8jqipH8WrKeQsRW9x/QzG8NbrZcMZYwp+0idmVb8zYXFvxLlqtadJtpnJZdyporDiFdRIhzDUG1+X1uN/EXrW8b4V1n2sdidyBs3iPH9a3nRifAzQGItHhpgbo7dlJL/dc7HwO435kGzjIWgLdkn72RSGBvY5kINiCCDcd/jpFNqXBGmlZBxcHmCD5EEVvcfxBcWkKGNf2oyKjS7Z1PZUvbQm5FyQTp42rPxWBixCq9ipYdlrWJt5+9batLPweaI5k7VtQV3FtQbb38r1buT/J3dao3/TLohisNEs8mIE0aZUvmcsgJ0ChrjLc9/PavfRrgMAg/acVhXaI69Z+0xonll7LXPdcmvM3TNpMFJhMRGSzKAjWtqCCCwOxBHLfwqnRjo1juJqoUt1ESlVZv8sED3YwNGYnQnlzPKuRU2qlwTk4p2jW9IJ8LO6Jg8IYxsO07ySHuy5mHyuTW34b0Ux+HhkxT8NR1Rc324uQo3IiDgmw1OYXAGldg9nHR2DC4SGRIQs0kUbSuw+0LMoLKS2qgEnsiwFSfEsoRi3uhSW8gNfpVqSqihzd2fPHRfCTYoyPBw8EILyGCRox+UCYujNbUKBe3depBhOEx4iFoYp5Y5AvWJBLEobbsleRQ3sWj0IOu9ZHSTj0KQ/4bw60OHQf8RMDtf3kRubnZm9BUr6D4SDF8Lw7MlwmcRPch1EcjojKw1U5VAv6GuTxOr6Ecycq7Ob9HcecRw1oGjWRkzxAE2fI2V4wrX0dXHZDLY5QoIJF+fZDewBve1ud+63fW24lweZsbiIYUaQpJIeyNQqsTmNrBdPLXQV0b2Y8ASOH/EMRbrHGdWa1o0+PuDN71+4jvNVzkscXL/RdC5uvY57H0R4gUzjCS5d/dsf4T2vpXf8A2X4URcNw0Y94JdxzV2JZlbuZS1iDqLVq/wDGkZ1SON2zEgMbIpsC33jm2U8rVteFuUnjNrdaCjjxVS6k8rgI63538BVWPUOUqa7J5MVRtPolFKUrWZBSlKAUpSgFKUoDBi4eizviF0aRESQcm6ssUbzAdh4i3cKxocAUxkky+7LEivqLBomOQ2/EshH7grb0oDnUeAGG46htZZhKyd13Qs4886E/vCsr2gdGI5meVtI5kWOdgLmNkN4MR5ISUb8D3OimpB0q4W06I8dhPC4lhJNgWUgmNj8DgZT3aHlWxwWIWWMOAbHdSNVI0ZWHIg3BHhXEqO2fJ3E8IYXkjZ0ZkcqcjB1Nr3ZWGhG3jr4Gu3nCs6zTRDK8sLpInNZVjshFt7grrzCxkbmob7RPZ48MuJnjlVkAM+TIVIV3csq2JByBb8tLVIOi3FNI5r9mSKHre4WTqc/7rxMD4Ek7CqNQ+FXg0Ye+fJMeivRwQcNghVV6xRHKb7dYHWUgmxIGYZb7geVSwCsHhM+Zcp3XTzHKorxbpLisBK0U0HWxuztBPnyLZiWEMtlIV1vlB+8AOd6vxvelt8mbJ9l7vBGunPRPAJJjMZipWiRmRYUiyZy/VRsxCnckn3Ta3aYmxBFvoJwtjhYxNllicNmVgVaErcZdybjUAixykbZVBjvG4sVPLJiJSrSM56u5+zjDWHYXUltFA3vYbm1dE6GcKfC4SOGQ3k7TyX3DSMWynxAIB8Qa5rIPFDlUzujyrNN7XaRynB9JCjNHCjTgyP8AZsgaN479hstiQ/ebU43xaXLnTh8mHsbsxMjJba1nUZdbag+ldY6O8GTCmbIqqJJWkUKLZVyqoX5qTbxrN4pg1nhkhf3ZEZD6jf0OvpWP9eClwjZ+3k1yyKp0OWVFdMRdWVWGaINcMLjZxyNbfo10SkiYiPHSRc7RIqqe8lWZkJ81NYvs+xLiJsFLpNhTkI+JP/LdfwldPQd9ShGIIINiKh+rKE+eiX6UZQ47PPGOkH+Hi+KWV4uWIVVfXulVAuQ3vYgFTpqDpUY6bdLGxUDQYUOiyizSnLqhGqoASRmGhY2sL2GtxKhjZwMpaORbWIZCCe/MQ2U/w1p5OCwnbCwx87I8oX+BGQVvxarTp3PkwZtNqGqx0n8nNoejGJxTJhYQqILEgEta+hkkNgLevLQE6V2Lhqw4fDJhIWzCJRGTvqPeJI0LE3JA2JNYMWEyp1YISPnHEoijPi2W7t43Yg8xWLxyYpEIYQBLJeOIAaJp2pCBskanN55RuwqnUauOSVQVf8LtNpJY4/1Hf49zS+z2DMcbibC02JkyH4kRiAfK5b5V5xvEBMwWNbxJYRgWCdnQOT6dkAHKLE2J02XE8KsGEjw0d1jOWIsNCFyktqNmexF+9zztWt7KKBoqiwAA9AFA+QArBlyc2vJuhClTLvDMzTRAqAc5OjZtAjEk6DnYeoqW4Nc2IhHw9ZIfIIY/1lFajgWBKXlkFnYWVeaLvY/iJsT5AcrmQ9Gosxef7rWSPxVSbuPzMT5hVPOrNPC5L4K88qi/k3lKUr0zzxSlKAUpSgFKUoBSlKAUpSgND0ng0Se11TMst9ure2YnwVlUm+y565fJwz9jlbDMWEJZ3gbMR2G1kjPIlCA1jcZWc12t1BBBFwdCKh3HuEIo6qUXhJHVSX7UTfdUtyI2VufunX38+aPnx5NGGa6f/hi9HZmaHqmds8dlLAlWZd0e6m9yBY95VuVbiPGzqpRxHMp07fYa34iqlW/hWongMNPg5l6z7SL3OtUahWPYEib5g9lDC4sx25yOHGRMOzIjeTA/1rGpzg7izW8cJr7kWRgkzZkhhg3/AMlR1hv3SZVKA/hAP4quxzwoeqDIrADsXAIB2sO7f61STHxA2DZm+FO23qF28zYeNYeM4Z+0dqUZSARGBYlL75+TE2F190cte1XJ5JZOZsQxwxqoI21UrR8IwuJjcKSOqBswLZgRbQxDVl1toSANQAd63hNtTVTVFqZquL8J6yRJ4m6ueMEK9rq6nUxyge8h+YOoq/huIDRZV6qTbKxurH/0391ge7RrbgV6bicPJ835FaQepQECvcGMilugYE21VgVa3flcA29KnUq+5cEaV2jJFUdgBcmw7zpWMOHw8olH5QF/Sqrw+EG/VJfvKgn5nWocEuTwccG0iXrD3jSMeb7HyXMfCvMMCxZppGzOR23IsABqFQa5VHdqSd7mrj4lmYrEobLozMSEU/CLAlmHMaAd99Kw+KTSRhHkVTEjZ5GTMSAqsQSliSA+Rrgna9rCpJeCLfkvTwyTqVb7ONuVgZTsQSTdU1G1ifEHQe8HwyKM5gCX+JjmYfl5L6AVoR0/wDSLGkty2gdw8cY/OzLcDxymplgeErKA8kqyIwuFjP2RHibkuPUKea1dDBOXikVTzRj8sxcJAcSbKbRA2eQaZ+9IyPkXG2oGtysnijCgKBYAWAGwA2AqsaAAACwGgHIeAr3W7HjUFSMU8jm7YpSlWFYpSlAKUpQClKUApSlAKUpQCrUsYYFWAIIsQRcEHcEHcVdpQEax/AmCssZzIwIMbsQQD/pvqR4Br8rMoFq1+EBcFJo7Spo6sFJ55XFiRlYC4sTbUbqamlazjHDetAZTlkW+RtxrurDmptty3GtZ8mBSX28M0Y87i6l0apFAFgLDuGgqtWllIbq3XJJqcpNwwG5RtnXy1FxcDartebKLi6Z6EZJq0Rzph0ifClI0iDSSA5Gc/Zg3taw1Y3K6ab71fOHzf5hMh/F7vonujztfxq90p4V+0wgC3WRsJIidO0pvlJ7mGh9DyrzDIHAYbH0I5EEciDcEciDWvBtcfkljXLs91bniDixuCNVI3U8mXuIq5Qmr2WtGbwycyRqzWzaq1tsysVa3hmU04hKVUBPfc5E52JBJa3PKoZrc8tqtcFS0Kn4sz67jrGZwD5BrVj8TxGWQkbogC915Wa58wsX81efKlJsz+DY4eFUUKt7Aczc+JJ5knUnmSauGot17752v+Y1vuFYgyJc7g2Pj41UpWyVEOwfsiixGeUYpkUySAIIgcoWRgACX10A5VJujPs7fAteHiOIUblMqGNvNGBHrv41JujJ7Mo7pW+qo36sa2rSAbkDzNe1jdxTPJyepo9KNKrQGlTIClKUApSlAKUpQClKUApSlAKUpQClKUApSlAY2MwiSrkdAy72PIjYjuI5EaitPPweVNYnzr8Eh7Q/K4BvpyYEk7sKkFQrpljMTFOMk7rG6XUAJYFTZxcqT95DqeZ7qozuEYOUlaRdp4znNRi6bL6zgNkdWjf4HFie/KdVe3epIqzJge2zqbZrEryvtmHcSLA99gd730cnFsQwKvMXQ7o6ROp87x3+tUi4rKn3gBfftMiXI7TK5LsALmyyLoNBXnQy43L+m6fyeq8ObGrkrr2N7+yt4VU4FWBD6gixHI94PhWmxfSCQMVjEcovo2WVMw+NdCuXfdwTuAQb1hY3HSzhQZRYi8kaqQE/Bc2ux3IOcWsQdVNWyySSe6SVEYynOkk+fijfY7iqqvYK2JyiRvdJ+GMXHWN5EKLG7DKRWpA0ciZZLyAsyuJACY17OZdCRZtgBvYAWrA6pb3ygnvOrfM616Wco2xIcWNtSpQMwa3dlMl7eB2FZI54zTjFdl09JKC3t9eDKrb9Hn98eR/UVp1YEAggg7EG4PyrP4PKE6x22C+p10AHMk6AcyRUYrmipvggvTSRmxk4zdnOotfTSNFOm24rSjCxjXIt++1zXSML0RhdmkxDO0sjyOVDgKLuT2coDEAMu57qpxPoPAynqWaNxtdi6HwbNqPMH0NfS4Nfp4RjBp8cXR8/m0OolKU01zfFkH4bxHEYc3hmeO3JGIX1X3T6g10noT0/EzrBirJIxskgFkcnZWH3WPI7E92gPMMREyMyOCrKSrDuI0IrHB+63Pbxr0smLHlja/wAo87HlyY3T8eD6ZpUP9l/SA4rD9XI15YrKxO7qfcc+OhUnvUnnUwryZRcZOLPVjJSSaK0pSuEhSlKAUpSgFKUoBSlKAUpSgFKUoClRf2idUMNneRUaNg6ZmC5uTKt9yUZrDvAqO9Oenskcr4fC5QUOV5SMxzc1jG3ZOhJvqCLaXrnk08k8qtLI0js6qWcljqwFhfYa7DSrXpXLFKUuFTKoapRyxUe7RMK1/Fp5ArIsTNcEBgCw1HcuvztWdM4UFjsNTWhmxsrtYFrsQFVTYksbKotzJIFfJ6fG5TtI+zyzUY8ujeTT/Zs4+AsPlcViYKQxKqOqoFFrmQX8zzJrJxfQjExjtyRmOwzOGJYXsMira5a5yqL66ai9YvSfo3Lg7Oe1GwHaFyI25xue4bBz73nvu/YyUHfuYVrscpxSfg2F6u4FGaaPLurZ7fEB2WUeJVm+VR/h/Eggytcjla1x4a8q23CMa0kq9VGzNH9ob2Ayi4Yb7spKqO8+BIyY8E4ZFxwas2SMsb5M90VSQtrXO3PXermFkyOr2vl2B+Vx49x8T31j4x+rcgqcgJGYXJFiR2ha9rW18723qsCdcVjQ3z/eU7KNXYEeGgPey1aoys85tUSLhzdYTPyYZY/yDXN+81z4gJ3Vm1RFAAAFgBYAbADQAV6q1vkJEV6VdFDiJOuikVHIAYMDla2ga66g2sDodhUJ47wHEwC8sdluAJFIZATtqNR6gX2rrUEwfNbZWK35Eje3kbjzBpisOsqNG4urqVYeBFq36f6jlxVB8r2PPz6DHkuS4fucn6EccbCYqOViQt8kvijEBify6N+7419CA181DAu8qxLq7OIv3i2QE/vV9I4dMqqvwgD5C1erqqbUl5PM0100XaUpWU1ClKUApSlAKUpQClKUApSlAUqO9PePfsWFZ1P2j9iIfiI97yUXb0A51IjXDPaHxo4vFvb/AC4i0cY8j23/AHmHyVatwY9868FOfJsjfkjcZ0uTfUkkm5NySST3+NXMJJldZLXykEC9r+O1Y8Ovlp66f33q9Xq7IzhtfR5anLHPdHvs3+Amkx08eHUCMOxubl7AKWJt2dgDz3tUxwfAMPg54pCrSMrN23I0dhljICjKF1cczmKa1pPY9hM+JlnI7McYRfzSHU+ipb96pt0hxKCWKPLnc5pAnxZLBQx+6od1bNyycyQD5DwafBJ7Y0kev+51OogrlyynFMafs5GyqiSrmve12uinTchmBt4X3Atj8cnxGIgeGH7POMrSyAr2T72RB27kadrLa96rL2ftZWzMNtLKn4Y15ee55nu1OL4i77HKO4f1Nefn11P7FRrw6Lj73ZGcX0ElQArLE45jKVIHeoJObyuKkfAcNHg8NlRkZnNyyixY7XYHUW1FuVrb3rGJvVlIyrkj3WFz4MLa+o3/ACjvNZ8usyZo7ZP+DVj0uPFLdH+WX71sui+EADz5QDJoth91To37xub8wE7q0uMY2CA2L6XHIfeb0G3iVrcYPihWysBlGgsLZQNgOVh3Vni9q/Jc+Wb2sTHSHSJDZ3vqPuL95/PkPEjkDXpsamQyA3A0sNyToFA7ySAB41TAwlQXe3WPYvbUC2yL+Ffqbncmpx9zj54RegjCKFUWVQAB4CvdKsvOA4j1LHU2+6Ne03cCRYcyb9xtzslwjmHSrg82GlZz7jyM8cq8izFgD8Lg/O2ncO19G8d+0YaGcixeNWI8SNfretFj442icSAFMrZwdiLXNSDgUHV4eKMgApGikAWAIUAgetexj1LzY0pLleTyMmmWGbcXw/Bn0pSpkRSlKAUpSgFKUoBSlKAUpSgNN0r47FgoDNJqdkW+rtyUfqTyF64A82fM53JZiBtqSbCpp7YXb9vCsxKiFCgvouZnDW8ygv6dwqBg2W3PMAf1v9K9LTY1CO73PO1E3KW32PUchUWK6DTSrgcNte3M/wBKqU79f0r1WtRdfBkck31ydW9k+F6vClucjGT09xfSyg+tbLDnO8kp94u6X7ljdkVR4aE+bGsTo7jFTCxvGL/YqEXvbKAq/wAdlq7joRgYmkJzQqAX1GdWNgzAH3w7dqw7WZjYG+ng67HOXET2dBOMfUa3jkpMmU7La3qL3rBquO6WYBhmtJIw5CNlPzfKPrWlxvTM7RYaJO4v22PoLD6mvNj9P1GR8KvyelLXYIdu/wAG5pUMxfGMTLfPKQDyjCxgeRQBvrVscSny5OtYDwsD8wL/AFrUvouZpcoyv6xhTfDJfOcrhyLrYqbC5W5BB8tNfQ7Xq91i5c+YZbXzXFrd96h+F43PF94Ovc9yR+8Nfnet/huqniE2WPWwZlALwybrnuotc+6+qsRa4JAOfPoMuL1LheUaMOtx5fS+fZmx4fOwcS20HuKwPPdyORIJA7gT32EpweIEi5h6juPdUQXFAaSEIw3ubKfFSdx9RzrI4fxTKxWMhrgZm3Rb7Np7x0OgOttxWNXdeDWmqJLisQQQiANIRcA7KPjfuXw3J0HMiuEw4QHUlmN3Y7se8/oBsBpXnh6IFurZs2rOdWY97fpbQAaAACqy4xA4iF3kIuI01cjvt91fxNZfGrVzxEi2lyz1NH1jJD/qOA35B2pL+agr5sKlorUcF4eyEyyW6xhlCg3CLvlvzYkAk7aKOVzuK9LBDZCmedmnvlaFKUq4qFKUoBSlKAUpSgFKUoClYPGuIx4aF55DZUFz3k7BV8SbAeJrOrjvtU6Q/tE/7NG32UTHMRs8g0PmE1XzzdwqzFjeSW1FWXIoRbItxfiEmJmknkPbkO3JQPdQeCjT68zWAyBmPlr67fpXmeW2g3quEGhPef8AtXsqCSUUeS3J3N9nqNj7p3Gx7xXuvMiX8CNjVY3vvoeYqS44IPlWib+znHFssB2ifrfDLyXz6w5q8+1Hj3XSjDRn7OI3cjZn7vJAbeZPcKivDeISYeQSRkB8rLrtZhv6HK3mBWIza958f1J/3es/6S37n4Llkls2ryVZ7edUVeZ3/wB7UVbefOq1op+ShuuEKUpUiBUV6weIkhbPGxU2I0sdDupB0ZTzUgg14pUZQUlTJwm4u0SrhPH8O4tLnhPxRqZYfWM/aIfwqxHlVrjnGYVIMM/WyDYiB41A5q2eTMR5L6ioyyg7gV6jjuQqi5JAAA1JJsAANyTpavOl9OwuW5o3x+oZa2pkg4PxLH4qVcNA4iMh1KLqoHvOSScoA7tdhuRXYOjvBYsHF1ca6m2eQ6ySNbV5G3Yn6bCtX7PujAwUOZwDPIAZDvlG4jU9w5nmbnuqU1inHHF1BUjdCWRq5u2VpSlcJClKUApSlAKUpQClKUApSlAeH2PlXzUdj60pW3Q+pmLW+lGFzrLw3uj/AHzpSvSfaMM/SXKtH3x5f2pSkiEOmex73p/U1SPdvMfpSlR8kkejSlKmVMUpSunBSlKAVvOgX/iOF/8AcP8A9HpSqs39tluD+4jvS1WlK8NnuilKUApSlAKUpQH/2Q==', 180.0000, N'Trinh thám, Hài hước, Tình cảm', N'Nhắc đến Manga mà bỏ quên Thám tử lừng danh Conan thì quả là một thiếu sót to lớn. Đây là tập truyện manga lấy bối cảnh Nhật Bản hiện đại với nhân vật chính là Shinichi Kudo - thám tử lừng danh trung học. Trong một lần phá án, cậu bị bọn Tổ chức áo đen phát giác và cho uống thuốc teo nhỏ. Từ đó, Shinichi xuất hiện dưới hình dạng chú bé Edogawa Conan 6 tuổi nhưng trí não và khả năng phá án thiên tài vẫn không thay đổi. Tá túc tại nhà cô bạn gái Ran Mori, Conan đã tham gia phá rất nhiều vụ án bí ẩn và dần dần vạch trần chân tướng Tổ chức áo đen….

Thành công của Detective Conan là một dấu son chói lọi trong lịch sử Manga nước Nhật. Câu chuyện chàng thám tử tí hon suốt bao nhiêu năm rồi vẫn khiến bao thế hệ khán giả yêu mến không ngừng.', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Kanae Minato', N'https://salt.tikicdn.com/cache/280x280/ts/product/19/83/71/a44b27b4eb2a8048eef2278b55d0242d.jpg', 100.0000, N'Thú tội – Kanae Minato', N'Đây là một trong những cuốn sách mà câu chuyện của nó khiến  người đọc phải ớn lạnh bởi sự tàn ác của hung thủ và của chính nạn nhân, từ động cơ gây án cũng như cách thức giết người của hung thủ và cả sự trả thù đến từ nạn nhân.

Tác phẩm kể về diễn biến tâm lý của những nhân vật, cụ thể là những đứa trẻ mới lớn bị giáo dục một cách lầm lạc. Như cái tên của cuốn sách, 6 chương vẻn vẹn hơn 200 trang sách chỉ nói về thú tội. Lần lượt là tường thuật của cô giáo, lớp trưởng, bà mẹ học sinh B, rồi đến lời tự sự điên loạn của B, di chúc của A & cuối cùng khép lại bằng cuộc gọi của cô giáo cho học sinh A. Tất cả mọi lời thú tội đều bắt đầu xung quanh câu chuyện về Manami, con gái của cô giáo, bị giết hại bởi chính những học sinh của mình.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Những Người Thích Đùa', N'https://salt.tikicdn.com/ts/product/a7/d0/25/ba80f39df8d15451313cf335740f2b1b.jpg', 100.0000, N'Những Người Thích Đùa – tác giả: Azit Nexin', N'Cái tên Azit Nexin có lẽ đã quá quen thuộc với bạn đọc trên khắp thế giới, với những cuốn sách đậm chất trào phúng, châm biếm. Những Người Thích Đùa là một trong những tác phẩm nổi tiếng nhất của Azit Nexin.

Những Người Thích Đùa mang đậm ý nghĩa thời đại, dù được viết cách đây nhiều năm nhưng vẫn lưu giữ nhiều giá trị cho đến ngày nay. Những chi tiết gây cười trong sách được xây dựng nhẹ nhàng, dễ tiếp nhận, giúp người đọc như đang tự soi mình vào gương, nhìn ra những điều rất đỗi ngớ ngẩn, hài hước mà chúng ta vẫn vô thức chấp nhận và làm theo mỗi ngày.', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Ông Trăm Tuổi Trèo Qua Cửa Sổ Và Biến Mất', N'https://www.nxbtre.com.vn/Images/News/nxbtre_full_29132019_031319.jpg', 120.0000, N'Ông Trăm Tuổi Trèo Qua Cửa Sổ Và Biến Mất – tác giả: Jonas Jonasson
', N'Câu chuyện kể về chuyến phiêu lưu của ông cụ Allan Karlson, vào ngày sinh nhật thứ 100 của mình, đã trèo qua cửa sổ viện dưỡng lão và lập tức mất tăm. Một cuộc truy tìm quy mô lớn đã diễn ra trên khắp đất nước Thụy Điển, từ phía những người ở viện dưỡng lão, chính quyền sở tại cũng như một trên trộm ngớ ngẩn trao nhầm vali tiền cho ông cụ.

Cuộc truy bắt có vẻ sẽ rất dễ dàng, bởi một cụ già thì đi xa được bao nhiêu cơ chứ? Nhưng cụ già sống tròn 1 thế kỷ này đâu phải là người đơn giản như vậy.', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Những Cuộc Phiêu Lưu Của Huckleberry Finn', N'https://cf.shopee.vn/file/2bd607578e9df2c586ff750b996c7389', 120.0000, N'Những Cuộc Phiêu Lưu Của Huckleberry Finn – Mark Twain', N'Câu chuyện kể về những cuộc phiêu lưu của Huckleberry Finn trên dòng sông Mississippi với người bạn là Jim, một nô lệ đang chạy thoát. 

Quyển sách phiêu lưu này miêu tả những cảnh vật trên dòng sông và châm biếm những quan điểm ở miền Nam Hoa Kỳ thời tiền chiến, đặc biệt là quan điểm kỳ thị chủng tộc. 

Hình ảnh Huck và Jim trên chiếc bè chạy theo dòng sông, đi đến tự do, là một trong những hình ảnh bất hủ nhất trong văn học Hoa Kỳ.', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'Ông Nội Vượt Ngục ', N'https://salt.tikicdn.com/cache/w1200/ts/product/fa/f5/c6/b7fa2a567507e45833009d8bb6a5c3f4.jpg', 165.0000, N'Ông Nội Vượt Ngục – tác giả: David Walliams', N'Tiếp tục là câu chuyện về chuyến phiêu lưu của ông cụ già, nhưng trong Ông Nội Vượt Ngục, ông cụ lại có bạn đồng hành là cậu cháu trai nhút nhát, rụt rè. Xuyên suốt chuyến hành trình “ảo” không kém Ông Trăm Tuổi Trèo Qua Cửa Sổ Và Biến Mất, cuốn truyện Ông Nội Vượt Ngục được lồng ghép những bài học về lối sống trung thực, tình yêu dành cho gia đình và nhiều điều ý nghĩa khác.', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Số Đỏ', N'https://cf.shopee.vn/file/c9f64ac822bb68464009fb57ad84fc32', 150.0000, N'Số Đỏ – tác giả: Vũ Trọng Phụng', N'Vũ Trọng Phụng là “ông vua” của thể loại văn hiện thực trào phúng thời kỳ trước Cách mạng Tháng Tám. Tác phẩm của ông có giọng văn châm biếm, hài hước một cách sâu cay, phản ánh những hiện thực của xã hội đầy nhiễu nhương thời đó.

Nội dung cuốn sách trào phúng Số Đỏ là câu chuyện về Xuân Tóc Đỏ, một thằng Ma-cà-bông đầu đường xó chợ bỗng chốc có cơ hội đổi đời, trở thành “đốc tờ Xuân” được mọi người kính trọng và cưới được cô tiểu thư con nhà quyền quý.', 3, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Những Cuộc Phiêu Lưu Của Tom Sawyer', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuNvVAqVLg8WNUZrE53rh5-U4bpMFhwU1Ubg&usqp=CAU', 185.0000, N'Những Cuộc Phiêu Lưu Của Tom Sawyer – Mark Twain', N'Ra đời năm 1876, hơn 100 năm nay, cuốn tiểu thuyết phiêu lưu này đã được người đọc ở nhiều lứa tuổi, nhiều dân tộc khác nhau yêu mến. 

Tác giả không chỉ thuật lại câu chuyện có hậu về chú Tom tinh nghịch, mà còn dựng nên một bức tranh hiện thực về cuộc sống của các nhân vật bé nhỏ trong truyện, đặc biệt đi sâu vào thế giới bên trong con người, miêu tả giản dị và chính xác tâm lý trẻ em. Tác phẩm chứa đựng trong nó một chất thơ trong trẻo, được coi là một “khúc ca về tuổi thơ”.', 4, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Cuộc Sống Rất Giống Cuộc Đời ', N'https://cf.shopee.vn/file/34e21a8d3a2b02d3bf025121f0b707fc', 150.0000, N'Cuộc Sống Rất Giống Cuộc Đời – tác giả: Nguyễn Hoàng Hải', N'Nguyễn Hoàng Hải là gương mặt quen thuộc đối với các bạn trẻ khi là nhân vật chính trong các buổi talkshow của nhóm hài Trắng TV, cùng với Tuấn Tiền Tỷ. Cuộc Sống Rất Giống Cuộc Đời là cuốn sách đầu tay của anh.

Đây là tập hợp các bài tản văn xoay quanh những câu chuyện thường nhật của tác giả như gia đình, bạn bè, đồng nghiệp…, những câu chuyện có vẻ nhỏ nhặt những vô tình gây ra tương đối nhiều áp lực cho mỗi người.

Bằng giọng văn hài hước, tác giả dẫn dắt cái nhìn của người đọc để có thể cảm nhận cuộc sống một cách khác đi, thoáng hơn, nhẹ nhàng hơn.', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Đảo Giấu Vàng', N'https://cdn.vovlive.vn/2020/09/03/vovlive_dao-giau-vang.jpg', 180.0000, N'Đảo Giấu Vàng – Robert Louis Stevenson', N'Đảo giấu vàng – cái tên nghe hấp dẫn như chuyện cổ tích ấy lại là một câu chuyện về xã hội Anh hồi thế kỷ thứ XVIII, cái thế kỉ tanh “máu và bùn” của vương triều London đang mở rộng cuộc hành trình chinh phạt và xâm chiếm thuộc địa để biến nước Anh thành một đế quốc “không có mặt trời lặn”. 

Một chế độ kẻ cướp ắt sinh ra những tên cướp. Ấy là nguồn gốc mọc lên “Đảo giấu vàng” trong xứ sở những hòn đảo Britain kia.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Những Cuộc Phiêu Lưu Của Pinocchio', N'https://product.hstatic.net/1000328521/product/nhung_cuoc_phieu_luu_cua_pinocchio_98931b445ff8408cb38a8585535ec5d5.jpg', 200.0000, N'Những Cuộc Phiêu Lưu Của Pinocchio – Nhiều Tác Giả', N'Hơn 100 năm qua, kể từ khi ra đời, câu chuyện Những cuộc phiêu lưu của Pinocchio của Carlo Collodi đã làm say mê bao thế hệ trẻ em khắp thế giới. 

Từ nguyên bản tác phẩm, biết bao cuốn sách, bao thước phim về cậu bé Pinocchio đã ra đời ở nhiều quốc gia. 

Lần này, Pinocchio đến với độc giả nhỏ tuổi Việt Nam với những điều vô cùng đặc biệt và thú vị thông qua hình thức truyện tranh.

Cuốn sách được minh họa bởi chính một họa sĩ người Ý, quê hương của Pinocchio – họa sĩ Tony Wolf – người đã trở nên rất đỗi quen thuộc với độc giả Việt Nam qua bộ Chuyện rừng nay sẽ tiếp tục mang đến cho các em những hình ảnh vô cùng sinh động, ngộ nghĩnh về chú bé gỗ Pinocchio.', 4, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (14, N'khanh manh', N'0375801453', N'lâm thao-phú tho')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (15, N'thong ml', N'12345678', N'khoái châu-hưng yên')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (16, N'khanh manh', N'0375801453', N'lâm thao-phú tho')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (17, N'khanh manh', N'12345678', N'lâm thao-phú tho')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (18, N'ly', N'0375801453', N'lâm thao-phú tho')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'khanh manh', N'12345678', N'lâm thao-phú tho')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
