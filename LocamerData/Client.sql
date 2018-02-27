CREATE TABLE [dbo].[Client]
(
	[codeClient]      INT           IDENTITY (1, 1) NOT NULL,
    [nomClient]       NVARCHAR (50) NOT NULL,
    [prenomClient]      NVARCHAR (50) NOT NULL,
	[emailClient]      NVARCHAR (50) NOT NULL,
	[telephoneClient]      NVARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([codeClient] ASC)
)
