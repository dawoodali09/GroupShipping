
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/15/2019 11:30:37
-- Generated from EDMX file: C:\Users\DawoodAli\source\repos\GroupShipping\DB\DBContext.edmx
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
IF OBJECT_ID(N'[dbo].[FK_Payments_Currencies]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_Currencies];
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
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupMembers_Addresses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupMembers] DROP CONSTRAINT [FK_ShipmentGroupMembers_Addresses];
GO
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupMembers_Parcels]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupMembers] DROP CONSTRAINT [FK_ShipmentGroupMembers_Parcels];
GO
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupMembers_ShipmentGroups]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupMembers] DROP CONSTRAINT [FK_ShipmentGroupMembers_ShipmentGroups];
GO
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupMembers_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupMembers] DROP CONSTRAINT [FK_ShipmentGroupMembers_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupParcels_Parcels]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupParcels] DROP CONSTRAINT [FK_ShipmentGroupParcels_Parcels];
GO
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupParcels_ShipmentGroups]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupParcels] DROP CONSTRAINT [FK_ShipmentGroupParcels_ShipmentGroups];
GO
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroupParcels_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroupParcels] DROP CONSTRAINT [FK_ShipmentGroupParcels_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroups_Addresses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroups] DROP CONSTRAINT [FK_ShipmentGroups_Addresses];
GO
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroups_Addresses1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroups] DROP CONSTRAINT [FK_ShipmentGroups_Addresses1];
GO
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroups_Currencies]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroups] DROP CONSTRAINT [FK_ShipmentGroups_Currencies];
GO
IF OBJECT_ID(N'[dbo].[FK_ShipmentGroups_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentGroups] DROP CONSTRAINT [FK_ShipmentGroups_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Users_Addresses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Addresses];
GO
IF OBJECT_ID(N'[dbo].[FK_Users_Pictures]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Pictures];
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
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [ContactPersonTitle] nvarchar(150)  NOT NULL,
    [ContactPersonFirstName] nvarchar(150)  NOT NULL,
    [ContactPersonSurname] nvarchar(150)  NULL,
    [EmailAddress] nvarchar(150)  NULL,
    [ContactNumber1] nvarchar(150)  NULL,
    [ContactNumber2] nvarchar(150)  NULL,
    [FaxNumber] nvarchar(150)  NULL,
    [AddressLine1] nvarchar(500)  NOT NULL,
    [AddressLine2] nvarchar(500)  NULL,
    [AddressLine3] nvarchar(500)  NULL,
    [City] nvarchar(200)  NOT NULL,
    [State] nvarchar(200)  NULL,
    [PostalCode] nvarchar(50)  NULL,
    [CountryID] int  NOT NULL,
    [Verified] bit  NOT NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(500)  NOT NULL,
    [Code] nvarchar(100)  NOT NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'Currencies'
CREATE TABLE [dbo].[Currencies] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(200)  NOT NULL,
    [Code] nvarchar(100)  NOT NULL,
    [RateInNZD] decimal(19,4)  NOT NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'Items'
CREATE TABLE [dbo].[Items] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(500)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'ParcelItems'
CREATE TABLE [dbo].[ParcelItems] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [ParcelID] bigint  NOT NULL,
    [MemberID] bigint  NOT NULL,
    [ItemID] bigint  NOT NULL,
    [Quantiy] int  NOT NULL,
    [Weight] decimal(18,0)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [PictureID] bigint  NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'Parcels'
CREATE TABLE [dbo].[Parcels] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [MemberID] bigint  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'PaymentModes'
CREATE TABLE [dbo].[PaymentModes] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(200)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'Payments'
CREATE TABLE [dbo].[Payments] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [ShipmentGroupMemberID] bigint  NOT NULL,
    [ShipmentGroupID] bigint  NOT NULL,
    [PayorID] bigint  NOT NULL,
    [Amount] decimal(19,4)  NOT NULL,
    [PaymentModeID] int  NOT NULL,
    [PaymentCurrencyID] int  NOT NULL,
    [ReceivedBy] bigint  NOT NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'Pictures'
CREATE TABLE [dbo].[Pictures] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [ContentType] nvarchar(250)  NULL,
    [Content] varbinary(max)  NOT NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'ShipmentGroupMembers'
CREATE TABLE [dbo].[ShipmentGroupMembers] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [MemberID] bigint  NOT NULL,
    [ShipmentGroupID] bigint  NOT NULL,
    [ParcelID] bigint  NOT NULL,
    [IsFacilitator] bit  NULL,
    [DomesticAddressID] bigint  NOT NULL,
    [ConsentedOn] datetime  NOT NULL,
    [ShipmentReceivedAtOrigin] datetime  NULL,
    [DispatchedDomestically] datetime  NULL,
    [DomesticallyReceived] datetime  NULL,
    [ShipmentWeight] decimal(18,0)  NOT NULL,
    [InternationalShipmentCost] decimal(19,4)  NULL,
    [DomesticShipmentCost] decimal(19,4)  NULL,
    [FacilitationFee] decimal(19,4)  NULL,
    [AppServiceFee] decimal(19,4)  NOT NULL,
    [TotalPayable] decimal(19,4)  NOT NULL,
    [PayableReceived] bit  NOT NULL,
    [Completed] datetime  NULL,
    [LastUpdatedOn] datetime  NULL,
    [GoodToGo] bit  NOT NULL,
    [ShareDetailsWithMembers] bit  NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'ShipmentGroupParcels'
CREATE TABLE [dbo].[ShipmentGroupParcels] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [ShipmentGroupID] bigint  NOT NULL,
    [MemberID] bigint  NOT NULL,
    [ParcelID] bigint  NOT NULL,
    [ReceivedAtOrigin] datetime  NULL,
    [DispatchedAtDestination] datetime  NULL,
    [DispatchedDomestically] datetime  NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'ShipmentGroups'
CREATE TABLE [dbo].[ShipmentGroups] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [FacilitatorID] bigint  NOT NULL,
    [OriginAddressID] bigint  NOT NULL,
    [DestinataionAddressID] bigint  NOT NULL,
    [MaximumMembers] int  NOT NULL,
    [MaximumWeight] decimal(18,0)  NOT NULL,
    [TotalODShipmentCost] decimal(19,4)  NOT NULL,
    [TotalSubShipmentCost] decimal(19,4)  NOT NULL,
    [AverageDomesticShipmentCost] decimal(19,4)  NOT NULL,
    [TotalGroupFacilitationFee] decimal(19,4)  NOT NULL,
    [TotalAppServiceFee] decimal(19,4)  NOT NULL,
    [AppServiceFeeReceived] bit  NULL,
    [CurrencyID] int  NOT NULL,
    [MembersCompleted] bit  NULL,
    [ParcelReceived] datetime  NULL,
    [ExpectedDispatchTime] datetime  NULL,
    [ParcelDispatched] datetime  NULL,
    [ExpectedArrivalTime] datetime  NULL,
    [ParcelArrived] datetime  NULL,
    [Completed] datetime  NULL,
    [LastUpdated] datetime  NOT NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(400)  NOT NULL,
    [Password] nvarchar(500)  NOT NULL,
    [Title] nvarchar(200)  NOT NULL,
    [FirstName] nvarchar(500)  NOT NULL,
    [Surname] nvarchar(500)  NOT NULL,
    [Gender] nvarchar(100)  NOT NULL,
    [DateOfBirth] datetime  NULL,
    [PictureID] bigint  NULL,
    [AddressID] bigint  NULL,
    [Subscribed] bit  NOT NULL,
    [Verified] bit  NOT NULL,
    [Active] bit  NOT NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Countries'
ALTER TABLE [dbo].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Currencies'
ALTER TABLE [dbo].[Currencies]
ADD CONSTRAINT [PK_Currencies]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [PK_Items]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ParcelItems'
ALTER TABLE [dbo].[ParcelItems]
ADD CONSTRAINT [PK_ParcelItems]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Parcels'
ALTER TABLE [dbo].[Parcels]
ADD CONSTRAINT [PK_Parcels]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'PaymentModes'
ALTER TABLE [dbo].[PaymentModes]
ADD CONSTRAINT [PK_PaymentModes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [PK_Payments]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Pictures'
ALTER TABLE [dbo].[Pictures]
ADD CONSTRAINT [PK_Pictures]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ShipmentGroupMembers'
ALTER TABLE [dbo].[ShipmentGroupMembers]
ADD CONSTRAINT [PK_ShipmentGroupMembers]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ShipmentGroupParcels'
ALTER TABLE [dbo].[ShipmentGroupParcels]
ADD CONSTRAINT [PK_ShipmentGroupParcels]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ShipmentGroups'
ALTER TABLE [dbo].[ShipmentGroups]
ADD CONSTRAINT [PK_ShipmentGroups]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CountryID] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_Addresses_Countries]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Countries]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Addresses_Countries'
CREATE INDEX [IX_FK_Addresses_Countries]
ON [dbo].[Addresses]
    ([CountryID]);
