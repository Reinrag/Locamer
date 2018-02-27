CREATE TABLE [dbo].[Emplacement]
(
	[codeEmplacement]      NVARCHAR (3) NOT NULL,
    [codeTarif]       INT NULL,
    [capacite]      INT NULL,
    [terrasse]		BIT      NULL,
    PRIMARY KEY CLUSTERED ([codeEmplacement] ASC),
	CONSTRAINT [FK_dbo.Emplacement_dbo.Tarif_codeTarif] FOREIGN KEY ([codeTarif]) 
        REFERENCES [dbo].[Tarif] ([codeTarif]) ON DELETE CASCADE,
)
