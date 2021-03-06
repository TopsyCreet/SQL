/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2012 (11.0.2100)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [master]
GO
/****** Object:  Database [CCTIS]    Script Date: 23/9/2018 5:27:08 PM ******/
CREATE DATABASE [CCTIS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CCTIS', FILENAME = N'C:\Program Files\Microsoft SQL Server\Creet\MSSQL11.CREET\MSSQL\DATA\CCTIS.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CCTIS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\Creet\MSSQL11.CREET\MSSQL\DATA\CCTIS_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CCTIS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CCTIS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CCTIS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CCTIS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CCTIS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CCTIS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CCTIS] SET ARITHABORT OFF 
GO
ALTER DATABASE [CCTIS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CCTIS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CCTIS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CCTIS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CCTIS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CCTIS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CCTIS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CCTIS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CCTIS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CCTIS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CCTIS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CCTIS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CCTIS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CCTIS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CCTIS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CCTIS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CCTIS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CCTIS] SET RECOVERY FULL 
GO
ALTER DATABASE [CCTIS] SET  MULTI_USER 
GO
ALTER DATABASE [CCTIS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CCTIS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CCTIS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CCTIS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CCTIS', N'ON'
GO
USE [CCTIS]
GO
/****** Object:  Table [dbo].[Complainant]    Script Date: 23/9/2018 5:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Drop Table Complainant
CREATE TABLE [dbo].[Complainant](
	[compId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Sex] [varchar](10) NOT NULL,
	[Occupation] [varchar](50) NULL,
	[eyecolor] [varchar](20) NOT NULL,
	[Complexion] [varchar](10) NOT NULL,
	[Haircolor] [varchar](20) NOT NULL,
	[Age] [Varchar](8)  NOT NULL,
	[address] [varchar](200) NOT NULL,
		[State] [varchar](50)Check(State in('Abia State',
'Adamawa State',
'Akwa Ibom State',
'Anambra State',
'Bauchi State',
'Bayelsa State',
'Benue State',
'Borno State',
'Cross River State',
'Delta State',
'Ebonyi State',
'Edo State',
'Ekiti State',
'Enugu State',
'Federal Capital Territory',
'Gombe State',
'Imo State',
'Jigawa State',
'Kaduna State',
'Kano State',
'Katsina State',
'Kebbi State',
'Kogi State',
'Kwara State',
'Lagos State',
'Nasarawa State',
'Niger State',
'Ogun State',
'Ondo State',
'Osun State',
'Oyo State',
'Plateau State',
'Rivers State',
'Sokoto State',
'Taraba State',
'Yobe State',
'Zamfara State')) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[Complain] [varchar](200) NOT NULL,
	[Report_Date] [varchar](11) NOT NULL,
	[Report_Time] [varchar](11) NOT NULL,
	[InCharge] [varchar](50) NOT NULL,
	[Username] [varchar](50) Not NUll,
PRIMARY KEY CLUSTERED 
(
	[compId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Criminal]    Script Date: 23/9/2018 5:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Drop Table Criminal
CREATE TABLE [dbo].[Criminal](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Sex] [varchar](10) NOT NULL,
	[Occupation] [varchar](50) NULL,
	[eyecolor] [varchar](20) NOT NULL,
	[Complexion] [varchar](10) NOT NULL,
	[Haircolor] [varchar](20) NOT NULL,
	[Age] [Varchar](8)  NOT NULL,
	[address] [varchar](200) NOT NULL,
		[State] [varchar](50)Check(State in('Abia State',
'Adamawa State',
'Akwa Ibom State',
'Anambra State',
'Bauchi State',
'Bayelsa State',
'Benue State',
'Borno State',
'Cross River State',
'Delta State',
'Ebonyi State',
'Edo State',
'Ekiti State',
'Enugu State',
'Federal Capital Territory',
'Gombe State',
'Imo State',
'Jigawa State',
'Kaduna State',
'Kano State',
'Katsina State',
'Kebbi State',
'Kogi State',
'Kwara State',
'Lagos State',
'Nasarawa State',
'Niger State',
'Ogun State',
'Ondo State',
'Osun State',
'Oyo State',
'Plateau State',
'Rivers State',
'Sokoto State',
'Taraba State',
'Yobe State',
'Zamfara State')) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[Height] [Varchar](8)  NOT NULL,
	[National_Id] [varchar](20) NOT NULL,
	[Weight] [Varchar](8)  NOT NULL,
	[Arrest_Date] [varchar](20) NOT NULL,
	[Arrest_Time] [varchar](20) NOT NULL,
	[INCharge] [varchar](50) NULL,
	[Case_Type] [varchar](50) NOT NULL,
	[ConvictDate] [varchar](20) NOT NULL,
	[CrimeCode] [Varchar](8)  NOT NULL,
	[Cell_No] [Varchar](8)  NOT NULL,
	[Court_Type] [varchar](20) NOT NULL,
	[Verdict] [varchar](100) NOT NULL,
	[Username] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suspect]    Script Date: 23/9/2018 5:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Drop Table Suspect
CREATE TABLE [dbo].[Suspect](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Sex] [varchar](10) NOT NULL,
	[Occupation] [varchar](50) NULL,
	[eyecolor] [varchar](20) NOT NULL,
	[Complexion] [varchar](10) NOT NULL,
	[Haircolor] [varchar](20) NOT NULL,
	[Age] [Varchar](3) NOT NULL,
	[address] [varchar](200) NOT NULL,
	[State] [varchar](50)Check(State in('Abia State',
'Adamawa State',
'Akwa Ibom State',
'Anambra State',
'Bauchi State',
'Bayelsa State',
'Benue State',
'Borno State',
'Cross River State',
'Delta State',
'Ebonyi State',
'Edo State',
'Ekiti State',
'Enugu State',
'Federal Capital Territory',
'Gombe State',
'Imo State',
'Jigawa State',
'Kaduna State',
'Kano State',
'Katsina State',
'Kebbi State',
'Kogi State',
'Kwara State',
'Lagos State',
'Nasarawa State',
'Niger State',
'Ogun State',
'Ondo State',
'Osun State',
'Oyo State',
'Plateau State',
'Rivers State',
'Sokoto State',
'Taraba State',
'Yobe State',
'Zamfara State')) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[Height] [Varchar](20) NOT NULL,
	[National_Id] [varchar](20) NOT NULL,
	[Weight] [Varchar](20)  NOT NULL,
	[Arrest_Date] [varchar](20) NOT NULL,
	[Arrest_Time] [varchar](20) NOT NULL,
	[INCharge] [varchar](50) NULL,
	[Charged_Case_Type] [varchar](50) NOT NULL,
	[ConvictDate] [varchar](20) NOT NULL,
	[ChargedCode] [Varchar](8)  NOT NULL,
	[Cell_No][Varchar](8)  NOT NULL,
	[Court_Type] [varchar](50) NOT NULL,
	[Verdict] [varchar](100) NOT NULL,
	[Username] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 23/9/2018 5:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_Id] [int] IDENTITY(1000,1) NOT NULL,
	[Username] [varchar](25) NOT NULL,
	[Password] [varchar](25) NOT NULL,
	[Role] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Complainant]  WITH CHECK ADD CHECK  (([Complexion]='Albino' OR [Complexion]='White' OR [Complexion]='Black'))
GO
ALTER TABLE [dbo].[Complainant]  WITH CHECK ADD CHECK  (([eyecolor]='Brown' OR [eyecolor]='Green' OR [eyecolor]='Yellow' OR [eyecolor]='Blue' OR [eyecolor]='Black'))
GO
ALTER TABLE [dbo].[Complainant]  WITH CHECK ADD CHECK  (([Haircolor]='Brown' OR [Haircolor]='Green' OR [Haircolor]='Yellow' OR [Haircolor]='Blue' OR [Haircolor]='Black'))
GO
ALTER TABLE [dbo].[Complainant]  WITH CHECK ADD CHECK  (([Phone] like '[0][7-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Complainant]  WITH CHECK ADD CHECK  (([Sex]='Female' OR [Sex]='Male'))
GO
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Case_Type]='Robbery' OR [Case_Type]='Bribery and Corruption' OR [Case_Type]='Police Brutality and Hostility' OR [Case_Type]='Rape' OR [Case_Type]='Cyber Crime(Yahoo Yahoo)' OR [Case_Type]='Terrorism' OR [Case_Type]='Money Laundering' OR [Case_Type]='Advance Fee Fraud(419)' OR [Case_Type]='Financial Crime' OR [Case_Type]='Economic Crime'))
GO
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Complexion]='Albino' OR [Complexion]='White' OR [Complexion]='Black'))
GO
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Court_Type]='Magistrate Court(District Court)' OR [Court_Type]='Customary Court of Appeal' OR [Court_Type]='Sharia Court Of Appeal' OR [Court_Type]='National Industrial Court' OR [Court_Type]='State High Court' OR [Court_Type]='Federal High Court' OR [Court_Type]='Court Of Appeal' OR [Court_Type]='Supreme Court'))
GO
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([eyecolor]='Brown' OR [eyecolor]='Green' OR [eyecolor]='Yellow' OR [eyecolor]='Blue' OR [eyecolor]='Black'))
GO
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Haircolor]='Brown' OR [Haircolor]='Green' OR [Haircolor]='Yellow' OR [Haircolor]='Blue' OR [Haircolor]='Black'))
GO
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Phone] like '[0][7-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Sex]='Female' OR [Sex]='Male'))
GO
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Charged_Case_Type]='Robbery' OR [Charged_Case_Type]='Bribery and Corruption' OR [Charged_Case_Type]='Police Brutality and Hostility' OR [Charged_Case_Type]='Rape' OR [Charged_Case_Type]='Cyber Crime(Yahoo Yahoo)' OR [Charged_Case_Type]='Terrorism' OR [Charged_Case_Type]='Money Laundering' OR [Charged_Case_Type]='Advance Fee Fraud(419)' OR [Charged_Case_Type]='Financial Crime' OR [Charged_Case_Type]='Economic Crime'))
GO
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Complexion]='Albino' OR [Complexion]='White' OR [Complexion]='Black'))
GO
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Court_Type]='Magistrate Court(District Court)' OR [Court_Type]='Customary Court of Appeal' OR [Court_Type]='Sharia Court Of Appeal' OR [Court_Type]='National Industrial Court' OR [Court_Type]='State High Court' OR [Court_Type]='Federal High Court' OR [Court_Type]='Court Of Appeal' OR [Court_Type]='	'))
GO
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([eyecolor]='Brown' OR [eyecolor]='Green' OR [eyecolor]='Yellow' OR [eyecolor]='Blue' OR [eyecolor]='Black'))
GO
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Haircolor]='Brown' OR [Haircolor]='Green' OR [Haircolor]='Yellow' OR [Haircolor]='Blue' OR [Haircolor]='Black'))
GO
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Phone] like '[0][7-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Sex]='Female' OR [Sex]='Male'))
GO
USE [master]
GO
ALTER DATABASE [CCTIS] SET  READ_WRITE 
GO