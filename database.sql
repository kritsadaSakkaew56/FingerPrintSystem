USE [Fingerprintscansystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Update_ByIDmember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Update_ByIDmember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_SelectPagingJoin_tbSchooladdress]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_SelectPagingJoin_tbSchooladdress]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_SelectPaging]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_SelectJoin_tbSchooladdress_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_SelectJoin_tbSchooladdress_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMax]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Select_ByIDMax]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Roundscan]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Roundscan]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Noteup]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Noteup]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Notedown]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Notedown]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Up]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset_Up]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Down]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset_Down]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Up]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMember_Up]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Down]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMember_Down]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByFingerprintid_Up]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByFingerprintid_Up]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByFingerprintid_Down]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByFingerprintid_Down]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByActivescan]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByActivescan]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectPaging]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser_BySuccess]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser_BySuccess]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Select_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging_ByDatetime]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging_ByDatetime]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Insert_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_Insert_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Delete_ByID]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_Delete_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Insert_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Insert_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Delete_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Delete_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Update_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Address_Update_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Select_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Address_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Insert]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_User_Address_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Update_ByID]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Update_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_SelectPaging]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_School_Address_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select_ByID]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Select_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select_ByDetailaddress]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Select_ByDetailaddress]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Select]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Insert]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Delete]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_PagingHelper]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Update_Byregister]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Member_Update_Byregister]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Update_ByIsactive]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Member_Update_ByIsactive]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Update]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Member_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_SelectPaging]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Member_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByID]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByCheckloginscan]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByCheckloginscan]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByChecklogin]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByChecklogin]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Insert]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Member_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember_Roundscan]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Driver_Update_ByIDMember_Roundscan]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Driver_Update_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_SelectPaging]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Driver_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Select_ByIDMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Driver_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Select]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Driver_Select]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Insert_ByMember]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Driver_Insert_ByMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Delete]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[sp_Driver_Delete]
GO
/****** Object:  StoredProcedure [dbo].[GetCustomers_Pager]    Script Date: 25/5/2560 22:49:26 ******/
DROP PROCEDURE [dbo].[GetCustomers_Pager]
GO
/****** Object:  Table [dbo].[tb_user_scan_result]    Script Date: 25/5/2560 22:49:26 ******/
DROP TABLE [dbo].[tb_user_scan_result]
GO
/****** Object:  Table [dbo].[tb_user_scan]    Script Date: 25/5/2560 22:49:26 ******/
DROP TABLE [dbo].[tb_user_scan]
GO
/****** Object:  Table [dbo].[tb_user_address]    Script Date: 25/5/2560 22:49:26 ******/
DROP TABLE [dbo].[tb_user_address]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 25/5/2560 22:49:26 ******/
DROP TABLE [dbo].[tb_user]
GO
/****** Object:  Table [dbo].[tb_school_address]    Script Date: 25/5/2560 22:49:26 ******/
DROP TABLE [dbo].[tb_school_address]
GO
/****** Object:  Table [dbo].[tb_member]    Script Date: 25/5/2560 22:49:26 ******/
DROP TABLE [dbo].[tb_member]
GO
/****** Object:  Table [dbo].[tb_driver]    Script Date: 25/5/2560 22:49:26 ******/
DROP TABLE [dbo].[tb_driver]
GO
/****** Object:  Table [dbo].[tb_driver]    Script Date: 25/5/2560 22:49:26 ******/
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
	[email] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[LastLoginDate] [datetime] NULL,
	[roundscan] [bigint] NULL,
 CONSTRAINT [PK_tb_driver] PRIMARY KEY CLUSTERED 
