USE [Fingerprintsystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Update_ByIDmember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Update_ByIDmember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_SelectPaging]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMax]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Select_ByIDMax]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Select]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Roundscan]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Roundscan]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Noteup]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Noteup]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Notedown]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Notedown]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Up]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset_Up]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Down]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset_Down]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Up]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMember_Up]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Down]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMember_Down]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectPaging]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Select_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Insert_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_Insert_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Delete_ByID]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_Delete_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Insert_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Insert_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Delete_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Delete_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Select_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Address_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Insert]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_User_Address_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_PagingHelper]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Update]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_Member_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_SelectPaging]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_Member_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByID]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByCheckloginscan]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByCheckloginscan]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByChecklogin]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByChecklogin]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Insert]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_Member_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember_Roundscan]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_Driver_Update_ByIDMember_Roundscan]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_Driver_Update_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_SelectPaging]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_Driver_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Select_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
DROP PROCEDURE [dbo].[sp_Driver_Select_ByIDMember]
GO
/****** Object:  Table [dbo].[tb_user_scan_result]    Script Date: 28/4/2560 2:59:24 ******/
DROP TABLE [dbo].[tb_user_scan_result]
GO
/****** Object:  Table [dbo].[tb_user_scan]    Script Date: 28/4/2560 2:59:24 ******/
DROP TABLE [dbo].[tb_user_scan]
GO
/****** Object:  Table [dbo].[tb_user_address]    Script Date: 28/4/2560 2:59:24 ******/
DROP TABLE [dbo].[tb_user_address]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 28/4/2560 2:59:24 ******/
DROP TABLE [dbo].[tb_user]
GO
/****** Object:  Table [dbo].[tb_member]    Script Date: 28/4/2560 2:59:24 ******/
DROP TABLE [dbo].[tb_member]
GO
/****** Object:  Table [dbo].[tb_driver]    Script Date: 28/4/2560 2:59:24 ******/
DROP TABLE [dbo].[tb_driver]
GO
/****** Object:  Table [dbo].[tb_driver]    Script Date: 28/4/2560 2:59:24 ******/
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
	[roundscan] [bigint] NULL,
	[latitudesc] [varchar](50) NULL,
	[longitudesc] [varchar](50) NULL,
 CONSTRAINT [PK_tb_driver] PRIMARY KEY CLUSTERED 
