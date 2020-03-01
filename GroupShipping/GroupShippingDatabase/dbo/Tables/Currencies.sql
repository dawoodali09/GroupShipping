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
-- Creating primary key on [ID] in table 'Currencies'
ALTER TABLE [dbo].[Currencies]
ADD CONSTRAINT [PK_Currencies]
    PRIMARY KEY CLUSTERED ([ID] ASC);