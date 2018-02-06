CREATE TABLE [dbo].[Tarif]
(
	[codeTarif]      INT           IDENTITY (1, 1) NOT NULL,
    [libelleTarif]       NVARCHAR (50) NULL,
    [prixTarif]      FLOAT  NULL,
    PRIMARY KEY CLUSTERED ([codeTarif] ASC)
)