(
	[driver_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_member]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  Table [dbo].[tb_user]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  Table [dbo].[tb_user_address]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  Table [dbo].[tb_user_scan]    Script Date: 28/4/2560 2:59:24 ******/
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
	[fullname_driver] [varchar](50) NULL,
	[roundscan] [bigint] NULL,
	[noteup] [bigint] NULL,
	[notedown] [bigint] NULL,
	[activedate] [datetime] NULL,
 CONSTRAINT [PK_tb_user_scan] PRIMARY KEY CLUSTERED 
(
	[scan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user_scan_result]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_scan_result](
	[user_result_id] [bigint] IDENTITY(1,1) NOT NULL,
	[member_id] [bigint] NULL,
	[datetime_up] [varchar](50) NULL,
	[datetime_down] [varchar](50) NULL,
	[fullname_driver] [varchar](50) NULL,
	[roundscan] [bigint] NULL,
	[noteup] [bigint] NULL,
	[notedown] [bigint] NULL,
	[datetime] [varchar](50) NULL,
 CONSTRAINT [PK_tb_user_scan_result] PRIMARY KEY CLUSTERED 
(
	[user_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tb_driver] ON 

INSERT [dbo].[tb_driver] ([driver_id], [member_id], [id], [fullname], [tel], [status], [LastLoginDate], [roundscan], [latitudesc], [longitudesc]) VALUES (1, 4, N'3560300551258', N'นาย จำปา วงคำ', N'0954567122', N'Driver', CAST(N'2017-03-29T01:59:24.093' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[tb_driver] ([driver_id], [member_id], [id], [fullname], [tel], [status], [LastLoginDate], [roundscan], [latitudesc], [longitudesc]) VALUES (3, 6, N'3560300551258', N'นาย งดงาม แสงดี', N'0985570643', N'Driver', NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_driver] OFF
SET IDENTITY_INSERT [dbo].[tb_member] ON 

INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [lastlogindate], [is_active]) VALUES (4, N'driver1', N'fc0iUkg331qk3V8HY6MWvQ==', N'Driver', NULL, CAST(N'2017-04-26T03:44:13.803' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [lastlogindate], [is_active]) VALUES (5, N'user2', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-04-06T17:07:40.603' AS DateTime), CAST(N'2017-04-28T02:57:44.430' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [lastlogindate], [is_active]) VALUES (6, N'driver2', N'fc0iUkg331qk3V8HY6MWvQ==', N'Driver', NULL, CAST(N'2017-04-21T12:43:54.957' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [lastlogindate], [is_active]) VALUES (7, N'user3', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', NULL, CAST(N'2017-04-25T19:12:33.630' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [lastlogindate], [is_active]) VALUES (8, N'user4', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', NULL, CAST(N'2017-04-25T19:35:07.383' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [lastlogindate], [is_active]) VALUES (10, N'user6', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-04-21T16:49:01.473' AS DateTime), CAST(N'2017-04-21T16:50:24.293' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [lastlogindate], [is_active]) VALUES (11, N'admin', N'fc0iUkg331qk3V8HY6MWvQ==', N'Admin', NULL, CAST(N'2017-04-28T00:36:50.390' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tb_member] OFF
SET IDENTITY_INSERT [dbo].[tb_user] ON 

INSERT [dbo].[tb_user] ([user_id], [member_id], [id], [fullname], [school], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (2, 5, N'56363455', N'ธีระศักดิ์ สักแก้ว', N'ใจดี', N'งด', N'0946294489', N'film@hotmail.com', N'~/UploadImage/child2.png', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [id], [fullname], [school], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (3, 7, N'56364887', N'สุระพงษ์ งามเมือง', N'ดอกคำใต้วิทยาคม', N'งดงาม', N'0946294489', N'film@hotmail.com', N'~/UploadImage/child3.png', NULL)
INSERT [dbo].[tb_user] ([user_id], [member_id], [id], [fullname], [school], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (4, 8, N'56364123', N'อนุศร วงษ์ใหญ่', N'ใจดี', N'งดงาม', N'0946294489', N'', N'~/UploadImage/child4.png', NULL)
INSERT [dbo].[tb_user] ([user_id], [member_id], [id], [fullname], [school], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (6, 10, N'56364123', N'รักษาแก้ว วงประสง', N'นเรศวร', N'งดงาม สดใส', N'0946294489', N'film@hotmail.com', N'~/UploadImage/child2.png', N'123456')
SET IDENTITY_INSERT [dbo].[tb_user] OFF
SET IDENTITY_INSERT [dbo].[tb_user_address] ON 

INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (2, 5, N'16.818296043405223', N'100.25941732031242', N'ซอย ประชาอุทิศ 3 ตำบ', N'หห')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (3, 7, N'16.818296043405223', N'100.25941732031242', N'ซอย ประชาอุทิศ 3 ตำบ', N'หห')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (4, 8, N'16.818296043405223', N'100.25941732031242', N'ซอย ประชาอุทิศ 3 ตำบ', N'หห')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (6, 10, N'16.61673435985612', N'100.19676091772453', N'1063 ตำบล บ้านไร่ อำ', N'สด')
SET IDENTITY_INSERT [dbo].[tb_user_address] OFF
SET IDENTITY_INSERT [dbo].[tb_user_scan] ON 

INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [fingerprint_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activedate]) VALUES (38, 10, N'', N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'นาย จำปา วงคำ', 2, 0, 0, CAST(N'2017-04-27T15:38:05.440' AS DateTime))
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [fingerprint_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activedate]) VALUES (55, 5, N'', N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'นาย จำปา วงคำ', 2, 0, NULL, CAST(N'2017-04-27T15:13:53.320' AS DateTime))
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [fingerprint_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activedate]) VALUES (56, 7, N'', N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'นาย จำปา วงคำ', 2, NULL, NULL, CAST(N'2017-04-25T19:31:44.467' AS DateTime))
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [fingerprint_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activedate]) VALUES (57, 8, N'', N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'นาย จำปา วงคำ', 2, 0, NULL, CAST(N'2017-04-26T20:03:37.360' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_user_scan] OFF
SET IDENTITY_INSERT [dbo].[tb_user_scan_result] ON 

INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (1, 3, N'27-04-2017 เวลา 6:13:44', N'27-04-2017 เวลา 7:13:44', N'นาย จำปา วงคำ', 1, NULL, NULL, N'27-04-2017 ')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (2, 5, N'27-04-2017 เวลา 6:13:44', N'27-04-2017 เวลา 7:13:44', N'นาย จำปา วงคำ', 1, NULL, NULL, N'27-04-2017 ')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (3, 7, N'27-04-2017 เวลา 6:13:44', N'27-04-2017 เวลา 7:13:44', N'นาย จำปา วงคำ', 1, NULL, NULL, N'27-04-2017 ')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (7, 3, N'27-04-2017 เวลา 16:13:44', N'27-04-2017 เวลา 17:13:44', N'นาย จำปา วงคำ', 2, NULL, NULL, N'27-04-2017 ')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (8, 5, N'27-04-2017 เวลา 16:13:44', N'27-04-2017 เวลา 17:13:44', N'นาย จำปา วงคำ', 2, NULL, NULL, N'27-04-2017 ')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (9, 7, N'27-04-2017 เวลา 16:13:44', N'27-04-2017 เวลา 17:13:44', N'นาย จำปา วงคำ', 2, NULL, NULL, N'27-04-2017')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (13, 3, N'28-04-2017 เวลา 6:13:44', N'28-04-2017 เวลา 7:13:44', N'นาย จำปา วงคำ', 1, NULL, NULL, N'28-04-2017 ')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (14, 5, N'28-04-2017 เวลา 6:13:44', N'28-04-2017 เวลา 7:13:44', N'นาย จำปา วงคำ', 1, NULL, NULL, N'28-04-2017')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (19, 3, N'28-04-2017 เวลา 16:13:44', N'28-04-2017 เวลา 17:13:44', N'นาย จำปา วงคำ', 2, NULL, NULL, N'28-04-2017')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (20, 5, N'28-04-2017 เวลา 16:13:44', N'28-04-2017 เวลา 17:13:44', N'นาย จำปา วงคำ', 2, NULL, NULL, N'28-04-2017')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (21, 7, N'28-04-2017 เวลา 16:13:44', N'28-04-2017 เวลา 17:13:44', N'นาย จำปา วงคำ', 2, NULL, NULL, N'28-04-2017')
SET IDENTITY_INSERT [dbo].[tb_user_scan_result] OFF
/****** Object:  StoredProcedure [dbo].[sp_Driver_Select_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Driver_Select_ByIDMember]

@memberdriverid bigint
AS
BEGIN

	SET NOCOUNT ON;
	SELECT [driver_id]
      ,[member_id]
      ,[id]
      ,[fullname]
      ,[tel]
      ,[status]
      ,[LastLoginDate]
	  ,[roundscan]
      ,[latitudesc]
      ,[longitudesc]
  FROM [dbo].[tb_driver]
  WHERE [member_id] = @memberdriverid

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_SelectPaging]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Driver_SelectPaging]

@PageNum int,
@PageSize int,
@SortField varchar(100),
@SortOrder varchar(4)

AS
BEGIN
	DECLARE @sql varchar(max)
	DECLARE @CountColumn varchar(500)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	SET @CountColumn = ' [member_id] '
	
	IF @SortField = ''
		SET @SortField = ' [id]' 
	ELSE
		SET @SortField = @SortField + @SortOrder

    SET @sql = 'SELECT u.[driver_id]
					  ,ug.[username]
					  ,u.[member_id]
					  ,u.[id]
					  ,u.[fullname]
					  ,u.[tel]
					  ,u.[status]
					  ,u.[LastLoginDate]
					  ,u.[roundscan]
					  ,u.[latitudesc]
					  ,u.[longitudesc]
				  FROM [dbo].[tb_driver] u
				  LEFT JOIN [dbo].[tb_member] ug ON ug.member_id = u.member_id ' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn


END

GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Driver_Update_ByIDMember]

@memberdriverid bigint
AS
BEGIN

	SET NOCOUNT ON;
	

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember_Roundscan]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Driver_Update_ByIDMember_Roundscan]

@memberdriverid bigint,
@roundscan bigint
AS
BEGIN

   SET NOCOUNT ON;
   UPDATE [dbo].[tb_driver]
	SET [roundscan] = @roundscan
	WHERE [member_id] = @memberdriverid

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Insert]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByChecklogin]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByCheckloginscan]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByID]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_SelectPaging]    Script Date: 28/4/2560 2:59:24 ******/
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

    SET @sql = 'SELECT [scan_id]
      ,[member_id]
      ,[fingerprint_id]
      ,[datetime_up]
      ,[datetime_down]
      ,[activedate]
	FROM [dbo].[tb_user_scan] ' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn
END





GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Update]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Insert]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Select_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Delete_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 3/20/2017 2:16:10 AM ******/

CREATE PROCEDURE [dbo].[sp_User_Delete_ByIDMember]


@memberid bigint


AS
BEGIN

	DELETE FROM [dbo].[tb_member]
    WHERE [member_id] = @memberid 

	DELETE FROM [dbo].[tb_user]
    WHERE [member_id] = @memberid 

	DELETE FROM [dbo].[tb_user_address]
    WHERE [member_id] = @memberid 
	
	DELETE FROM [dbo].[tb_user_scan]
    WHERE [member_id] = @memberid 	 
END





GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Insert_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Insert_ByIDMember]
@memberuserid bigint,
@Fingerprintid varchar(50),
@datetimeup varchar(50),
@datetimedown varchar(50),
@fullnamedriver varchar(50)
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
		   ,[activedate]
		   ,[fullname_driver])
     VALUES
           (@memberuserid
           ,@Fingerprintid
           ,@datetimeup
           ,@datetimedown
		   ,GETDATE()
		   ,@fullnamedriver
		   )
		SELECT MAX(user_id) FROM [dbo].[tb_user]  -- Select id ไปใช้ต่อ
	END
	ELSE
	BEGIN
		SELECT MAX(user_id) FROM [dbo].[tb_user]  -- Select id ไปใช้ต่อ
	END
END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Delete_ByID]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Result_Delete_ByID]
@userresultid bigint

AS
BEGIN

	DELETE FROM [dbo].[tb_user_scan_result]
    WHERE [user_result_id] = @userresultid
	
END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Insert_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Result_Insert_ByIDMember]
@memberuserid bigint,
@datetimeup varchar(50),
@datetimedown varchar(50),
@fullnamedriver varchar(50),
@roundscan bigint,
@datetime  varchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	 INSERT INTO [dbo].[tb_user_scan_result]
            ([member_id]
           ,[datetime_up]
           ,[datetime_down]
           ,[fullname_driver]
           ,[roundscan]
		   ,[datetime]
					)
     VALUES
           (@memberuserid
           ,@datetimeup
           ,@datetimedown
		   ,@fullnamedriver
		   ,@roundscan
		   ,@datetime
		   )
	SELECT 'OK'
	
END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging]

