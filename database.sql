USE [Fingerprintsystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMember]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_User_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMax]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_User_Select_ByIDMax]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Select_ByIDMember]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Insert_ByIDMember]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Insert_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_User_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Select_ByIDMember]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_User_Address_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Insert]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_User_Address_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_PagingHelper]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Update]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_Member_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_SelectPaging]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_Member_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByID]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByCheckloginscan]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByCheckloginscan]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByChecklogin]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByChecklogin]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Insert]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[sp_Member_Insert]
GO
/****** Object:  StoredProcedure [dbo].[GetCustomers_Pager]    Script Date: 6/4/2560 17:12:04 ******/
DROP PROCEDURE [dbo].[GetCustomers_Pager]
GO
/****** Object:  Table [dbo].[tb_user_status]    Script Date: 6/4/2560 17:12:04 ******/
DROP TABLE [dbo].[tb_user_status]
GO
/****** Object:  Table [dbo].[tb_user_scan]    Script Date: 6/4/2560 17:12:04 ******/
DROP TABLE [dbo].[tb_user_scan]
GO
/****** Object:  Table [dbo].[tb_user_address]    Script Date: 6/4/2560 17:12:04 ******/
DROP TABLE [dbo].[tb_user_address]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 6/4/2560 17:12:04 ******/
DROP TABLE [dbo].[tb_user]
GO
/****** Object:  Table [dbo].[tb_member]    Script Date: 6/4/2560 17:12:04 ******/
DROP TABLE [dbo].[tb_member]
GO
/****** Object:  Table [dbo].[tb_driver]    Script Date: 6/4/2560 17:12:04 ******/
DROP TABLE [dbo].[tb_driver]
GO
/****** Object:  Table [dbo].[tb_Customers]    Script Date: 6/4/2560 17:12:04 ******/
DROP TABLE [dbo].[tb_Customers]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/4/2560 17:12:04 ******/
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[UnitPrice] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Customers]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Customers](
	[CustomerID] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NULL,
	[ContactName] [varchar](50) NULL,
	[City] [varchar](50) NULL,
 CONSTRAINT [PK_tb_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_driver]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_driver](
	[driver_id] [bigint] IDENTITY(1,1) NOT NULL,
	[member_id] [bigint] NULL,
	[id] [varchar](20) NULL,
	[fullname] [varchar](50) NULL,
	[tel] [varchar](15) NULL,
	[status] [varchar](50) NULL,
	[LastLoginDate] [datetime] NULL,
	[latitudesc] [varchar](50) NULL,
	[longitudesc] [varchar](50) NULL,
 CONSTRAINT [PK_tb_driver] PRIMARY KEY CLUSTERED 
(
	[driver_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_member]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_member](
	[member_id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](300) NULL,
	[createdby] [varchar](50) NULL,
	[createddate] [datetime] NULL,
	[lastlogindate] [datetime] NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK_tb_member] PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[member_id] [bigint] NOT NULL,
	[id] [varchar](20) NULL,
	[fullname] [varchar](50) NULL,
	[school] [varchar](50) NULL,
	[fullnameparent] [varchar](50) NULL,
	[tel] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[photo] [varchar](50) NULL,
	[password_Decrypt] [varchar](300) NULL,
 CONSTRAINT [PK_tb_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user_address]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_address](
	[address_id] [bigint] IDENTITY(1,1) NOT NULL,
	[member_id] [bigint] NULL,
	[latitude] [varchar](30) NULL,
	[longitude] [varchar](30) NULL,
	[address] [varchar](50) NULL,
	[detailaddress] [varchar](50) NULL,
 CONSTRAINT [PK_tb_user_address_1] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user_scan]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_scan](
	[scan_id] [bigint] IDENTITY(1,1) NOT NULL,
	[member_id] [bigint] NULL,
	[fingerprint_id] [varchar](50) NULL,
	[datetime_up] [varchar](50) NULL,
	[datetime_down] [varchar](50) NULL,
	[activedate] [datetime] NULL,
 CONSTRAINT [PK_tb_user_scan] PRIMARY KEY CLUSTERED 
(
	[scan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user_status]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_status](
	[status_id] [bigint] IDENTITY(1,1) NOT NULL,
	[status] [bigint] NULL,
	[detial] [varchar](50) NULL,
 CONSTRAINT [PK_tb_user_status_1] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [Name], [UnitPrice], [Quantity]) VALUES (1, N'ss', N'sssss', N'ererer')
INSERT [dbo].[Products] ([ProductID], [Name], [UnitPrice], [Quantity]) VALUES (2, N'dd', N'sdsd', N'sdsd')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[tb_Customers] ON 

INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (1, N'test', N'40', N'321')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (2, N'test', N'22', N'32')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (3, N'1', N'2', N'2')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (4, N'jk', N'6', N'tyty')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (5, N'jk', N'5', N'6')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (6, N'3', N'jk', N'5')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (7, N'5', N'6', N'5')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (8, N'65', N'6', N'5')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (9, N'65', N'jk', N'56')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (10, N'56', N'5', N'56')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (11, N'56', N'56', N'5')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (12, N'556', N'56', N'56')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (13, N'56', N'56', N'56')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (14, N'56', N'56', N'56')
INSERT [dbo].[tb_Customers] ([CustomerID], [CompanyName], [ContactName], [City]) VALUES (15, N'56', N'56', N'56')
SET IDENTITY_INSERT [dbo].[tb_Customers] OFF
SET IDENTITY_INSERT [dbo].[tb_driver] ON 

INSERT [dbo].[tb_driver] ([driver_id], [member_id], [id], [fullname], [tel], [status], [LastLoginDate], [latitudesc], [longitudesc]) VALUES (1, 7, N'3560300551258', N'นาย จำปา', N'000000000', N'Driver', CAST(N'2017-03-29T01:59:24.093' AS DateTime), NULL, NULL)
INSERT [dbo].[tb_driver] ([driver_id], [member_id], [id], [fullname], [tel], [status], [LastLoginDate], [latitudesc], [longitudesc]) VALUES (2, 15, N'36551111', N'666', N'df', N'dsf', NULL, N'df', NULL)
SET IDENTITY_INSERT [dbo].[tb_driver] OFF
SET IDENTITY_INSERT [dbo].[tb_member] ON 

INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [lastlogindate], [is_active]) VALUES (3, N'user1', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-04-06T16:53:17.890' AS DateTime), CAST(N'2017-04-06T17:06:03.367' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [lastlogindate], [is_active]) VALUES (4, N'driver1', N'fc0iUkg331qk3V8HY6MWvQ==', N'Driver', NULL, CAST(N'2017-04-06T17:08:42.960' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [lastlogindate], [is_active]) VALUES (5, N'user2', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-04-06T17:07:40.603' AS DateTime), CAST(N'2017-04-06T17:09:08.870' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tb_member] OFF
SET IDENTITY_INSERT [dbo].[tb_user] ON 