(
	[driver_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tb_member]    Script Date: 25/5/2560 22:49:26 ******/
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
	[register] [bigint] NULL,
	[lastlogindate] [datetime] NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK_tb_member] PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tb_school_address]    Script Date: 25/5/2560 22:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_school_address](
	[school_id] [bigint] IDENTITY(1,1) NOT NULL,
	[latitude] [varchar](30) NULL,
	[longitude] [varchar](30) NULL,
	[address] [varchar](300) NULL,
	[detailaddress] [varchar](200) NULL,
 CONSTRAINT [PK_tb_school_address] PRIMARY KEY CLUSTERED 
(
	[school_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 25/5/2560 22:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[member_id] [bigint] NOT NULL,
	[school_id] [bigint] NULL,
	[id] [varchar](20) NULL,
	[fullname] [varchar](50) NULL,
	[fullnameparent] [varchar](50) NULL,
	[tel] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[photo] [varchar](50) NULL,
	[password_Decrypt] [varchar](300) NULL,
 CONSTRAINT [PK_tb_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tb_user_address]    Script Date: 25/5/2560 22:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_address](
	[address_id] [bigint] IDENTITY(1,1) NOT NULL,
	[member_id] [bigint] NULL,
	[latitude] [varchar](30) NULL,
	[longitude] [varchar](30) NULL,
	[address] [varchar](300) NULL,
	[detailaddress] [varchar](200) NULL,
 CONSTRAINT [PK_tb_user_address_1] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tb_user_scan]    Script Date: 25/5/2560 22:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_scan](
	[scan_id] [bigint] IDENTITY(1,1) NOT NULL,
	[member_id] [bigint] NULL,
	[datetime_up] [varchar](50) NULL,
	[datetime_down] [varchar](50) NULL,
	[fullname_driver] [varchar](50) NULL,
	[roundscan] [bigint] NULL,
	[noteup] [bigint] NULL,
	[notedown] [bigint] NULL,
	[activescan] [bit] NULL,
	[checkscan] [bigint] NULL,
	[activedate] [varchar](50) NULL,
 CONSTRAINT [PK_tb_user_scan] PRIMARY KEY CLUSTERED 
(
	[scan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tb_user_scan_result]    Script Date: 25/5/2560 22:49:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET IDENTITY_INSERT [dbo].[tb_driver] ON 

INSERT [dbo].[tb_driver] ([driver_id], [member_id], [id], [fullname], [tel], [email], [status], [LastLoginDate], [roundscan]) VALUES (1, 3, N'3560300551214', N'บุญชู เรียนดี', N'0946294425', N'driver1@hotmail.com', NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[tb_driver] OFF
SET IDENTITY_INSERT [dbo].[tb_member] ON 

INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (1, N'admin', N'fc0iUkg331qk3V8HY6MWvQ==', N'Admin', NULL, NULL, CAST(N'2017-05-24T05:20:49.940' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (3, N'driver1', N'fc0iUkg331qk3V8HY6MWvQ==', N'Driver', NULL, NULL, CAST(N'2017-05-24T05:09:54.570' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (5, N'user2', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T16:54:43.063' AS DateTime), 2, CAST(N'2017-05-10T11:57:39.553' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (16, N'user1', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-07T11:34:30.210' AS DateTime), 3, CAST(N'2017-05-24T05:42:05.590' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (17, N'user3', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-07T18:29:56.677' AS DateTime), 2, CAST(N'2017-05-23T16:52:59.080' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (24, N'raspi3', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-24T03:34:22.387' AS DateTime), 2, CAST(N'2017-05-24T03:34:22.387' AS DateTime), 0)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (25, N'peerayut', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-24T04:10:08.630' AS DateTime), 2, CAST(N'2017-05-24T04:10:08.630' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[tb_member] OFF
SET IDENTITY_INSERT [dbo].[tb_school_address] ON 

INSERT [dbo].[tb_school_address] ([school_id], [latitude], [longitude], [address], [detailaddress]) VALUES (1, N'16.7587637', N'100.21074339999996', N'Tha Pho, Mueang Phitsanulok District, Phitsanulok 65000, Thailand', N'โรงเรียนวัดสะกัดน้ำมัน')
SET IDENTITY_INSERT [dbo].[tb_school_address] OFF
SET IDENTITY_INSERT [dbo].[tb_user] ON 

INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (3, 5, 1, N'56367463', N'ณัฐกานต์ รื่นรมณ์', N'สุมาลี รื่นรมณ์', N'0884061880', N'user3@hotmail.com', N'~/UploadImage/3.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (14, 16, 1, N'56367461', N'อรกวี บรรเทิง', N'สมศรี บรรเทิง', N'0613466160', N'user1@hotmail.com', N'~/UploadImage/14.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (22, 17, 1, N'56367461', N'ญาณิน พิเศษแก้ว', N'ภัคภรณ์ พิเศษแก้ว', N'0613466160', N'user1@hotmail.com', N'~/UploadImage/14.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (23, 24, 1, N'56363888', N'พีระยุทธ ศรีวิเศษ', N'จูน ศรีวิเศษ', N'0933032538', N'nakusaki@gmail.com', N'~/UploadImage/23.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (24, 25, 1, N'56367463', N'ณัฐกานต์ รื่นรมณ์', N'สุมาลี รื่นรมณ์', N'0884061880', N'user3@hotmail.com', N'~/UploadImage/24.jpg', N'123456')
SET IDENTITY_INSERT [dbo].[tb_user] OFF
SET IDENTITY_INSERT [dbo].[tb_user_address] ON 

INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (3, 5, N'16.75867171993139', N'100.19083267829592', N'117, ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'117, ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (14, 16, N'16.750365690384335', N'100.21304673335726', N'ซอย พวงทอง ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'ซอย พวงทอง ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (21, 17, N'16.750365690384335', N'100.21304673335726', N'ซอย พวงทอง ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'ซอย พวงทอง ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (22, 24, N'16.74510039429282', N'100.20193702361757', N'ซอย หมู่บ้านวรรณา ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'134/1 Moo 9 Tambon Tha Pho, Muang Phitsanulok 65000 ไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (23, 25, N'16.74524422870576', N'100.20173317573244', N'ซอย หมู่บ้านวรรณา ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'134/1 Tambon Tha Pho, Muang Phitsanulok 65000 ไทย')
SET IDENTITY_INSERT [dbo].[tb_user_address] OFF
SET IDENTITY_INSERT [dbo].[tb_user_scan] ON 

INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (3, 5, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'May  8 2017  1:31PM')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (14, 16, N'ยังไม่ได้สแกน', N'12', N'บุญชู เรียนดี', 1, 1, 1, 1, 1, N'May 24 2017  5:30AM')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (21, 17, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[tb_user_scan] OFF
SET IDENTITY_INSERT [dbo].[tb_user_scan_result] ON 

INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (10, 16, N'07-05-2017 เวลา 6:58:13', N'07-05-2017 เวลา 8:00:13', N'บุญชู เรียนดี', 1, NULL, NULL, N'07-05-2017')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (20, 16, N'07-05-2017 เวลา 16:01:25', N'07-05-2017 เวลา 17:00:00', N'บุญชู เรียนดี', 2, NULL, NULL, N'07-05-2017')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (30, 16, N'08-05-2017 เวลา 7:02:13', N'08-05-2017 เวลา 8:03:13', N'บุญชู เรียนดี', 1, NULL, NULL, N'08-05-2017')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (40, 16, N'08-05-2017 เวลา 16:02:13', N'08-05-2017 เวลา 16:45:13', N'บุญชู เรียนดี', 2, NULL, NULL, N'08-05-2017')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (41, 5, N'08-05-2017 เวลา 6:16:41', N'08-05-2017 เวลา 7:10:41', N'บุญชู เรียนดี', 1, NULL, NULL, N'08-05-2017')
INSERT [dbo].[tb_user_scan_result] ([user_result_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [datetime]) VALUES (46, 5, N'08-05-2017 เวลา 6:16:41', N'08-05-2017 เวลา 7:10:41', N'บุญชู เรียนดี', 2, NULL, NULL, N'08-05-2017')
SET IDENTITY_INSERT [dbo].[tb_user_scan_result] OFF
/****** Object:  StoredProcedure [dbo].[GetCustomers_Pager]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Driver_Delete]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Driver_Delete]
@memberdriverid bigint

AS
BEGIN

	SET NOCOUNT ON;
	DELETE FROM [dbo].[tb_driver]
    WHERE [member_id] = @memberdriverid

	DELETE FROM [dbo].[tb_member]
      WHERE [member_id] = @memberdriverid
END


GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Insert_ByMember]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Driver_Insert_ByMember]

@memberdriverid bigint,
@id varchar(50),
@fullname varchar(50),
@tel varchar(50),
@email varchar(50)

AS
BEGIN

   SET NOCOUNT ON;
    IF NOT EXISTS(SELECT (member_id) FROM [dbo].tb_driver WHERE member_id = @memberdriverid )
    BEGIN
			INSERT INTO [dbo].[tb_driver]
				   ([member_id]
				   ,[id]
				   ,[fullname]
				   ,[tel]
				   ,[email]
				   )
			 VALUES
				   (
					@memberdriverid
				   ,@id
				   ,@fullname
				   ,@tel 
				   ,@email
					)
				   SELECT MAX(member_id) FROM [dbo].[tb_driver]  -- Select user_id ไปใช้ต่อ
	END
	ELSE
	BEGIN
		SELECT -2
	END
END


GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Select]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Driver_Select]


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
  FROM [dbo].[tb_driver]
END


GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Select_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
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
	  ,[email]
      ,[status]
      ,[LastLoginDate]
	  ,[roundscan]
  FROM [dbo].[tb_driver]
  WHERE [member_id] = @memberdriverid

END


GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_SelectPaging]    Script Date: 25/5/2560 22:49:27 ******/
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
					  ,u.[email]
					  ,u.[status]
					  ,u.[LastLoginDate]
					  ,u.[roundscan]
				  FROM [dbo].[tb_driver] u
				  LEFT JOIN [dbo].[tb_member] ug ON ug.member_id = u.member_id ' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn


END


GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Driver_Update_ByIDMember]

@memberdriverid bigint,
@id varchar(50),
@fullname varchar(50),
@tel varchar(50),
@email varchar(50)

AS
BEGIN

   SET NOCOUNT ON;
   UPDATE [dbo].[tb_driver]
   SET [id] = @id
      ,[fullname] = @fullname
      ,[tel] = @tel
      ,[email] = @email
 WHERE [member_id] = @memberdriverid

END


GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember_Roundscan]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Insert]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Member_Insert]

@username varchar(50),
@password varchar(300),
@createdby varchar(50),
@register bigint,
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
		   ,[register]
           ,[lastlogindate]
		   ,[is_active])
    VALUES
           (
		   @username,
		   @password,
		   @createdby,
		   GETDATE(),
		   @register,
		   GETDATE(),
		   @isactive
		   )
		   --SELECT SCOPE_IDENTITY() -- ดึง  member_id  ขึ้นมา ตอน insert ลงไป
		   SELECT MAX(member_id) FROM [dbo].[tb_member]
	END
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByChecklogin]    Script Date: 25/5/2560 22:49:27 ******/
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
		IF(SELECT [is_active] FROM [dbo].[tb_member] WHERE [member_id] =@memberid) = 0  -- is_avtive = true 															
		BEGIN
			SELECT -2 -- ทำการสมัครไม่สมบูรณ์ สมัครใหม่
		END
		ELSE IF(SELECT [activescan] FROM [dbo].[tb_user_scan] WHERE [member_id] =@memberid)=0
		BEGIN
			SELECT -3 -- ยังไม่ได้ทำการลงทะเบียนสแกนลายนิ้วมือ
		END
		ELSE
		BEGIN
			UPDATE [dbo].[tb_member]
			   SET 
			   [lastlogindate] = GETDATE()
			WHERE [member_id]=@memberid
			SELECT @memberid [member_id] -- user_id ที่ update ลงไป
			
		END
	END
	ELSE
	BEGIN
		SELECT -1  -- Username และ Password ไม่ถุกต้อง
	END
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByCheckloginscan]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByID]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_SelectPaging]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Update]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Update_ByIsactive]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Member_Update_ByIsactive] 
@memberuserid bigint,
@isactive bit 
AS
BEGIN

	UPDATE [dbo].[tb_member]
    SET [is_active] = @isactive
    WHERE [member_id] = @memberuserid
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Update_Byregister]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Member_Update_Byregister] 
@memberuserid bigint,
@register bigint 
AS
BEGIN

	UPDATE [dbo].[tb_member]
    SET [register] = @register
    WHERE [member_id] = @memberuserid
END






GO
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Delete]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_School_Address_Delete]

@schoolid bigint
AS
BEGIN
	
	SET NOCOUNT ON;
	DELETE FROM [dbo].[tb_school_address]
    WHERE [school_id] = @schoolid

	
END






GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Insert]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_School_Address_Insert]