@PageNum int,
@PageSize int,
@SortField varchar(100),
@SortOrder varchar(4)

AS
BEGIN
	DECLARE @sql varchar(max)
	DECLARE @CountColumn varchar(1000)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	SET @CountColumn = '[user_id] '
	
	IF @SortField = ''
		SET @SortField = '[datetime_up] ' 
	ELSE
		SET @SortField = @SortField + @SortOrder
		SET @sql ='SELECT	ug.[user_result_id]
			,u.[user_id]
			,u.[member_id] 
			,u.[id]
			,u.[fullname]
			,u.[fullnameparent]
			,u.[tel]
			,u.[email]
			,ug.[datetime_up]
			,ug.[datetime_down]
			,ug.[fullname_driver]
			,ug.[roundscan]
			,ug.[noteup]
			,ug.[notedown]
			,ug.[datetime]
	FROM [dbo].[tb_user] u 
	LEFT JOIN [dbo].[tb_user_scan_result] ug ON ug.member_id = u.member_id' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn
	
	
END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging_ByIDMember]

@fullname varchar(50),
@datetime varchar(50),
--@datetimeup varchar(50),
--@datetimedown varchar(50),
@roundscan  varchar(5),
--@noteup bigint,
--@notedown bigint,

@PageNum int,
@PageSize int,
@SortField varchar(100),
@SortOrder varchar(4)