INSERT [dbo].[tb_user] ([user_id], [member_id], [id], [fullname], [school], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (1, 3, N'56363413', N'กฤษฎา สักแก้ว', N'นเรศวร', N'งดงาม', N'0946294489', N'film@hotmail.com', N'~/UploadImage/1.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [id], [fullname], [school], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (2, 5, N'56364123', N'งดงาม', N'ใจดี', N'งด', N'0946294489', N'film@hotmail.com', N'~/UploadImage/2.jpg', N'123456')
SET IDENTITY_INSERT [dbo].[tb_user] OFF
SET IDENTITY_INSERT [dbo].[tb_user_address] ON 

INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (1, 3, N'16.841956492033', N'100.25392415624992', N'ทางหลวงชนบท ตำบล ดอน', N'รร')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (2, 5, N'16.818296043405223', N'100.25941732031242', N'ซอย ประชาอุทิศ 3 ตำบ', N'หห')
SET IDENTITY_INSERT [dbo].[tb_user_address] OFF
SET IDENTITY_INSERT [dbo].[tb_user_scan] ON 

INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [fingerprint_id], [datetime_up], [datetime_down], [activedate]) VALUES (1, 3, N'', N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', CAST(N'2017-04-06T16:56:44.000' AS DateTime))
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [fingerprint_id], [datetime_up], [datetime_down], [activedate]) VALUES (2, 5, N'', N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', CAST(N'2017-04-06T17:08:58.660' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_user_scan] OFF
/****** Object:  StoredProcedure [dbo].[GetCustomers_Pager]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCustomers_Pager]
      @PageIndex INT = 1
      ,@PageSize INT = 10
      ,@RecordCount INT OUTPUT
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [CustomerID] ASC
      )AS RowNumber
      ,[CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[City]
      INTO #Results
      FROM [tb_Customers]
     
      SELECT @RecordCount = COUNT(*)
      FROM #Results
           
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
     
      DROP TABLE #Results
END



GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Insert]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Member_Insert]

@username varchar(50),
@password varchar(300),
@createdby varchar(50),
@isactive bit
AS
BEGIN

	SET NOCOUNT ON;
	IF EXISTS(SELECT (member_id) FROM [dbo].tb_member WHERE username = @username )
	BEGIN
			 SELECT -1 -- Username ซ้ำ.
	END
	ELSE
	BEGIN
	INSERT INTO [dbo].[tb_member]
           ([username]
           ,[password]
           ,[createdby]
           ,[createddate]
           ,[lastlogindate]
		   ,[is_active])
    VALUES
           (
		   @username,
		   @password,
		   @createdby,
		   GETDATE(),
		   GETDATE(),
		   @isactive
		   )
		   --SELECT SCOPE_IDENTITY() -- ดึง  member_id  ขึ้นมา ตอน insert ลงไป
		   SELECT MAX(member_id) FROM [dbo].[tb_member]
	END
END





GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByChecklogin]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByValidating]    Script Date: 3/27/2017 4:09:07 PM ******/



CREATE PROCEDURE [dbo].[sp_Member_Select_ByChecklogin]
@username varchar(20),
@password varchar(300)

AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @memberid INT ,@LastLoginDate DATETIME

	SELECT @memberid=[member_id],@LastLoginDate=[lastlogindate] -- การดึงค่า memberid และ LastLoginDate  มาเช็คเงือนไข
    FROM [dbo].[tb_member] WHERE [username] =@username and [password]= @password  -- เช็คว่า Username และ Password มีใน Table หรือไม่
	
	IF @memberid IS NOT NULL
	BEGIN
		IF(SELECT [is_active] FROM [dbo].[tb_member] WHERE [member_id] =@memberid) = 1  -- is_avtive = true 															
		BEGIN
			UPDATE [dbo].[tb_member]
			   SET 
			   [lastlogindate] = GETDATE()
			WHERE [member_id]=@memberid
			SELECT @memberid [member_id] -- user_id ที่ update ลงไป
		END
		ELSE
		BEGIN
			SELECT -2 -- ทำการสมัครไม่สมบูรณ์ สมัครใหม่
		END
	END
	ELSE
	BEGIN
		SELECT -1  -- Username และ Password ไม่ถุกต้อง
	END
END





GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByCheckloginscan]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByValidating]    Script Date: 3/27/2017 4:09:07 PM ******/



