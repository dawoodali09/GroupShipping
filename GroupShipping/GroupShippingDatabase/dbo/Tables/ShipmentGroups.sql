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
-- Creating foreign key on [OriginAddressID] in table 'ShipmentGroups'
ALTER TABLE [dbo].[ShipmentGroups]
ADD CONSTRAINT [FK_ShipmentGroups_Addresses]
    FOREIGN KEY ([OriginAddressID])
    REFERENCES [dbo].[Addresses]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [DestinataionAddressID] in table 'ShipmentGroups'
ALTER TABLE [dbo].[ShipmentGroups]
ADD CONSTRAINT [FK_ShipmentGroups_Addresses1]
    FOREIGN KEY ([DestinataionAddressID])
    REFERENCES [dbo].[Addresses]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [CurrencyID] in table 'ShipmentGroups'
ALTER TABLE [dbo].[ShipmentGroups]
ADD CONSTRAINT [FK_ShipmentGroups_Currencies]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Currencies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [FacilitatorID] in table 'ShipmentGroups'
ALTER TABLE [dbo].[ShipmentGroups]
ADD CONSTRAINT [FK_ShipmentGroups_Users]
    FOREIGN KEY ([FacilitatorID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [ID] in table 'ShipmentGroups'
ALTER TABLE [dbo].[ShipmentGroups]
ADD CONSTRAINT [PK_ShipmentGroups]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroups_Addresses'
CREATE INDEX [IX_FK_ShipmentGroups_Addresses]
ON [dbo].[ShipmentGroups]
    ([OriginAddressID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroups_Addresses1'
CREATE INDEX [IX_FK_ShipmentGroups_Addresses1]
ON [dbo].[ShipmentGroups]
    ([DestinataionAddressID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroups_Currencies'
CREATE INDEX [IX_FK_ShipmentGroups_Currencies]
ON [dbo].[ShipmentGroups]
    ([CurrencyID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroups_Users'
CREATE INDEX [IX_FK_ShipmentGroups_Users]
ON [dbo].[ShipmentGroups]
    ([FacilitatorID]);