AS
BEGIN
	DECLARE @sql varchar(max)
	DECLARE @CountColumn varchar(1000)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	IF ISNULL(@fullname,'') <> ''
		SET @RowFilter = @RowFilter +' AND u.[fullname] LIKE ''%' + @fullname +'%'' '
	IF ISNULL(@roundscan,'') <> ''
		SET @RowFilter = @RowFilter +' AND ug.[roundscan] = '+@roundscan+''
    IF ISNULL(@datetime,'') <> ''
		SET @RowFilter = @RowFilter +' AND ug.[datetime] LIKE ''%'+@datetime+'%'''

	SET @CountColumn = '[user_id] '
	
	IF @SortField = ''
		SET @SortField = '[datetime_up] ' 
	ELSE
		SET @SortField = @SortField + @SortOrder
		SET @sql ='SELECT	ug.[user_result_id]
			,u.[user_id]
			,u.[member_id] 
			,u.[id]
			,u.[fullname]
			,u.[fullnameparent]
			,u.[tel]
			,u.[email]
			,ug.[datetime_up]
			,ug.[datetime_down]
			,ug.[fullname_driver]
			,ug.[roundscan]
			,ug.[noteup]
			,ug.[notedown]
			,ug.[datetime]
	FROM [dbo].[tb_user] u 
	LEFT JOIN [dbo].[tb_user_scan_result] ug ON ug.member_id = u.member_id' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn
	
	
