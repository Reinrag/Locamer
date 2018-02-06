CREATE TABLE [dbo].[Client]
(
	[codeClient]      INT           IDENTITY (1, 1) NOT NULL,
    [nomClient]       NVARCHAR (50) NOT NULL,
    [prenomClient]      NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([codeClient] ASC)
)
