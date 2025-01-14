create database MicrosoftTrafficMgmt
GO
USE [MicrosoftTrafficMgmt]
GO
/****** Object:  Table [dbo].[CameraDetails]    Script Date: 27-06-2022 16:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CameraDetails](
	[CameraID] [int] IDENTITY(1,1) NOT NULL,
	[CameraIP] [varchar](30) NULL,
	[latitude] [numeric](7, 4) NOT NULL,
	[longitude] [numeric](7, 4) NOT NULL,
	[Created_date] [date] NOT NULL,
	[updated_date] [date] NOT NULL,
	[Remark] [varchar](30) NULL,
	[created_by] [int] NOT NULL,
	[updated_by] [int] NOT NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Place] [nvarchar](max) NULL,
	[IP_Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_CameraDetails] PRIMARY KEY CLUSTERED 
(
	[CameraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GROUP_AUTHORIZATION]    Script Date: 27-06-2022 16:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GROUP_AUTHORIZATION](
	[GROUP_ID] [int] NOT NULL,
	[MENU_ID] [int] NOT NULL,
	[ACCESS_RIGHT] [bit] NULL,
	[ADD_RIGHT] [bit] NULL,
	[EDIT_RIGHT] [bit] NULL,
	[DELETE_RIGHT] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GROUPS]    Script Date: 27-06-2022 16:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GROUPS](
	[GROUP_ID] [int] IDENTITY(1,1) NOT NULL,
	[GROUP_NAME] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 27-06-2022 16:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[MENU_ID] [int] NOT NULL,
	[PARENT_ID] [int] NULL,
	[IS_BASE] [bit] NULL,
	[IS_PARENT] [bit] NULL,
	[IS_CHILD] [bit] NULL,
	[IS_FUNCTION] [bit] NULL,
	[MENU_INDEX] [int] NULL,
	[MENU_TEXT] [varchar](50) NULL,
	[MENU_URL] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 27-06-2022 16:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](6) NOT NULL,
	[userPassword] [varchar](6) NOT NULL,
	[userEmail] [varchar](6) NOT NULL,
	[createdOn] [varchar](24) NOT NULL,
	[isDeleted] [varchar](4) NOT NULL,
 CONSTRAINT [PK__Person__3213E83F4770DE0D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 27-06-2022 16:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](6) NOT NULL,
	[userPassword] [varchar](6) NOT NULL,
	[userEmail] [varchar](6) NOT NULL,
	[createdOn] [varchar](24) NOT NULL,
	[isDeleted] [varchar](4) NOT NULL,
 CONSTRAINT [PK__Persons__3213E83F4B4A22AB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USCity]    Script Date: 27-06-2022 16:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USCity](
	[ID] [int] NOT NULL,
	[STATE_CODE] [varchar](2) NOT NULL,
	[STATE_NAME] [varchar](20) NOT NULL,
	[CITY] [varchar](27) NOT NULL,
	[COUNTY] [varchar](22) NULL,
	[LATITUDE] [numeric](10, 7) NOT NULL,
	[LONGITUDE] [numeric](12, 7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_CLIENT]    Script Date: 27-06-2022 16:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_CLIENT](
	[USER_ID] [int] NOT NULL,
	[INVESTOR_ID] [nvarchar](50) NOT NULL,
	[PBI_URL] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 27-06-2022 16:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[USER_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMAIL_ID] [varchar](100) NULL,
	[USER_NAME] [varchar](200) NULL,
	[GROUP_ID] [int] NULL,
	[IS_ACTIVE] [bit] NULL,
	[USER_ORGANIZATION] [varchar](100) NULL,
	[USER_DESIGNATION] [varchar](20) NULL,
	[USER_DEPARTMENT] [varchar](20) NULL,
	[PHONE_NUMBER] [varchar](20) NULL,
	[MOBILE_NUMBER] [varchar](20) NULL,
	[USER_ADDRESS] [varchar](200) NULL,
	[IS_INTERNAL] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoDetails]    Script Date: 27-06-2022 16:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoDetails](
	[VideoID] [int] IDENTITY(1,1) NOT NULL,
	[CameraIp] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[VideoPath] [nvarchar](max) NOT NULL,
	[SasURL] [nvarchar](max) NULL,
	[ProcessSasURL] [nvarchar](max) NULL,
	[ProcessSasURLUpdateTime] [datetime2](7) NULL,
	[Created_date] [date] NULL,
	[updated_date] [date] NULL,
	[Remark] [varchar](30) NULL,
	[created_by] [int] NOT NULL,
	[updated_by] [int] NULL,
	[VideoImage] [nvarchar](50) NULL,
	[Analyse] [int] NULL,
	[isDeleted] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
