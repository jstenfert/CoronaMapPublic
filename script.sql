USE [master]
GO
/****** Object:  Database [Covid19Data]    Script Date: 25-6-2024 18:57:01 ******/
CREATE DATABASE [Covid19Data]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Covid19Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Covid19Data.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Covid19Data_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Covid19Data_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Covid19Data] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Covid19Data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Covid19Data] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Covid19Data] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Covid19Data] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Covid19Data] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Covid19Data] SET ARITHABORT OFF 
GO
ALTER DATABASE [Covid19Data] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Covid19Data] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Covid19Data] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Covid19Data] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Covid19Data] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Covid19Data] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Covid19Data] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Covid19Data] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Covid19Data] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Covid19Data] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Covid19Data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Covid19Data] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Covid19Data] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Covid19Data] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Covid19Data] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Covid19Data] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Covid19Data] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Covid19Data] SET RECOVERY FULL 
GO
ALTER DATABASE [Covid19Data] SET  MULTI_USER 
GO
ALTER DATABASE [Covid19Data] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Covid19Data] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Covid19Data] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Covid19Data] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Covid19Data] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Covid19Data] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Covid19Data', N'ON'
GO
ALTER DATABASE [Covid19Data] SET QUERY_STORE = OFF
GO
USE [Covid19Data]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25-6-2024 18:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 25-6-2024 18:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[alpha2code] [nvarchar](max) NULL,
	[alpha3code] [nvarchar](max) NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryDetails]    Script Date: 25-6-2024 18:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[iso_code] [int] NOT NULL,
	[continent] [nvarchar](max) NULL,
	[location] [nvarchar](max) NULL,
	[total_cases] [float] NULL,
	[new_cases] [float] NULL,
	[new_cases_smoothed] [float] NULL,
	[total_deaths] [float] NULL,
	[new_deaths] [float] NULL,
	[new_deaths_smoothed] [float] NULL,
	[total_cases_per_million] [float] NULL,
	[new_cases_per_million] [float] NULL,
	[new_cases_smoothed_per_million] [float] NULL,
	[total_deaths_per_million] [float] NULL,
	[new_deaths_per_million] [float] NULL,
	[new_deaths_smoothed_per_million] [float] NULL,
	[reproduction_rate] [float] NULL,
	[icu_patients] [float] NULL,
	[icu_patients_per_million] [float] NULL,
	[hosp_patients] [float] NULL,
	[hosp_patients_per_million] [float] NULL,
	[weekly_icu_admissions] [float] NULL,
	[weekly_icu_admissions_per_million] [float] NULL,
	[weekly_hosp_admissions] [float] NULL,
	[weekly_hosp_admissions_per_million] [float] NULL,
	[total_tests] [float] NULL,
	[new_tests] [float] NULL,
	[total_tests_per_thousand] [float] NULL,
	[new_tests_per_thousand] [float] NULL,
	[new_tests_smoothed] [float] NULL,
	[new_tests_smoothed_per_thousand] [float] NULL,
	[tests_per_case] [float] NULL,
	[positive_rate] [float] NULL,
	[tests_units] [nvarchar](max) NULL,
	[total_vaccinations] [float] NULL,
	[total_vaccinations_per_hundred] [float] NULL,
	[stringency_index] [float] NULL,
	[population] [float] NULL,
	[population_density] [float] NULL,
	[median_age] [float] NULL,
	[aged_65_older] [float] NULL,
	[aged_70_older] [float] NULL,
	[gdp_per_capita] [float] NULL,
	[extreme_poverty] [float] NULL,
	[cardiovasc_death_rate] [float] NULL,
	[diabetes_prevalence] [float] NULL,
	[female_smokers] [float] NULL,
	[male_smokers] [float] NULL,
	[handwashing_facilities] [float] NULL,
	[hospital_beds_per_thousand] [float] NULL,
	[life_expectancy] [float] NULL,
	[human_development_index] [float] NULL,
	[excess_mortality] [float] NULL,
	[excess_mortality_cumulative] [float] NULL,
	[excess_mortality_cumulative_absolute] [float] NULL,
	[excess_mortality_cumulative_per_million] [float] NULL,
	[last_updated_date] [nvarchar](max) NULL,
	[new_people_vaccinated_smoothed] [float] NULL,
	[new_people_vaccinated_smoothed_per_hundred] [float] NULL,
	[new_vaccinations] [float] NULL,
	[new_vaccinations_smoothed] [float] NULL,
	[new_vaccinations_smoothed_per_million] [float] NULL,
	[people_fully_vaccinated] [float] NULL,
	[people_fully_vaccinated_per_hundred] [float] NULL,
	[people_vaccinated] [float] NULL,
	[people_vaccinated_per_hundred] [float] NULL,
	[total_boosters] [float] NULL,
	[total_boosters_per_hundred] [float] NULL,
 CONSTRAINT [PK_CountryDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Covid19Data] SET  READ_WRITE 
GO
