CREATE TABLE [dbo].[SignUpData] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Name]           NCHAR(10) NULL,
    [Gender]         NCHAR(50) NULL,
    [Marital Status] NCHAR(50) NULL,
    [Username]       NCHAR(10) NULL,
    [Password]       NCHAR(10) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

