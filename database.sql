USE [Fingerprintsystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Update_ByIDmember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Update_ByIDmember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_SelectPagingJoin_tbSchooladdress]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_SelectPagingJoin_tbSchooladdress]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_SelectJoin_tbSchooladdress_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_SelectJoin_tbSchooladdress_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMax]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Select_ByIDMax]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Select]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Select]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Roundscan]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Roundscan]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Noteup]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Noteup]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Notedown]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember_Notedown]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Up]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset_Up]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Down]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset_Down]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMemberReset]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Up]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMember_Up]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Down]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByIDMember_Down]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByActivescan]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Update_ByActivescan]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser_BySuccess]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser_BySuccess]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_SelectJoin_tbuser]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Select_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging_ByDatetime]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging_ByDatetime]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Insert_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_Insert_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Delete_ByID]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Result_Delete_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Insert_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Scan_Insert_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Delete_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Delete_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Update_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Address_Update_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Select_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Address_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Insert]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_User_Address_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Update_ByID]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Update_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_School_Address_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select_ByID]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Select_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select_ByDetailaddress]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Select_ByDetailaddress]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Select]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Insert]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Delete]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_School_Address_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_PagingHelper]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Update_Byregister]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Member_Update_Byregister]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Update_ByIsactive]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Member_Update_ByIsactive]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Member_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByID]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByCheckloginscan]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByCheckloginscan]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByChecklogin]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Member_Select_ByChecklogin]
GO
/****** Object:  StoredProcedure [dbo].[sp_Member_Insert]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Member_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember_Roundscan]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Driver_Update_ByIDMember_Roundscan]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Driver_Update_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Driver_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Select_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Driver_Select_ByIDMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Select]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Driver_Select]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Insert_ByMember]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Driver_Insert_ByMember]
GO
/****** Object:  StoredProcedure [dbo].[sp_Driver_Delete]    Script Date: 3/5/2560 0:41:41 ******/
DROP PROCEDURE [dbo].[sp_Driver_Delete]
GO
/****** Object:  Table [dbo].[tb_user_scan_result]    Script Date: 3/5/2560 0:41:41 ******/
DROP TABLE [dbo].[tb_user_scan_result]
GO
/****** Object:  Table [dbo].[tb_user_scan]    Script Date: 3/5/2560 0:41:41 ******/
DROP TABLE [dbo].[tb_user_scan]
GO
/****** Object:  Table [dbo].[tb_user_address]    Script Date: 3/5/2560 0:41:41 ******/
DROP TABLE [dbo].[tb_user_address]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 3/5/2560 0:41:41 ******/
DROP TABLE [dbo].[tb_user]
GO
/****** Object:  Table [dbo].[tb_school_address]    Script Date: 3/5/2560 0:41:41 ******/
DROP TABLE [dbo].[tb_school_address]
GO
/****** Object:  Table [dbo].[tb_member]    Script Date: 3/5/2560 0:41:41 ******/
DROP TABLE [dbo].[tb_member]
GO
/****** Object:  Table [dbo].[tb_driver]    Script Date: 3/5/2560 0:41:41 ******/
DROP TABLE [dbo].[tb_driver]
GO
/****** Object:  Table [dbo].[tb_driver]    Script Date: 3/5/2560 0:41:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_member]    Script Date: 3/5/2560 0:41:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_school_address]    Script Date: 3/5/2560 0:41:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 3/5/2560 0:41:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user_address]    Script Date: 3/5/2560 0:41:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user_scan]    Script Date: 3/5/2560 0:41:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user_scan_result]    Script Date: 3/5/2560 0:41:41 ******/
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

