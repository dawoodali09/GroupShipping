-- Creating table 'Parcels'
CREATE TABLE [dbo].[Parcels] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [MemberID] bigint  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO
-- Creating foreign key on [MemberID] in table 'Parcels'
ALTER TABLE [dbo].[Parcels]
ADD CONSTRAINT [FK_Parcels_Users]
    FOREIGN KEY ([MemberID])
    REFERENCES [dbo].[Users]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [ID] in table 'Parcels'
ALTER TABLE [dbo].[Parcels]
ADD CONSTRAINT [PK_Parcels]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Parcels_Users'
CREATE INDEX [IX_FK_Parcels_Users]
ON [dbo].[Parcels]
    ([MemberID]);