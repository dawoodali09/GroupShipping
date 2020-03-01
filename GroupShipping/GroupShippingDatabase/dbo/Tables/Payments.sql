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
-- Creating foreign key on [PaymentCurrencyID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_Currencies]
    FOREIGN KEY ([PaymentCurrencyID])
    REFERENCES [dbo].[Currencies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [PaymentModeID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_PaymentModes]
    FOREIGN KEY ([PaymentModeID])
    REFERENCES [dbo].[PaymentModes]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [ShipmentGroupMemberID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_ShipmentGroupMembers]
    FOREIGN KEY ([ShipmentGroupMemberID])
    REFERENCES [dbo].[ShipmentGroupMembers]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [ShipmentGroupID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_ShipmentGroups]
    FOREIGN KEY ([ShipmentGroupID])
    REFERENCES [dbo].[ShipmentGroups]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [PayorID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_Users]
    FOREIGN KEY ([PayorID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [ReceivedBy] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_Payments_Users1]
    FOREIGN KEY ([ReceivedBy])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [ID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [PK_Payments]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_Currencies'
CREATE INDEX [IX_FK_Payments_Currencies]
ON [dbo].[Payments]
    ([PaymentCurrencyID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_PaymentModes'
CREATE INDEX [IX_FK_Payments_PaymentModes]
ON [dbo].[Payments]
    ([PaymentModeID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_ShipmentGroupMembers'
CREATE INDEX [IX_FK_Payments_ShipmentGroupMembers]
ON [dbo].[Payments]
    ([ShipmentGroupMemberID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_ShipmentGroups'
CREATE INDEX [IX_FK_Payments_ShipmentGroups]
ON [dbo].[Payments]
    ([ShipmentGroupID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_Users'
CREATE INDEX [IX_FK_Payments_Users]
ON [dbo].[Payments]
    ([PayorID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Payments_Users1'
CREATE INDEX [IX_FK_Payments_Users1]
ON [dbo].[Payments]
    ([ReceivedBy]);