INSERT [dbo].[tb_driver] ([driver_id], [member_id], [id], [fullname], [tel], [email], [status], [LastLoginDate], [roundscan]) VALUES (1, 3, N'3560300551214', N'บุญชู เรียนดี', N'0946294425', N'driver@hotmail.com', NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[tb_driver] OFF
SET IDENTITY_INSERT [dbo].[tb_member] ON 

INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (1, N'admin', N'fc0iUkg331qk3V8HY6MWvQ==', N'Admin', NULL, NULL, CAST(N'2017-05-02T16:36:12.143' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (2, N'user1', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T14:10:22.417' AS DateTime), NULL, CAST(N'2017-05-03T00:34:33.790' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (3, N'driver', N'fc0iUkg331qk3V8HY6MWvQ==', N'Driver', NULL, NULL, CAST(N'2017-05-03T00:26:16.097' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (4, N'user2', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T16:38:15.037' AS DateTime), NULL, CAST(N'2017-05-02T16:38:15.037' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (5, N'user3', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T16:54:43.063' AS DateTime), NULL, CAST(N'2017-05-02T16:54:43.063' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (6, N'user4', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T17:04:40.323' AS DateTime), NULL, CAST(N'2017-05-02T17:04:40.323' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (7, N'user5', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T17:20:48.010' AS DateTime), NULL, CAST(N'2017-05-02T17:20:48.010' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (8, N'user6', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T18:23:43.073' AS DateTime), NULL, CAST(N'2017-05-02T18:27:30.007' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (9, N'user7', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T22:42:46.300' AS DateTime), NULL, CAST(N'2017-05-02T22:42:46.300' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (10, N'user8', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T22:48:42.740' AS DateTime), NULL, CAST(N'2017-05-02T22:48:42.740' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (11, N'user9', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T22:53:34.627' AS DateTime), NULL, CAST(N'2017-05-02T22:53:34.627' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (12, N'user10', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T22:57:10.370' AS DateTime), NULL, CAST(N'2017-05-02T22:57:10.370' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (13, N'user11', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T23:00:02.197' AS DateTime), NULL, CAST(N'2017-05-02T23:00:02.197' AS DateTime), 1)
INSERT [dbo].[tb_member] ([member_id], [username], [password], [createdby], [createddate], [register], [lastlogindate], [is_active]) VALUES (14, N'user12', N'fc0iUkg331qk3V8HY6MWvQ==', N'User', CAST(N'2017-05-02T23:03:31.787' AS DateTime), NULL, CAST(N'2017-05-02T23:03:31.787' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tb_member] OFF
SET IDENTITY_INSERT [dbo].[tb_school_address] ON 

INSERT [dbo].[tb_school_address] ([school_id], [latitude], [longitude], [address], [detailaddress]) VALUES (1, N'16.75977941210306', N'100.2106560711029', N'ถนน เลี่ยงเมืองพิษณุโลก ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'โรงเรียนวัดสะกัดน้ำมัน')
SET IDENTITY_INSERT [dbo].[tb_school_address] OFF
SET IDENTITY_INSERT [dbo].[tb_user] ON 

INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (1, 2, 1, N'56367461', N'อรกวี บรรรเทิง', N'สมศรี บรรเทิง', N'0613466160', N'user1@hotmail.com', N'~/UploadImage/1.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (2, 4, 1, N'56367462', N'อภินารา สุภาพรรณ', N'สมหญิง สุภาพรรณ', N'0811061741', N'user2@hotmail.com', N'~/UploadImage/2.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (3, 5, 1, N'56367463', N'ณัฐกานต์ รื่นรมณ์', N'สุมาลี รื่นรมณ์', N'0884061880', N'user3@hotmail.com', N'~/UploadImage/3.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (4, 6, 1, N'56367464', N'ปุณวีย์ หิรัญลักษณ์', N'บุศรา หิรัญลักษณ์', N'0636541774', N'user4@hotmail.com', N'~/UploadImage/4.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (5, 7, 1, N'56367465', N'ณัฐภูมิ ประกาย', N'ทิพวรรณ ประกาย', N'0843302782', N'user5@hotmail.com', N'~/UploadImage/5.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (6, 8, 1, N'56367466', N'ชณากรณ์ เด่นจันทร์', N'ดาราวดี เด่นจันทร์', N'0869264168', N'user6@hotmail.com', N'~/UploadImage/6.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (7, 9, 1, N'56367467', N'เพียงธัมภา นิพนธ์', N'ทัศนา นิพนธ์', N'0880017280', N'user7@hotmail.com', N'~/UploadImage/7.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (8, 10, 1, N'56367468', N'วีรวัฒน์ แสนยาดี', N'เชษฐา แสนยาดี', N'0624321679', N'user8@hotmail.com', N'~/UploadImage/8.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (9, 11, 1, N'56367469', N'กุลพัทธ์ เขมทัต', N'บุลกิจ เขมทัต', N'0811134480', N'user9@hotmail.com', N'~/UploadImage/9.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (10, 12, 1, N'56367470', N'ศิรากร สุขสวัสดิการณ์', N'ปิติกร สุขสวัสดิการณ์', N'0809693289', N'user10@hotmail.com', N'~/UploadImage/10.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (11, 13, 1, N'56367471', N'ญาณิน พิเศษแก้ว', N'ภัคภรณ์ พิเศษแก้ว', N'0634407889', N'user11@hotmail.com', N'~/UploadImage/11.jpg', N'123456')
INSERT [dbo].[tb_user] ([user_id], [member_id], [school_id], [id], [fullname], [fullnameparent], [tel], [email], [photo], [password_Decrypt]) VALUES (12, 14, 1, N'56367472', N'อรยา เพลงพิณ', N'ลภัส เพลงพิณ', N'0856394456', N'user12@hotmail.com', N'~/UploadImage/12.jpg', N'123456')
SET IDENTITY_INSERT [dbo].[tb_user] OFF
SET IDENTITY_INSERT [dbo].[tb_user_address] ON 

INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (1, 2, N'16.751891314822824', N'100.19868618629152', N'ซอย หมู่บ้านแสงพรหมแลนด์โครงการ 2 ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไท')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (2, 4, N'16.74264491862897', N'100.1907039322632', N'Simon the dorms Ing Nam Tha Pho Thong ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (3, 5, N'16.75867171993139', N'100.19083267829592', N'117, ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'117, ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (4, 6, N'16.754069289465686', N'100.19207722327883', N'390/9 หมู่7 ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'390/9 หมู่7 ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (5, 7, N'16.75277483584266', N'100.19845015189821', N'110 ซอย หมู่บ้านแกรนด์โอมเคียงมอ ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'110 ซอย หมู่บ้านแกรนด์โอมเคียงมอ ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (6, 8, N'16.742809302925764', N'100.20405060432131', N'ซอย หมู่บ้านวรรณา ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'ซอย หมู่บ้านวรรณา ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (7, 9, N'16.749672220688552', N'100.20671135566408', N'ซอย หมู่บ้านเพชรไพลิน ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'ซอย หมู่บ้านเพชรไพลิน ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (8, 10, N'16.749857146187754', N'100.20132547996218', N'ซอย หมู่บ้านแสงพรหมแลนด์โครงการ 2 ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'ซอย หมู่บ้านแสงพรหมแลนด์โครงการ 2 ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (9, 11, N'16.757223199132454', N'100.19510275504763', N'Unnamed Road, ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'Unnamed Road, ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (10, 12, N'16.751110525391923', N'100.21088487289126', N'Unnamed Road, ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'Unnamed Road, ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (11, 13, N'16.748696222022563', N'100.20253247401888', N'ซอย หมู่บ้านแฮปปี้โฮม ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'ซอย หมู่บ้านแฮปปี้โฮม ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
INSERT [dbo].[tb_user_address] ([address_id], [member_id], [latitude], [longitude], [address], [detailaddress]) VALUES (12, 14, N'16.750365690384335', N'100.21304673335726', N'ซอย พวงทอง ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย', N'ซอย พวงทอง ตำบล ท่าโพธิ์ อำเภอเมืองพิษณุโลก พิษณุโลก 65000 ประเทศไทย')
SET IDENTITY_INSERT [dbo].[tb_user_address] OFF
SET IDENTITY_INSERT [dbo].[tb_user_scan] ON 

INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (1, 2, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 16:34:16')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (2, 4, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 16:48:32')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (3, 5, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 16:55:36')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (4, 6, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 17:5:25')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (5, 7, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 17:27:58')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (6, 8, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 18:25:54')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (7, 9, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 22:44:8')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (8, 10, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 22:50:41')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (9, 11, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 22:55:3')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (10, 12, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 22:58:13')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (11, 13, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 23:1:36')
INSERT [dbo].[tb_user_scan] ([scan_id], [member_id], [datetime_up], [datetime_down], [fullname_driver], [roundscan], [noteup], [notedown], [activescan], [checkscan], [activedate]) VALUES (12, 14, N'ยังไม่ได้สแกน', N'ยังไม่ได้สแกน', N'บุญชู เรียนดี', 1, 0, 0, 1, 1, N'02-05-2017 เวลา 23:4:29')
SET IDENTITY_INSERT [dbo].[tb_user_scan] OFF
/****** Object:  StoredProcedure [dbo].[sp_Driver_Delete]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Driver_Insert_ByMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Driver_Select]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Driver_Select_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Driver_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Driver_Update_ByIDMember_Roundscan]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Insert]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByChecklogin]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByCheckloginscan]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Select_ByID]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Update_ByIsactive]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Member_Update_Byregister]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Delete]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Insert]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select_ByDetailaddress]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Select_ByID]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_School_Address_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_School_Address_Update_ByID]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Insert]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Select_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Address_Update_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Delete_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Insert_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Delete_ByID]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_Insert_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging_ByDatetime]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Result_SelectPaging_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Select_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectJoin_tbuser_BySuccess]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByActivescan]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Down]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMember_Up]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Down]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByIDMemberReset_Up]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Notedown]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Noteup]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Scan_Update_ByMember_Roundscan]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Select]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMax]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Select_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_SelectJoin_tbSchooladdress_ByIDMember]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_SelectPaging]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_SelectPagingJoin_tbSchooladdress]    Script Date: 3/5/2560 0:41:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_Update_ByIDmember]    Script Date: 3/5/2560 0:41:41 ******/
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
