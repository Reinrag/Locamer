CREATE TABLE [dbo].[Option]
(
	[codeOption]      INT           IDENTITY (1, 1) NOT NULL,
    [libelleOption]       NVARCHAR (50) NULL,
    [qteDispo]      INT  NULL
    PRIMARY KEY CLUSTERED ([codeOption] ASC)
)