@latitude varchar(20),
@longitude varchar(20),
@address varchar(300),
@detailaddress varchar(200)

AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [dbo].[tb_school_address]
           ([latitude]
           ,[longitude]
           ,[address]
           ,[detailaddress])
     VALUES
           (@latitude
           ,@longitude
           ,@address
           ,@detailaddress)
			SELECT @@IDENTITY -- การรับค่า Indentity

	
END






GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_School_Address_Select]


AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT [school_id]
      ,[latitude]
      ,[longitude]
      ,[address]
      ,[detailaddress]
  FROM [dbo].[tb_school_address]

	
END






GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select_ByDetailaddress]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_School_Address_Select_ByDetailaddress]

@detailaddress varchar(50)

AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT [school_id]
      ,[latitude]
      ,[longitude]
      ,[address]
      ,[detailaddress]
  FROM [dbo].[tb_school_address]
  WHERE [detailaddress] = @detailaddress

	
END






GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select_ByID]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_School_Address_Select_ByID]

@schoolid bigint

AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT [school_id]
      ,[latitude]
      ,[longitude]
      ,[address]
      ,[detailaddress]
  FROM [dbo].[tb_school_address]
  WHERE [school_id] = @schoolid

	
END






GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_SelectPaging]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_School_Address_SelectPaging]
	
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

	SET @CountColumn = ' [school_id] '
	
	IF @SortField = ''
		SET @SortField = ' [detailaddress]' 
	ELSE
		SET @SortField = @SortField + @SortOrder

    SET @sql = 'SELECT [school_id]
				  ,[latitude]
				  ,[longitude]
				  ,[address]
				  ,[detailaddress]
			  FROM [dbo].[tb_school_address]' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn

	
