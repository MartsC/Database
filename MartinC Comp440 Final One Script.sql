USE [master]
GO
/****** Object:  Database [db34]    Script Date: 8/31/2018 1:26:36 AM ******/
CREATE DATABASE [db34]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db34', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\db34.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db34_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\db34_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [db34] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db34].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db34] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db34] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db34] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db34] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db34] SET ARITHABORT OFF 
GO
ALTER DATABASE [db34] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db34] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db34] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db34] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db34] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db34] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db34] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db34] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db34] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db34] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db34] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db34] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db34] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db34] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db34] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db34] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db34] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db34] SET RECOVERY FULL 
GO
ALTER DATABASE [db34] SET  MULTI_USER 
GO
ALTER DATABASE [db34] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db34] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db34] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db34] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db34] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db34] SET QUERY_STORE = OFF
GO
USE [db34]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [db34]
GO
/****** Object:  User [dbuser34]    Script Date: 8/31/2018 1:26:37 AM ******/
CREATE USER [dbuser34] FOR LOGIN [dbuser34] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [dbuser34]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [dbuser34]
GO
ALTER ROLE [db_datareader] ADD MEMBER [dbuser34]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [dbuser34]
GO
/****** Object:  Table [dbo].[additional_role]    Script Date: 8/31/2018 1:26:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[additional_role](
	[additionalRole] [nvarchar](255) NULL,
	[roleID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attendee_address]    Script Date: 8/31/2018 1:26:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attendee_address](
	[addressID] [int] NOT NULL,
	[streetName] [nvarchar](255) NULL,
	[aptNumber] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[zipcode] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[attendeeID] [int] NULL,
 CONSTRAINT [PK_attendee_address] PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attendee_information]    Script Date: 8/31/2018 1:26:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attendee_information](
	[attendeeID] [int] NOT NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[lastName] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_attendee_information] PRIMARY KEY CLUSTERED 
(
	[attendeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[capacity_information]    Script Date: 8/31/2018 1:26:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[capacity_information](
	[capacityAmount] [nvarchar](255) NOT NULL,
	[roomNumber] [int] NULL,
 CONSTRAINT [PK_capacity_information] PRIMARY KEY CLUSTERED 
(
	[capacityAmount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_information]    Script Date: 8/31/2018 1:26:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_information](
	[roleName] [nvarchar](255) NULL,
	[attendeeID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[session_information]    Script Date: 8/31/2018 1:26:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[session_information](
	[sessionID] [int] NOT NULL,
	[sessionName] [nvarchar](255) NULL,
	[duration] [float] NULL,
	[sessionLevel] [nvarchar](255) NULL,
	[track] [nvarchar](255) NULL,
	[synopsis] [nvarchar](max) NULL,
	[venueLocation] [nvarchar](255) NULL,
	[dateOfEvent] [nvarchar](255) NULL,
	[cityName] [nvarchar](255) NULL,
	[lecturerID] [int] NULL,
 CONSTRAINT [PK_session_information] PRIMARY KEY CLUSTERED 
(
	[sessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[session_lecturer]    Script Date: 8/31/2018 1:26:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[session_lecturer](
	[lecturerID] [int] NOT NULL,
	[firstName] [nvarchar](255) NULL,
	[lastName] [nvarchar](255) NULL,
 CONSTRAINT [PK_session_lecturer] PRIMARY KEY CLUSTERED 
(
	[lecturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[session_roomnumber]    Script Date: 8/31/2018 1:26:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[session_roomnumber](
	[roomNumber] [int] NOT NULL,
	[sessionID] [int] NULL,
 CONSTRAINT [PK_SessionRoomNumber] PRIMARY KEY CLUSTERED 
(
	[roomNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sponsor_information]    Script Date: 8/31/2018 1:26:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sponsor_information](
	[sponsorId] [int] NOT NULL,
	[sponsor] [nvarchar](255) NOT NULL,
	[venueNumber] [float] NOT NULL,
	[dateOfEvent] [nvarchar](255) NOT NULL,
	[tableNumber] [float] NOT NULL,
	[cityName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_sponsor_information] PRIMARY KEY CLUSTERED 
(
	[sponsorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[attendee_address]  WITH CHECK ADD  CONSTRAINT [FK_attendee_address_attendee_information] FOREIGN KEY([attendeeID])
REFERENCES [dbo].[attendee_information] ([attendeeID])
GO
ALTER TABLE [dbo].[attendee_address] CHECK CONSTRAINT [FK_attendee_address_attendee_information]
GO
ALTER TABLE [dbo].[capacity_information]  WITH CHECK ADD  CONSTRAINT [FK_capacity_information_session_roomnumber] FOREIGN KEY([roomNumber])
REFERENCES [dbo].[session_roomnumber] ([roomNumber])
GO
ALTER TABLE [dbo].[capacity_information] CHECK CONSTRAINT [FK_capacity_information_session_roomnumber]
GO
ALTER TABLE [dbo].[role_information]  WITH CHECK ADD  CONSTRAINT [FK_role_information_attendee_information] FOREIGN KEY([attendeeID])
REFERENCES [dbo].[attendee_information] ([attendeeID])
GO
ALTER TABLE [dbo].[role_information] CHECK CONSTRAINT [FK_role_information_attendee_information]
GO
ALTER TABLE [dbo].[session_information]  WITH CHECK ADD  CONSTRAINT [FK_session_information_session_information] FOREIGN KEY([lecturerID])
REFERENCES [dbo].[session_lecturer] ([lecturerID])
GO
ALTER TABLE [dbo].[session_information] CHECK CONSTRAINT [FK_session_information_session_information]
GO
ALTER TABLE [dbo].[session_roomnumber]  WITH CHECK ADD  CONSTRAINT [FK_session_roomnumber_session_roomnumber] FOREIGN KEY([roomNumber])
REFERENCES [dbo].[session_roomnumber] ([roomNumber])
GO
ALTER TABLE [dbo].[session_roomnumber] CHECK CONSTRAINT [FK_session_roomnumber_session_roomnumber]
GO
ALTER TABLE [dbo].[session_roomnumber]  WITH CHECK ADD  CONSTRAINT [FK_SessionRoomNumber_session_information] FOREIGN KEY([sessionID])
REFERENCES [dbo].[session_information] ([sessionID])
GO
ALTER TABLE [dbo].[session_roomnumber] CHECK CONSTRAINT [FK_SessionRoomNumber_session_information]
GO
/****** Object:  StoredProcedure [dbo].[insertNewLecturerAndSession]    Script Date: 8/31/2018 1:26:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Martin Capisanan
-- Create date: 
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertNewLecturerAndSession] (
	
	-- Add the parameters for the stored procedure here
	@newLecturerID int,
	@newFirstName nvarchar(255),
	@newLastName nvarchar(255),
	@newSessionID int,
	@newSessionName nvarchar(255),
	@newDuration float,
	@newSessionLevel nvarchar(255),
	@newTrackLevel	nvarchar(255),
	@newSessionSynopsis nvarchar(max),
	@newVenueLocation nvarchar(255),
	@newDateOfEvent nvarchar(255),
	@newCityName nvarchar(255)
)
AS
BEGIN
	DECLARE @temp1 nvarchar(30) = (select count(*) from session_lecturer where  
				firstName = @newFirstName AND lastName = @newLastName)
	DECLARE @temp2 nvarchar(30) = (select count(*) from session_information where
				sessionName = @newSessionName)

	IF @temp1 = 0 and @temp2 = 0
	BEGIN
		BEGIN TRY
			INSERT INTO [dbo].[session_lecturer]
					([lecturerID]
					,[firstName],[lastName])
			VALUES
					(@newLecturerID,
					@newFirstName, @newLastName)

			INSERT INTO [dbo].[session_information] (
				[sessionID],
				[sessionName],
				[duration],
				[sessionLevel],
				[track],
				[synopsis],
				[venueLocation],
				[dateOfEvent],
				[cityName])
			VALUES (
				@newSessionID, @newSessionName, @newDuration, 
				@newSessionLevel, @newTrackLevel, @newSessionSynopsis,
				@newVenueLocation, @newDateOfEvent, @newCityName)
		END TRY

		BEGIN CATCH
			raiserror('Insertion Error',1,1)
		END CATCH

	END ELSE BEGIN
		raiserror('Data Duplication Error' ,2,1)
	END

END
GO
/****** Object:  StoredProcedure [dbo].[updateSessionRoom]    Script Date: 8/31/2018 1:26:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[updateSessionRoom] (
		@currentSessionID int,
		@newVenueLocation nvarchar(255)
	)
AS
BEGIN
	DECLARE @temp int = (SELECT COUNT(*) FROM session_information WHERE  
				sessionID = @currentSessionID)

	IF @temp > 0
	BEGIN
		BEGIN TRY
			SET NOCOUNT ON;
				UPDATE [dbo].[session_information]
					SET [sessionID] = @currentSessionID,
						[venueLocation] = @newVenueLocation
	  	WHERE sessionID = @currentSessionID
		END try
		BEGIN CATCH
			RAISERROR('Error: Update can not be made at this moment!',1,1)
		END CATCH

	END ELSE BEGIN
		RAISERROR('Error: Data specified does not exist',2,1)
	END
END
GO
USE [master]
GO
ALTER DATABASE [db34] SET  READ_WRITE 
GO
