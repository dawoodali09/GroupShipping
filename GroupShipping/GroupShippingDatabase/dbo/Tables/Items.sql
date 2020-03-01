-- Creating table 'Items'
CREATE TABLE [dbo].[Items] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(500)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO
-- Creating primary key on [ID] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [PK_Items]
    PRIMARY KEY CLUSTERED ([ID] ASC);