END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Select_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser]

AS
BEGIN

	SET NOCOUNT ON;
	SELECT	 u.[user_id]
			,u.[member_id] 
			,u.[id]
			,u.[fullname]
			,u.[fullnameparent]
			,u.[tel]
			,u.[email]
			,ug.[datetime_up]
			,ug.[datetime_down]
	FROM [dbo].[tb_user] u 
	LEFT JOIN [dbo].[tb_user_scan] ug ON ug.member_id = u.member_id
  


END

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]

@fullnamedriver varchar(50)

AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT	 u.[user_id]
			,u.[member_id] 
			,u.[id]
			,u.[fullname]
			,u.[fullnameparent]
			,u.[tel]
			,u.[email]
			,ug.[datetime_up]
			,ug.[datetime_down]
			,ug.[fullname_driver]
			,ug.[roundscan]
			,ug.[noteup]
			,ug.[notedown]
	FROM [dbo].[tb_user] u 
	LEFT JOIN [dbo].[tb_user_scan] ug ON ug.member_id = u.member_id
	WHERE ug.[fullname_driver] = @fullnamedriver


END

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectPaging]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_SelectPaging]
@PageNum int,
@PageSize int,
@SortField varchar(100),
@SortOrder varchar(4)

AS
BEGIN
	DECLARE @sql varchar(max)
	DECLARE @CountColumn varchar(500)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	SET @CountColumn = ' [member_id] '
	
	IF @SortField = ''
		SET @SortField = '[id]' 
	ELSE
		SET @SortField = @SortField + @SortOrder

    SET @sql = 'SELECT u.[scan_id]
					  ,b.[username]
					  ,b.[is_active]
					  ,ug.[id]
					  ,ug.[fullname]
					  ,ug.[school]
				      ,ug.[fullnameparent]
					  ,ug.[tel]
					  ,ug.[email]
					  ,u.[member_id]
					  ,u.[fullname_driver]
					  ,u.[activedate]
				  FROM [dbo].[tb_user_scan] u
			      LEFT JOIN [dbo].[tb_user] ug ON ug.member_id = u.member_id
				  LEFT JOIN [dbo].[tb_member] b ON b.member_id = u.member_id' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn
END
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Down]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMember_Down] 

@memberuserid bigint,
@datetimedown varchar(50)

AS
BEGIN
	

	   SET NOCOUNT ON;
	   --IF(SELECT [datetime_down] FROM [dbo].[tb_user_scan] WHERE [member_id]= @memberuserid) = 'ยังไม่ได้สแกน'
	  -- BEGIN
			UPDATE [dbo].[tb_user_scan]
			 SET[datetime_down] = @datetimedown
			  ,[activedate] = GETDATE()
			WHERE [member_id] = @memberuserid
	 --  END
	  -- ELSE
	  -- BEGIN
		--	SELECT -1
	 --  END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Up]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMember_Up] 

@memberuserid bigint,
@datetimeup varchar(50)

