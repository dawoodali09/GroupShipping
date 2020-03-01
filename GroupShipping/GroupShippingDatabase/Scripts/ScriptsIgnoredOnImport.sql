
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/02/2020 10:07:18
-- Generated from EDMX file: C:\Projects\GS\GroupShipping\DB\DBContext.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [GroupShipping];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Addresses_Countries]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_Addresses_Countries];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupMembers_Addresses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupMembers] DROP CONSTRAINT [FK_ShipmentGroupMembers_Addresses];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroups_Addresses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroups] DROP CONSTRAINT [FK_ShipmentGroups_Addresses];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroups_Addresses1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroups] DROP CONSTRAINT [FK_ShipmentGroups_Addresses1];
GO

IF OBJECT_ID(N'[dbo].[FK_Users_Addresses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Addresses];
GO

IF OBJECT_ID(N'[dbo].[FK_Payments_Currencies]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_Currencies];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroups_Currencies]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroups] DROP CONSTRAINT [FK_ShipmentGroups_Currencies];
GO

IF OBJECT_ID(N'[dbo].[FK_ParcelItems_Items]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParcelItems] DROP CONSTRAINT [FK_ParcelItems_Items];
GO

IF OBJECT_ID(N'[dbo].[FK_ParcelItems_Parcels]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParcelItems] DROP CONSTRAINT [FK_ParcelItems_Parcels];
GO

IF OBJECT_ID(N'[dbo].[FK_ParcelItems_Pictures]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParcelItems] DROP CONSTRAINT [FK_ParcelItems_Pictures];
GO

IF OBJECT_ID(N'[dbo].[FK_ParcelItems_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParcelItems] DROP CONSTRAINT [FK_ParcelItems_Users];
GO

IF OBJECT_ID(N'[dbo].[FK_Parcels_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Parcels] DROP CONSTRAINT [FK_Parcels_Users];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupMembers_Parcels]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupMembers] DROP CONSTRAINT [FK_ShipmentGroupMembers_Parcels];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupParcels_Parcels]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupParcels] DROP CONSTRAINT [FK_ShipmentGroupParcels_Parcels];
GO

IF OBJECT_ID(N'[dbo].[FK_Payments_PaymentModes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_PaymentModes];
GO

IF OBJECT_ID(N'[dbo].[FK_Payments_ShipmentGroupMembers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_ShipmentGroupMembers];
GO

IF OBJECT_ID(N'[dbo].[FK_Payments_ShipmentGroups]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_ShipmentGroups];
GO

IF OBJECT_ID(N'[dbo].[FK_Payments_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_Users];
GO

IF OBJECT_ID(N'[dbo].[FK_Payments_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_Users1];
GO

IF OBJECT_ID(N'[dbo].[FK_Users_Pictures]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Pictures];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupMembers_ShipmentGroups]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupMembers] DROP CONSTRAINT [FK_ShipmentGroupMembers_ShipmentGroups];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupMembers_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupMembers] DROP CONSTRAINT [FK_ShipmentGroupMembers_Users];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupParcels_ShipmentGroups]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupParcels] DROP CONSTRAINT [FK_ShipmentGroupParcels_ShipmentGroups];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupParcels_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupParcels] DROP CONSTRAINT [FK_ShipmentGroupParcels_Users];
GO

IF OBJECT_ID(N'[dbo].[FK_ShipmentGroups_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroups] DROP CONSTRAINT [FK_ShipmentGroups_Users];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Addresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Addresses];
GO

IF OBJECT_ID(N'[dbo].[Countries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Countries];
GO

IF OBJECT_ID(N'[dbo].[Currencies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Currencies];
GO

IF OBJECT_ID(N'[dbo].[Items]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Items];
GO

IF OBJECT_ID(N'[dbo].[ParcelItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ParcelItems];
GO

IF OBJECT_ID(N'[dbo].[Parcels]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Parcels];
GO

IF OBJECT_ID(N'[dbo].[PaymentModes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PaymentModes];
GO

IF OBJECT_ID(N'[dbo].[Payments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Payments];
GO

IF OBJECT_ID(N'[dbo].[Pictures]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pictures];
GO

IF OBJECT_ID(N'[dbo].[ShipmentGroupMembers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShipmentGroupMembers];
GO

IF OBJECT_ID(N'[dbo].[ShipmentGroupParcels]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShipmentGroupParcels];
GO

IF OBJECT_ID(N'[dbo].[ShipmentGroups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShipmentGroups];
GO

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

GO