END






GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Update_ByID]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_School_Address_Update_ByID]

@schoolid bigint,
@latitude varchar(20),
@longitude varchar(20),
@address varchar(300),
@detailaddress varchar(200)
AS
BEGIN
	
   SET NOCOUNT ON;
   UPDATE [dbo].[tb_school_address]
   SET [latitude] = @latitude
      ,[longitude] = @longitude
      ,[address] = @address
      ,[detailaddress] = @detailaddress
  WHERE [school_id] = @schoolid
	
END






GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Insert]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Address_Insert]
@memberid varchar(10),
@latitude varchar(20),
@longitude varchar(20),
@address varchar(300),
@detailaddress varchar(200)

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
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Select_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Update_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Address_Update_ByIDMember]

@memberid bigint,
@latitude varchar(20),
@longitude varchar(20),
@address varchar(300),
@detailaddress varchar(200)
AS
BEGIN
	
   SET NOCOUNT ON;
   UPDATE [dbo].[tb_user_address]
   SET [latitude] = @latitude
      ,[longitude] = @longitude
      ,[address] = @address
      ,[detailaddress] = @detailaddress
  WHERE [member_id] = @memberid

END





GO
/****** Object:  StoredProcedure [dbo].[sp_User_Delete_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
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
	
	DELETE FROM [dbo].[tb_user_scan_result]
    WHERE [member_id] = @memberid 	 
END






GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 3/20/2017 2:16:10 AM ******/