CREATE PROCEDURE [dbo].[sp_Member_Select_ByCheckloginscan]
@username varchar(20),
@password varchar(300)

AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @memberid INT ,@LastLoginDate DATETIME

	SELECT @memberid=[member_id],@LastLoginDate=[lastlogindate] -- การดึงค่า memberid และ LastLoginDate  มาเช็คเงือนไข
    FROM [dbo].[tb_member] WHERE [username] =@username and [password]= @password  -- เช็คว่า Username และ Password มีใน Table หรือไม่
	
	IF @memberid IS NOT NULL
	BEGIN
		
			UPDATE [dbo].[tb_member]
			   SET 
			   [lastlogindate] = GETDATE()
			WHERE [member_id]=@memberid
			SELECT @memberid [member_id] -- user_id ที่ update ลงไป
	END
	ELSE
	BEGIN
		SELECT -1  -- Username และ Password ไม่ถุกต้อง
	END
END





GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByID]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Member_Select_ByID] 
@memberid int 
AS
BEGIN

		SELECT [member_id]
			  ,[username]
			  ,[password]
			  ,[createdby]
			  ,[createddate]
			  ,[lastlogindate]
			  ,[is_active]
		  FROM [dbo].[tb_member]
		  WHERE member_id = @memberid
END





GO
/****** Object:  StoredProcedure [dbo].[sp_Member_SelectPaging]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Member_SelectPaging]

@PageNum int,
@PageSize int,
@SortField varchar(100),
@SortOrder varchar(4)
AS
BEGIN
	
	DECLARE @sql varchar(max)
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	SET @CountColumn = ' [member_id] '
	
	IF @SortField = ''
		SET @SortField = ' [id]' 
	ELSE
		SET @SortField = @SortField + @SortOrder

    SET @sql = 'SELECT [member_id]
					  ,[image]
					  ,[id]
					  ,[fullname]
					  ,[datetime_up]
					  ,[datetime_down]
				  FROM [dbo].[tb_member] ' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn
END





GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Update]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Member_Update]
@memberuserid bigint,
@isactive bit
	
AS
BEGIN
	
   UPDATE [dbo].[tb_member]
   SET	[is_active] = @isactive
   WHERE [member_id] = @memberuserid

END


GO
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_PagingHelper]
                (
	                @pagenum  int,
	                @pagesize int,		
	                @orderby varchar(500),
	                @cmd varchar(max),
	                @countColumn varchar(100)
                )
                AS
                BEGIN

	                declare @rowNum1 as integer 
	                declare @rowNum2 as integer 
	                declare @max as integer
	                set @rowNum1 = (@pagenum - 1)* @pagesize + 1
	                set @rowNum2 = (@pagenum * @pagesize)
                    set @max = @pagenum * @pagesize

	                declare @cmdselect as varchar(8000)
	                declare @cmdcnt as varchar(8000)
	                declare @cmdselectEnd  as varchar(8000)
	                declare @cmdcntEnd  as varchar(8000)


	                set @cmdcnt = ' select count('+@countColumn+') as row from  ( '
	                set @cmdselect =  ' select top(' + cast(@max as varchar(10)) + ') result.* from ( select row_number() over(order by ' + isnull(@orderby,'')  +  ') as rownumber ,c_all.* from ( '
	                set @cmdselectEnd = ' )c_all)result where result.rownumber between ' + cast(@rowNum1 as varchar(10)) + ' and ' + cast(@rowNum2 as varchar(10))
	                set @cmdcntEnd = ' ) as cnt'
	
	                print (@cmdselect + @cmd + @cmdselectEnd)
	                print (@cmdcnt + @cmd + @cmdcntEnd)

	                exec (@cmdselect + @cmd + @cmdselectEnd)
	                exec (@cmdcnt + @cmd + @cmdcntEnd)
                END
                




GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Insert]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Address_Insert]
@memberid varchar(10),
@latitude varchar(20),
@longitude varchar(20),
@address varchar(20),
@detailaddress varchar(20)

AS
BEGIN
	
	SET NOCOUNT ON;
	IF(SELECT COUNT(member_id) FROM [dbo].[tb_user_address] WHERE member_id = @memberid) = 0
	BEGIN
	INSERT INTO [dbo].[tb_user_address]
           ([member_id]
           ,[latitude]
           ,[longitude]
           ,[address]
		   ,[detailaddress])
     VALUES
           (
		    @memberid,
            @latitude,
            @longitude,
			@address,
			@detailaddress
			)
			SELECT @@IDENTITY -- การรับค่า Indentity
	END
	ELSE
	BEGIN
			SELECT @@IDENTITY -- การรับค่า Indentity
	END
END





GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Select_ByIDMember]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Address_Select_ByIDMember]
@memberid int
AS
BEGIN
	
	SET NOCOUNT ON;
	IF(SELECT COUNT([member_id]) FROM [dbo].[tb_user_address] WHERE [member_id]= @memberid )= 1
	BEGIN
	SELECT [address_id]
      ,[member_id]
      ,[latitude]
      ,[longitude]
      ,[address]
      ,[detailaddress]
  FROM [dbo].[tb_user_address]
  WHERE [member_id] =@memberid
  END

END




GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 3/20/2017 2:16:10 AM ******/

