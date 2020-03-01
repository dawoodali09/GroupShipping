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
-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Addresses_Countries'
CREATE INDEX [IX_FK_Addresses_Countries]
ON [dbo].[Addresses]
    ([CountryID]);