CREATE PROCEDURE [dbo].[sp_User_Insert]


@memberid bigint,
@schoolid bigint,
@id varchar(20),
@fullname varchar(50),
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
			   ,[school_id]
			   ,[id]
			   ,[fullname]
			   ,[fullnameparent]
			   ,[tel]
			   ,[email]
			   ,[photo]
			   ,[password_Decrypt])
		VALUES
			   (
			   @memberid,
			   @schoolid,
			   @id,
			   @fullname,
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Insert_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Insert_ByIDMember]
@memberuserid bigint,
@datetimeup varchar(50),
@datetimedown varchar(50),
@roundscan bigint,
@noteup bigint,
@notedown bigint,
@datetime varchar(50),
@activescan bit,
@checkscan bigint,
@fullnamedriver varchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	IF(SELECT COUNT(member_id) FROM [dbo].[tb_user_scan] WHERE [member_id]= @memberuserid)= 0
	BEGIN
	 INSERT INTO [dbo].[tb_user_scan]
           ([member_id]
           ,[datetime_up]
           ,[datetime_down]
		   ,[roundscan]
		   ,[noteup]
		   ,[notedown]
		   ,[activedate]
		   ,[activescan]
		   ,[checkscan]
		   ,[fullname_driver])
     VALUES
           (@memberuserid
           ,@datetimeup
           ,@datetimedown
		   ,@roundscan
		   ,@noteup
		   ,@notedown
		   ,@datetime
		   ,@activescan
		   ,@checkscan
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Delete_ByID]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Insert_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging_ByDatetime]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging_ByDatetime]