GO

-- Creating foreign key on [DomesticAddressID] in table 'ShipmentGroupMembers'
ALTER TABLE [dbo].[ShipmentGroupMembers]
ADD CONSTRAINT [FK_ShipmentGroupMembers_Addresses]
    FOREIGN KEY ([DomesticAddressID])
    REFERENCES [dbo].[Addresses]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupMembers_Addresses'
CREATE INDEX [IX_FK_ShipmentGroupMembers_Addresses]
ON [dbo].[ShipmentGroupMembers]
    ([DomesticAddressID]);
GO

-- Creating foreign key on [OriginAddressID] in table 'ShipmentGroups'
ALTER TABLE [dbo].[ShipmentGroups]
ADD CONSTRAINT [FK_ShipmentGroups_Addresses]
    FOREIGN KEY ([OriginAddressID])
    REFERENCES [dbo].[Addresses]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroups_Addresses'
CREATE INDEX [IX_FK_ShipmentGroups_Addresses]
ON [dbo].[ShipmentGroups]
    ([OriginAddressID]);
GO

-- Creating foreign key on [DestinataionAddressID] in table 'ShipmentGroups'
ALTER TABLE [dbo].[ShipmentGroups]
ADD CONSTRAINT [FK_ShipmentGroups_Addresses1]
    FOREIGN KEY ([DestinataionAddressID])
    REFERENCES [dbo].[Addresses]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroups_Addresses1'
