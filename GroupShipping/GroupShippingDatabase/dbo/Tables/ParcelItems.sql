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
-- Creating foreign key on [ItemID] in table 'ParcelItems'
ALTER TABLE [dbo].[ParcelItems]
ADD CONSTRAINT [FK_ParcelItems_Items]
    FOREIGN KEY ([ItemID])
    REFERENCES [dbo].[Items]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [ParcelID] in table 'ParcelItems'
ALTER TABLE [dbo].[ParcelItems]
ADD CONSTRAINT [FK_ParcelItems_Parcels]
    FOREIGN KEY ([ParcelID])
    REFERENCES [dbo].[Parcels]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [PictureID] in table 'ParcelItems'
ALTER TABLE [dbo].[ParcelItems]
ADD CONSTRAINT [FK_ParcelItems_Pictures]
    FOREIGN KEY ([PictureID])
    REFERENCES [dbo].[Pictures]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [MemberID] in table 'ParcelItems'
ALTER TABLE [dbo].[ParcelItems]
ADD CONSTRAINT [FK_ParcelItems_Users]
    FOREIGN KEY ([MemberID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [ID] in table 'ParcelItems'
ALTER TABLE [dbo].[ParcelItems]
ADD CONSTRAINT [PK_ParcelItems]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ParcelItems_Items'
CREATE INDEX [IX_FK_ParcelItems_Items]
ON [dbo].[ParcelItems]
    ([ItemID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ParcelItems_Parcels'
CREATE INDEX [IX_FK_ParcelItems_Parcels]
ON [dbo].[ParcelItems]
    ([ParcelID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ParcelItems_Pictures'
CREATE INDEX [IX_FK_ParcelItems_Pictures]
ON [dbo].[ParcelItems]
    ([PictureID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ParcelItems_Users'
CREATE INDEX [IX_FK_ParcelItems_Users]
ON [dbo].[ParcelItems]
    ([MemberID]);