@memberid varchar(5),
@datetime varchar(50),
@roundscan  varchar(5),


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

	IF ISNULL(@memberid,'') <> ''
		SET @RowFilter = @RowFilter +' AND u.[member_id] = ' +@memberid +''
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Select_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
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
      ,[datetime_up]
      ,[datetime_down]
	  ,[noteup]
	  ,[notedown]
	  ,[roundscan]
	  ,[activescan]
	  ,[checkscan]
      ,[activedate]
	   FROM [dbo].[tb_user_scan]
	   WHERE [member_id] = @memberuserid
	END
	
END



GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]

@fullnamedriver varchar(50),
@activescan bit


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
			,ug.[activescan]
	FROM [dbo].[tb_user] u 
	LEFT JOIN [dbo].[tb_user_scan] ug ON ug.member_id = u.member_id
	WHERE ug.[fullname_driver] = @fullnamedriver AND ug.[activescan] = @activescan


END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser_BySuccess]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser_BySuccess]

@fullnamedriver varchar(50),
@activescan bit,
@roundscan bigint

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
			,ug.[activescan]
	FROM [dbo].[tb_user] u 
	LEFT JOIN [dbo].[tb_user_scan] ug ON ug.member_id = u.member_id
	WHERE ug.[fullname_driver] = @fullnamedriver AND ug.[activescan] = @activescan AND [roundscan] = @roundscan


END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectPaging]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByActivescan]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByActivescan] 

@memberuserid bigint,
@activescan bit

AS
BEGIN
	

	   SET NOCOUNT ON;
	   UPDATE [dbo].[tb_user_scan]
	   SET [activescan] = @activescan
	 WHERE [member_id] = @memberuserid

END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByFingerprintid_Down]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByFingerprintid_Down] 

@fingerprintid varchar(200),
@datetimedown varchar(50)

AS
BEGIN
	

	   SET NOCOUNT ON;
	   UPDATE [dbo].[tb_user_scan]
	   SET[datetime_down] = @datetimedown
		  ,[activedate] = GETDATE()
	 WHERE [fingerprint_id] = @fingerprintid

END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByFingerprintid_Up]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByFingerprintid_Up] 

@fingerprintid varchar(200),
@datetimeup varchar(50)

AS
BEGIN
	

	   SET NOCOUNT ON;
	   UPDATE [dbo].[tb_user_scan]
	   SET [datetime_up] = @datetimeup
		  ,[activedate] = GETDATE()
	 WHERE [fingerprint_id] = @fingerprintid

END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Down]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Up]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset] 

@memberuserid bigint,
@datetimeup varchar(50),
@datetimedown varchar(50)

AS
BEGIN
	

	   SET NOCOUNT ON;
	  UPDATE [dbo].[tb_user_scan]
		 SET  [datetime_up] = @datetimeup
			 ,[datetime_down] = @datetimedown
		 WHERE [member_id] = @memberuserid

