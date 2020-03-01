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
-- Creating foreign key on [ParcelID] in table 'ShipmentGroupParcels'
ALTER TABLE [dbo].[ShipmentGroupParcels]
ADD CONSTRAINT [FK_ShipmentGroupParcels_Parcels]
    FOREIGN KEY ([ParcelID])
    REFERENCES [dbo].[Parcels]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [ShipmentGroupID] in table 'ShipmentGroupParcels'
ALTER TABLE [dbo].[ShipmentGroupParcels]
ADD CONSTRAINT [FK_ShipmentGroupParcels_ShipmentGroups]
    FOREIGN KEY ([ShipmentGroupID])
    REFERENCES [dbo].[ShipmentGroups]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [MemberID] in table 'ShipmentGroupParcels'
ALTER TABLE [dbo].[ShipmentGroupParcels]
ADD CONSTRAINT [FK_ShipmentGroupParcels_Users]
    FOREIGN KEY ([MemberID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [ID] in table 'ShipmentGroupParcels'
ALTER TABLE [dbo].[ShipmentGroupParcels]
ADD CONSTRAINT [PK_ShipmentGroupParcels]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupParcels_Parcels'
CREATE INDEX [IX_FK_ShipmentGroupParcels_Parcels]
ON [dbo].[ShipmentGroupParcels]
    ([ParcelID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupParcels_ShipmentGroups'
CREATE INDEX [IX_FK_ShipmentGroupParcels_ShipmentGroups]
ON [dbo].[ShipmentGroupParcels]
    ([ShipmentGroupID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ShipmentGroupParcels_Users'
CREATE INDEX [IX_FK_ShipmentGroupParcels_Users]
ON [dbo].[ShipmentGroupParcels]
    ([MemberID]);