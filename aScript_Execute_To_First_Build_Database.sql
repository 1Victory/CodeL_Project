USE [master]
GO
/****** Object:  Database [EntityTest]    Script Date: 3/23/2016 11:28:55 PM ******/
CREATE DATABASE [EntityTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EntityTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EntityTest.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EntityTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EntityTest_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EntityTest] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EntityTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EntityTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EntityTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EntityTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EntityTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EntityTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [EntityTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EntityTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EntityTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EntityTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EntityTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EntityTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EntityTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EntityTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EntityTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EntityTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EntityTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EntityTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EntityTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EntityTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EntityTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EntityTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EntityTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EntityTest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EntityTest] SET  MULTI_USER 
GO
ALTER DATABASE [EntityTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EntityTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EntityTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EntityTest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EntityTest] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EntityTest]
GO
/****** Object:  Table [dbo].[OurPerson]    Script Date: 3/23/2016 11:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OurPerson](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NULL,
	[LastName] [varchar](255) NULL,
	[Num] [int] NULL,
	[Num1] [int] NULL,
 CONSTRAINT [PK_OurPerson] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 3/23/2016 11:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[id] [int] NOT NULL,
	[Which of the following states hast the largest population?] [nvarchar](max) NULL,
	[Indiana] [bit] NULL,
	[Nevada] [bit] NULL,
	[Florida] [bit] NULL,
	[Texas] [bit] NULL,
	[Which state has the largest number of lakes?] [nvarchar](max) NULL,
	[Arizona] [bit] NULL,
	[Virginia] [bit] NULL,
	[New Jersey] [bit] NULL,
	[Kentucky] [bit] NULL,
	[Which state has the larget land mass?] [nvarchar](max) NULL,
	[Vermont] [bit] NULL,
	[Montana] [bit] NULL,
	[North Dakota] [bit] NULL,
	[California] [bit] NULL,
	[Which country has the largest population?] [nvarchar](max) NULL,
	[Italy] [bit] NULL,
	[Uganda] [bit] NULL,
	[France] [bit] NULL,
	[China] [bit] NULL,
	[Which of the following countries has the larges land mass?] [nvarchar](max) NULL,
	[US] [bit] NULL,
	[Cuba] [bit] NULL,
	[Norway] [bit] NULL,
	[Sweden] [bit] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quiz3]    Script Date: 3/23/2016 11:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quiz3](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](50) NULL,
	[a1] [varchar](50) NULL,
	[a2] [varchar](50) NULL,
	[a3] [varchar](50) NULL,
	[a4] [varchar](50) NULL,
	[Employee_ID] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quiz3Answers]    Script Date: 3/23/2016 11:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz3Answers](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[a1] [int] NULL,
	[a2] [int] NULL,
	[a3] [int] NULL,
	[a4] [int] NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_Quiz3Answers] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tProducts]    Script Date: 3/23/2016 11:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProducts](
	[id] [nchar](10) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Description] [nchar](10) NULL,
 CONSTRAINT [PK_tProducts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [EntityTest] SET  READ_WRITE 
GO