CREATE PROCEDURE [dbo].[sp_User_Insert]


@memberid bigint,
@id varchar(20),
@fullname varchar(50),
@school varchar(50),
@fullnameparent varchar(50),
@tel varchar(20),
@email varchar(50),
@photo varchar(50),
@password_Decrypt varchar(200)

AS
BEGIN

	 SET NOCOUNT ON;
	 IF NOT EXISTS(SELECT (member_id) FROM [dbo].tb_user WHERE member_id = @memberid )
	 BEGIN
		INSERT INTO [dbo].[tb_user]
			   (
				[member_id]
			   ,[id]
			   ,[fullname]
			   ,[school]
			   ,[fullnameparent]
			   ,[tel]
			   ,[email]
			   ,[photo]
			   ,[password_Decrypt])
		VALUES
			   (
			   @memberid,
			   @id,
			   @fullname,
			   @school,
			   @fullnameparent,
			   @tel,
			   @email,
			   @photo,
			   @password_Decrypt
			   )

			  SELECT MAX(user_id) FROM [dbo].[tb_user]  -- Select user_id ไปใช้ต่อ
	END
	ELSE
	BEGIN
		SELECT -2
	END
END





GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Insert_ByIDMember]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Insert_ByIDMember]
@memberuserid bigint,
@Fingerprintid varchar(50),
@datetimeup varchar(50),
@datetimedown varchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	IF(SELECT COUNT(member_id) FROM [dbo].[tb_user_scan] WHERE [member_id]=@memberuserid)= 0
	BEGIN
	 INSERT INTO [dbo].[tb_user_scan]
           ([member_id]
           ,[Fingerprint_id]
           ,[datetime_up]
           ,[datetime_down]
		   ,[activedate])
     VALUES
           (@memberuserid
           ,@Fingerprintid
           ,@datetimeup
           ,@datetimedown
		   ,GETDATE()
		   )
		SELECT MAX(user_id) FROM [dbo].[tb_user]  -- Select id ไปใช้ต่อ
	END
	SELECT MAX(user_id) FROM [dbo].[tb_user]  -- Select id ไปใช้ต่อ
