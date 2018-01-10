USE [master]
GO

/****** Object:  Database [fairytale]    Script Date: 1/8/2018 5:39:25 PM ******/
DROP DATABASE IF EXISTS [fairytale]
GO

/****** Object:  Database [fairytale]    Script Date: 1/8/2018 5:39:25 PM ******/
CREATE DATABASE [fairytale]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'fairytale', FILENAME = N'E:\SQLDATA\DATA\fairytale.mdf' , SIZE = 65536KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [imoltp_mod] CONTAINS MEMORY_OPTIMIZED_DATA  DEFAULT
( NAME = N'imoltp_mod1', FILENAME = N'E:\SQLDATA\DATA\imoltp_mod1' , MAXSIZE = UNLIMITED)
 LOG ON 
( NAME = N'fairytale_log', FILENAME = N'E:\SQLDATA\DATA\fairytale_log.ldf' , SIZE = 557056KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [fairytale] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fairytale].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [fairytale] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [fairytale] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [fairytale] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [fairytale] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [fairytale] SET ARITHABORT OFF 
GO

ALTER DATABASE [fairytale] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [fairytale] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [fairytale] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [fairytale] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [fairytale] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [fairytale] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [fairytale] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [fairytale] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [fairytale] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [fairytale] SET  DISABLE_BROKER 
GO

ALTER DATABASE [fairytale] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [fairytale] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [fairytale] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [fairytale] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [fairytale] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [fairytale] SET  MULTI_USER 
GO

ALTER DATABASE [fairytale] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [fairytale] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [fairytale] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [fairytale] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [fairytale] SET QUERY_STORE = OFF
GO

USE [fairytale]
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

ALTER DATABASE [fairytale] SET  READ_WRITE 
GO