AS
BEGIN
	SET NOCOUNT ON;
	 --IF(SELECT [datetime_up] FROM [dbo].[tb_user_scan] WHERE [member_id]= @memberuserid) = 'ยังไม่ได้สแกน'
	 --  BEGIN
			
		   UPDATE [dbo].[tb_user_scan]
		   SET [datetime_up] = @datetimeup
			  ,[activedate] = GETDATE()
			WHERE [member_id] = @memberuserid
		--END
		--ELSE
		--BEGIN
		--	SELECT -1
		--END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Down]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset_Down] 

@memberuserid bigint,
@datetimedown varchar(50)

AS
BEGIN
	

	   SET NOCOUNT ON;
	
			UPDATE [dbo].[tb_user_scan]
			 SET[datetime_down] = @datetimedown
			  ,[activedate] = GETDATE()
			WHERE [member_id] = @memberuserid
	   
	
END

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Up]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset_Up] 

@memberuserid bigint,
@datetimeup varchar(50)

AS
BEGIN
	SET NOCOUNT ON;
	
			
		   UPDATE [dbo].[tb_user_scan]
		   SET [datetime_up] = @datetimeup
			  ,[activedate] = GETDATE()
			WHERE [member_id] = @memberuserid

END

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByMember] 

@memberuserid bigint,
@datetimeup varchar(50),
@datetimedown varchar(50)

AS
BEGIN
	

	   SET NOCOUNT ON;
	   UPDATE [dbo].[tb_user_scan]
	   SET [datetime_up] = @datetimeup
		  ,[datetime_down] = @datetimedown
	 WHERE [member_id] = @memberuserid

END

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Notedown]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Notedown] 

@memberuserid bigint,
@notedown bigint


AS
BEGIN
	

	   SET NOCOUNT ON;
	   UPDATE [dbo].[tb_user_scan]
	   SET [notedown] = @notedown
	   WHERE [member_id] = @memberuserid

END

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Noteup]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Noteup] 

@memberuserid bigint,
@noteup bigint


AS
BEGIN
	

	   SET NOCOUNT ON;
	   UPDATE [dbo].[tb_user_scan]
	   SET [noteup] = @noteup
	   WHERE [member_id] = @memberuserid

END

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Roundscan]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Roundscan] 

@memberuserid bigint,
@roundscan bigint


AS
BEGIN
	

	   SET NOCOUNT ON;
	   UPDATE [dbo].[tb_user_scan]
	   SET [roundscan] = @roundscan
	   WHERE [member_id] = @memberuserid

END

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 3/20/2017 2:16:10 AM ******/

CREATE PROCEDURE [dbo].[sp_User_Select]

AS
BEGIN

	SELECT [user_id]
      ,[member_id]
      ,[id]
      ,[fullname]
      ,[school]
      ,[fullnameparent]
      ,[tel]
      ,[email]
  FROM [dbo].[tb_user]
			

END





GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMax]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMember]    Script Date: 28/4/2560 2:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_SelectPaging]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 3/20/2017 2:16:10 AM ******/

CREATE PROCEDURE [dbo].[sp_User_SelectPaging]

@PageNum int,
@PageSize int,
@SortField varchar(100),
@SortOrder varchar(4)

AS
BEGIN
	DECLARE @sql varchar(max)
	DECLARE @CountColumn varchar(500)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	SET @CountColumn = ' [member_id] '
	
	IF @SortField = ''
		SET @SortField = ' [fullname]' 
	ELSE
		SET @SortField = @SortField + @SortOrder

    SET @sql = 'SELECT [user_id]
				  ,[member_id]
				  ,[id]
				  ,[fullname]
				  ,[school]
				  ,[fullnameparent]
				  ,[tel]
				  ,[email]
			  FROM [dbo].[tb_user] ' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn

	
			

END





GO
/****** Object:  StoredProcedure [dbo].[sp_User_Update_ByIDmember]    Script Date: 28/4/2560 2:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 3/20/2017 2:16:10 AM ******/

CREATE PROCEDURE [dbo].[sp_User_Update_ByIDmember]


@memberid bigint,
@id varchar(20),
@fullname varchar(50),
@school varchar(50),
@fullnameparent varchar(50),
@tel varchar(20),
@email varchar(50)


AS
BEGIN

   UPDATE [dbo].[tb_user]
   SET [id] = @id 
      ,[fullname] = @fullname
      ,[school] = @school
      ,[fullnameparent] = @fullnameparent
      ,[tel] = @tel
      ,[email] = @email
	WHERE [member_id] = @memberid
END





GO