END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Select_ByIDMember]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Select_ByIDMember]
@memberuserid bigint

AS
BEGIN

	SET NOCOUNT ON;
	IF(SELECT COUNT(member_id) FROM [dbo].[tb_user_scan] WHERE [member_id]=@memberuserid) = 1
	BEGIN
	   SELECT [scan_id]
      ,[member_id]
      ,[fingerprint_id]
      ,[datetime_up]
      ,[datetime_down]
      ,[activedate]
	   FROM [dbo].[tb_user_scan]
	   WHERE [member_id] = @memberuserid
	END
	
END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMax]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Select_ByIDMax]

AS
BEGIN
	
	SET NOCOUNT ON;
	IF (SELECT COUNT(user_id) FROM [dbo].[tb_user]) = 0
	BEGIN
		SELECT 0
	END
	ELSE
	BEGIN
		SELECT MAX(user_id) FROM [dbo].[tb_user] 
		
	END
END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMember]    Script Date: 6/4/2560 17:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Select_ByIDMember]

@memberid int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT
	   [user_id] 
	  ,[member_id]
      ,[id]
      ,[fullname]
      ,[school]
      ,[fullnameparent]
      ,[tel]
      ,[email]
      ,[photo]
	FROM [dbo].[tb_user]
	WHERE member_id=@memberid

	
  
END





GO
