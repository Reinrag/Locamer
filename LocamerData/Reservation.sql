CREATE TABLE [dbo].[Reservation]
(
    [codeReservation] INT           IDENTITY (1, 1) NOT NULL,
    [codeClient]    INT NULL,
	[codeSejour]	INT NULL,
    [dateDebut]  DATETIME           NOT NULL,
    [dateFin]  DATETIME           NOT NULL,
	[prixReservation]  FLOAT           NULL,
	PRIMARY KEY CLUSTERED ([codeReservation] ASC),
	 CONSTRAINT [FK_dbo.Reservation_dbo.Client_codeClient] FOREIGN KEY ([codeClient]) 
        REFERENCES [dbo].[Client] ([codeClient]) ON DELETE CASCADE,
	CONSTRAINT [FK_dbo.Reservation_dbo_.TypeSejour_codeSejour] FOREIGN KEY ([codeSejour]) 
        REFERENCES [dbo].[TypeSejour] ([codeSejour]) ON DELETE CASCADE,
)
