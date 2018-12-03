CREATE TABLE [dbo].[RegisterTable] (
    [UID]      INT           NOT NULL,
    [Name]     NVARCHAR (50) NULL,
    [Surname]  NVARCHAR (50) NULL,
    [City]     NVARCHAR (50) NULL,
    [Emai]     NVARCHAR (50) NULL,
    [Password] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([UID] ASC)
);

