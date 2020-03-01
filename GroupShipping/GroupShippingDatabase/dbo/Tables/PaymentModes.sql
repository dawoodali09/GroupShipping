-- Creating table 'PaymentModes'
CREATE TABLE [dbo].[PaymentModes] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(200)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Created] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO
-- Creating primary key on [ID] in table 'PaymentModes'
ALTER TABLE [dbo].[PaymentModes]
ADD CONSTRAINT [PK_PaymentModes]
    PRIMARY KEY CLUSTERED ([ID] ASC);