END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Down]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Up]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_Scan_Update_ByMember] 

@memberuserid bigint,
@datetimeup varchar(50),
@datetimedown varchar(50),
@fullnamedriver varchar(50),
@activescan bit,
@checkscan bigint, 
@activedate varchar(50)
AS
BEGIN
	

	   SET NOCOUNT ON;
	   UPDATE [dbo].[tb_user_scan]
		SET  [datetime_up] = @datetimeup
			 ,[datetime_down] = @datetimedown
			 ,[fullname_driver] = @fullnamedriver
			 ,[activescan] = @activescan
			 ,[checkscan] = @checkscan
			 ,[activedate] = @activedate
		 WHERE [member_id] = @memberuserid

END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Notedown]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Noteup]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Roundscan]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMax]    Script Date: 25/5/2560 22:49:27 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
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
      ,[fullnameparent]
      ,[tel]
      ,[email]
      ,[photo]
	FROM [dbo].[tb_user]
	WHERE member_id=@memberid

	
  
END






GO
/****** Object:  StoredProcedure [dbo].[sp_User_SelectJoin_tbSchooladdress_ByIDMember]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_SelectJoin_tbSchooladdress_ByIDMember]

@memberuserid bigint

AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT	 u.[user_id]
			,u.[member_id]
			,u.[school_id] 
			,u.[id]
			,ug.[detailaddress]
			,u.[fullname]
			,u.[fullnameparent]
			,u.[tel]
			,u.[email]
			,u.[photo]

	FROM [dbo].[tb_user] u 
	LEFT JOIN [dbo].[tb_school_address] ug ON ug.school_id = u.school_id
	WHERE u.[member_id] = @memberuserid


END


GO
/****** Object:  StoredProcedure [dbo].[sp_User_SelectPaging]    Script Date: 25/5/2560 22:49:27 ******/
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

    SET @sql = 'SELECT	 u.[user_id]
			,b.[username]
			,b.[is_active]
			,c.[activescan]
			,c.[checkscan]
			,u.[member_id]
			,u.[school_id] 
			,u.[id]
			,ug.[detailaddress]
			,u.[fullname]
			,u.[fullnameparent]
			,u.[tel]
			,u.[email]
			,u.[photo]
			FROM [dbo].[tb_user] u 
			LEFT JOIN [dbo].[tb_school_address] ug ON ug.school_id = u.school_id 
			LEFT JOIN [dbo].[tb_member] b ON b.member_id = u.member_id
			LEFT JOIN [dbo].[tb_user_scan] c ON c.member_id = u.member_id' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn

	
			

END






GO
/****** Object:  StoredProcedure [dbo].[sp_User_SelectPagingJoin_tbSchooladdress]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 3/20/2017 2:16:10 AM ******/

CREATE PROCEDURE [dbo].[sp_User_SelectPagingJoin_tbSchooladdress]

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

    SET @sql = 'SELECT u.[user_id]
				  ,u.[member_id]
				  ,u.[id]
				  ,u.[school_id]
				  ,ug.[detailaddress]
				  ,u.[fullname]
				  ,u.[fullnameparent]
				  ,u.[tel]
				  ,u.[email]
			  FROM [dbo].[tb_user] u
			  LEFT JOIN [dbo].[tb_school_address] ug ON ug.school_id = u.school_id' + @RowFilter
     EXEC dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn

	
			

END






GO
/****** Object:  StoredProcedure [dbo].[sp_User_Update_ByIDmember]    Script Date: 25/5/2560 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 3/20/2017 2:16:10 AM ******/

CREATE PROCEDURE [dbo].[sp_User_Update_ByIDmember]


@memberid bigint,
@id varchar(20),
@schoolid bigint,
@fullname varchar(50),
@fullnameparent varchar(50),
@tel varchar(20),
@email varchar(50)


AS
BEGIN

   UPDATE [dbo].[tb_user]
   SET [school_id] = @schoolid
      ,[id] = @id
      ,[fullname] = @fullname
      ,[fullnameparent] = @fullnameparent
      ,[tel] = @tel
      ,[email] = @email
	WHERE [member_id] = @memberid
END






GO
