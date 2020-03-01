-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(500)  NOT NULL,
    [Code] nvarchar(100)  NOT NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO
-- Creating primary key on [ID] in table 'Countries'
ALTER TABLE [dbo].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([ID] ASC);