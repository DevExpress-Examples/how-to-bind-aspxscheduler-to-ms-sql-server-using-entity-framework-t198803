USE [master]
GO
/****** Object:  Database [ScheduleTest]    Script Date: 1/20/2015 4:03:03 PM ******/
CREATE DATABASE [ScheduleTest]
GO
ALTER DATABASE [ScheduleTest] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ScheduleTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ScheduleTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ScheduleTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ScheduleTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ScheduleTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ScheduleTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [ScheduleTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ScheduleTest] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ScheduleTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ScheduleTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ScheduleTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ScheduleTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ScheduleTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ScheduleTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ScheduleTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ScheduleTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ScheduleTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ScheduleTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ScheduleTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ScheduleTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ScheduleTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ScheduleTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ScheduleTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ScheduleTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ScheduleTest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ScheduleTest] SET  MULTI_USER 
GO
ALTER DATABASE [ScheduleTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ScheduleTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ScheduleTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ScheduleTest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ScheduleTest', N'ON'
GO
USE [ScheduleTest]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 1/20/2015 4:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[UniqueId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NULL,
	[StartDate] [smalldatetime] NULL,
	[EndDate] [smalldatetime] NULL,
	[AllDay] [bit] NULL,
	[Subject] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[Label] [int] NULL,
	[ResourceId] [int] NULL,
	[ResourceIds] [nvarchar](max) NULL,
	[ReminderInfo] [nvarchar](max) NULL,
	[RecurrenceInfo] [nvarchar](max) NULL,
	[PercentComplete] [int] NULL,
	[CustomField1] [nvarchar](max) NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[UniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Resources]    Script Date: 1/20/2015 4:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSort] [int] NULL,
	[ParentId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Color] [int] NULL,
	[Image] [image] NULL,
	[CustomField1] [nvarchar](max) NULL,
 CONSTRAINT [PK_Resources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaskDependencies]    Script Date: 1/20/2015 4:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskDependencies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[DependentId] [int] NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_TaskDependencies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [ScheduleTest] SET  READ_WRITE 
GO
