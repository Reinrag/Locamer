CREATE TABLE [dbo].[TypeSejour]
(
	[codeSejour]     INT           IDENTITY (1, 1) NOT NULL,
    [libelleSejour]       NVARCHAR (50) NULL,
    [coefSejour]      FLOAT  NULL,
    PRIMARY KEY CLUSTERED ([codeSejour] ASC)
)
