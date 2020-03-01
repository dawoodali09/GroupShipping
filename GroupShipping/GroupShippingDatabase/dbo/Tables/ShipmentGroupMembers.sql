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
-- Creating foreign key on [DomesticAddressID] in table 'ShipmentGroupMembers'
ALTER TABLE [dbo].[ShipmentGroupMembers]
ADD CONSTRAINT [FK_ShipmentGroupMembers_Addresses]
    FOREIGN KEY ([DomesticAddressID])
    REFERENCES [dbo].[Addresses]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [ParcelID] in table 'ShipmentGroupMembers'
ALTER TABLE [dbo].[ShipmentGroupMembers]
ADD CONSTRAINT [FK_ShipmentGroupMembers_Parcels]
    FOREIGN KEY ([ParcelID])
    REFERENCES [dbo].[Parcels]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [ShipmentGroupID] in table 'ShipmentGroupMembers'
ALTER TABLE [dbo].[ShipmentGroupMembers]
ADD CONSTRAINT [FK_ShipmentGroupMembers_ShipmentGroups]
    FOREIGN KEY ([ShipmentGroupID])
    REFERENCES [dbo].[ShipmentGroups]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [MemberID] in table 'ShipmentGroupMembers'
ALTER TABLE [dbo].[ShipmentGroupMembers]
ADD CONSTRAINT [FK_ShipmentGroupMembers_Users]
    FOREIGN KEY ([MemberID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [ID] in table 'ShipmentGroupMembers'
ALTER TABLE [dbo].[ShipmentGroupMembers]
ADD CONSTRAINT [PK_ShipmentGroupMembers]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupMembers_Addresses'
CREATE INDEX [IX_FK_ShipmentGroupMembers_Addresses]
ON [dbo].[ShipmentGroupMembers]
    ([DomesticAddressID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupMembers_Parcels'
CREATE INDEX [IX_FK_ShipmentGroupMembers_Parcels]
ON [dbo].[ShipmentGroupMembers]
    ([ParcelID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupMembers_ShipmentGroups'
CREATE INDEX [IX_FK_ShipmentGroupMembers_ShipmentGroups]
ON [dbo].[ShipmentGroupMembers]
    ([ShipmentGroupID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupMembers_Users'
CREATE INDEX [IX_FK_ShipmentGroupMembers_Users]
ON [dbo].[ShipmentGroupMembers]
    ([MemberID]);