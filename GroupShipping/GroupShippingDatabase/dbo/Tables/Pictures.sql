-- Creating table 'Pictures'
CREATE TABLE [dbo].[Pictures] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [ContentType] nvarchar(250)  NULL,
    [Content] varbinary(max)  NOT NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO
-- Creating primary key on [ID] in table 'Pictures'
ALTER TABLE [dbo].[Pictures]
ADD CONSTRAINT [PK_Pictures]
    PRIMARY KEY CLUSTERED ([ID] ASC);