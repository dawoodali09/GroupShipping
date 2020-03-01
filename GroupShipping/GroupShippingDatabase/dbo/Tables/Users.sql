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
-- Creating foreign key on [AddressID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_Users_Addresses]
    FOREIGN KEY ([AddressID])
    REFERENCES [dbo].[Addresses]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [PictureID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_Users_Pictures]
    FOREIGN KEY ([PictureID])
    REFERENCES [dbo].[Pictures]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [ID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Users_Addresses'
CREATE INDEX [IX_FK_Users_Addresses]
ON [dbo].[Users]
    ([AddressID]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Users_Pictures'
CREATE INDEX [IX_FK_Users_Pictures]
ON [dbo].[Users]
    ([PictureID]);