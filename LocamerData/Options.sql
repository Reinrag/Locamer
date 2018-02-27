CREATE TABLE [dbo].[Option]
(
	[codeOption]      INT           IDENTITY (1, 1) NOT NULL,
    [libelleOption]       NVARCHAR (50) NOT NULL,
    [qteDispo]      INT  NOT NULL,
	[prixOption] FLOAT NOT Null
    PRIMARY KEY CLUSTERED ([codeOption] ASC)
)