CREATE INDEX [IX_FK_ShipmentGroups_Addresses1]
ON [dbo].[ShipmentGroups]
    ([DestinataionAddressID]);
GO

-- Creating foreign key on [AddressID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_Users_Addresses]
    FOREIGN KEY ([AddressID])
    REFERENCES [dbo].[Addresses]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Users_Addresses'
CREATE INDEX [IX_FK_Users_Addresses]
ON [dbo].[Users]
    ([AddressID]);
GO

-- Creating foreign key on [PaymentCurrencyID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_Currencies]
    FOREIGN KEY ([PaymentCurrencyID])
    REFERENCES [dbo].[Currencies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_Currencies'
CREATE INDEX [IX_FK_Payments_Currencies]
ON [dbo].[Payments]
    ([PaymentCurrencyID]);
GO

-- Creating foreign key on [CurrencyID] in table 'ShipmentGroups'
ALTER TABLE [dbo].[ShipmentGroups]
ADD CONSTRAINT [FK_ShipmentGroups_Currencies]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Currencies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroups_Currencies'
CREATE INDEX [IX_FK_ShipmentGroups_Currencies]
ON [dbo].[ShipmentGroups]
    ([CurrencyID]);
GO

-- Creating foreign key on [ItemID] in table 'ParcelItems'
ALTER TABLE [dbo].[ParcelItems]
ADD CONSTRAINT [FK_ParcelItems_Items]
    FOREIGN KEY ([ItemID])
    REFERENCES [dbo].[Items]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParcelItems_Items'
CREATE INDEX [IX_FK_ParcelItems_Items]
ON [dbo].[ParcelItems]
    ([ItemID]);
GO

-- Creating foreign key on [ParcelID] in table 'ParcelItems'
ALTER TABLE [dbo].[ParcelItems]
ADD CONSTRAINT [FK_ParcelItems_Parcels]
    FOREIGN KEY ([ParcelID])
    REFERENCES [dbo].[Parcels]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParcelItems_Parcels'
CREATE INDEX [IX_FK_ParcelItems_Parcels]
ON [dbo].[ParcelItems]
    ([ParcelID]);
GO

-- Creating foreign key on [PictureID] in table 'ParcelItems'
ALTER TABLE [dbo].[ParcelItems]
ADD CONSTRAINT [FK_ParcelItems_Pictures]
    FOREIGN KEY ([PictureID])
    REFERENCES [dbo].[Pictures]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParcelItems_Pictures'
CREATE INDEX [IX_FK_ParcelItems_Pictures]
ON [dbo].[ParcelItems]
    ([PictureID]);
GO

-- Creating foreign key on [MemberID] in table 'ParcelItems'
ALTER TABLE [dbo].[ParcelItems]
ADD CONSTRAINT [FK_ParcelItems_Users]
    FOREIGN KEY ([MemberID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParcelItems_Users'
CREATE INDEX [IX_FK_ParcelItems_Users]
ON [dbo].[ParcelItems]
    ([MemberID]);
GO

-- Creating foreign key on [MemberID] in table 'Parcels'
ALTER TABLE [dbo].[Parcels]
ADD CONSTRAINT [FK_Parcels_Users]
    FOREIGN KEY ([MemberID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Parcels_Users'
CREATE INDEX [IX_FK_Parcels_Users]
ON [dbo].[Parcels]
    ([MemberID]);
GO

-- Creating foreign key on [ParcelID] in table 'ShipmentGroupMembers'
ALTER TABLE [dbo].[ShipmentGroupMembers]
ADD CONSTRAINT [FK_ShipmentGroupMembers_Parcels]
    FOREIGN KEY ([ParcelID])
    REFERENCES [dbo].[Parcels]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupMembers_Parcels'
CREATE INDEX [IX_FK_ShipmentGroupMembers_Parcels]
ON [dbo].[ShipmentGroupMembers]
    ([ParcelID]);
GO

-- Creating foreign key on [ParcelID] in table 'ShipmentGroupParcels'
ALTER TABLE [dbo].[ShipmentGroupParcels]
ADD CONSTRAINT [FK_ShipmentGroupParcels_Parcels]
    FOREIGN KEY ([ParcelID])
    REFERENCES [dbo].[Parcels]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupParcels_Parcels'
CREATE INDEX [IX_FK_ShipmentGroupParcels_Parcels]
ON [dbo].[ShipmentGroupParcels]
    ([ParcelID]);
GO

-- Creating foreign key on [PaymentModeID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_PaymentModes]
    FOREIGN KEY ([PaymentModeID])
    REFERENCES [dbo].[PaymentModes]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_PaymentModes'
CREATE INDEX [IX_FK_Payments_PaymentModes]
ON [dbo].[Payments]
    ([PaymentModeID]);
GO

-- Creating foreign key on [ShipmentGroupMemberID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_ShipmentGroupMembers]
    FOREIGN KEY ([ShipmentGroupMemberID])
    REFERENCES [dbo].[ShipmentGroupMembers]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_ShipmentGroupMembers'
CREATE INDEX [IX_FK_Payments_ShipmentGroupMembers]
ON [dbo].[Payments]
    ([ShipmentGroupMemberID]);
GO

-- Creating foreign key on [ShipmentGroupID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_ShipmentGroups]
    FOREIGN KEY ([ShipmentGroupID])
    REFERENCES [dbo].[ShipmentGroups]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_ShipmentGroups'
CREATE INDEX [IX_FK_Payments_ShipmentGroups]
ON [dbo].[Payments]
    ([ShipmentGroupID]);
GO

-- Creating foreign key on [PayorID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_Users]
    FOREIGN KEY ([PayorID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_Users'
CREATE INDEX [IX_FK_Payments_Users]
ON [dbo].[Payments]
    ([PayorID]);
GO

-- Creating foreign key on [ReceivedBy] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_Users1]
    FOREIGN KEY ([ReceivedBy])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_Users1'
CREATE INDEX [IX_FK_Payments_Users1]
ON [dbo].[Payments]
    ([ReceivedBy]);
GO

-- Creating foreign key on [PictureID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_Users_Pictures]
    FOREIGN KEY ([PictureID])
    REFERENCES [dbo].[Pictures]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Users_Pictures'
CREATE INDEX [IX_FK_Users_Pictures]
ON [dbo].[Users]
    ([PictureID]);
GO

-- Creating foreign key on [ShipmentGroupID] in table 'ShipmentGroupMembers'
ALTER TABLE [dbo].[ShipmentGroupMembers]
ADD CONSTRAINT [FK_ShipmentGroupMembers_ShipmentGroups]
    FOREIGN KEY ([ShipmentGroupID])
    REFERENCES [dbo].[ShipmentGroups]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupMembers_ShipmentGroups'
CREATE INDEX [IX_FK_ShipmentGroupMembers_ShipmentGroups]
ON [dbo].[ShipmentGroupMembers]
    ([ShipmentGroupID]);
GO

-- Creating foreign key on [MemberID] in table 'ShipmentGroupMembers'
ALTER TABLE [dbo].[ShipmentGroupMembers]
ADD CONSTRAINT [FK_ShipmentGroupMembers_Users]
    FOREIGN KEY ([MemberID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupMembers_Users'
CREATE INDEX [IX_FK_ShipmentGroupMembers_Users]
ON [dbo].[ShipmentGroupMembers]
    ([MemberID]);
GO

-- Creating foreign key on [ShipmentGroupID] in table 'ShipmentGroupParcels'
ALTER TABLE [dbo].[ShipmentGroupParcels]
ADD CONSTRAINT [FK_ShipmentGroupParcels_ShipmentGroups]
    FOREIGN KEY ([ShipmentGroupID])
    REFERENCES [dbo].[ShipmentGroups]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupParcels_ShipmentGroups'
CREATE INDEX [IX_FK_ShipmentGroupParcels_ShipmentGroups]
ON [dbo].[ShipmentGroupParcels]
    ([ShipmentGroupID]);
GO

-- Creating foreign key on [MemberID] in table 'ShipmentGroupParcels'
ALTER TABLE [dbo].[ShipmentGroupParcels]
ADD CONSTRAINT [FK_ShipmentGroupParcels_Users]
    FOREIGN KEY ([MemberID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupParcels_Users'
CREATE INDEX [IX_FK_ShipmentGroupParcels_Users]
ON [dbo].[ShipmentGroupParcels]
    ([MemberID]);
GO

-- Creating foreign key on [FacilitatorID] in table 'ShipmentGroups'
ALTER TABLE [dbo].[ShipmentGroups]
ADD CONSTRAINT [FK_ShipmentGroups_Users]
    FOREIGN KEY ([FacilitatorID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroups_Users'
CREATE INDEX [IX_FK_ShipmentGroups_Users]
ON [dbo].[ShipmentGroups]
    ([FacilitatorID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------