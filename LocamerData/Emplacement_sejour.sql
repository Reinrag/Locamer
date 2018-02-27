CREATE TABLE [dbo].[Emplacement_Sejour]
(
	[codeReservation]      INT           NOT NULL,
    [codeEmplacement]      NVARCHAR (3) NOT NULL,
    PRIMARY KEY CLUSTERED ([codeReservation] ASC, [codeEmplacement] ASC),
	 CONSTRAINT [FK_dbo.Emplacement_Sejour_dbo.Reservation_codeReservation] FOREIGN KEY ([codeReservation]) 
        REFERENCES [dbo].[Reservation] ([codeReservation]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.Emplacement_Sejour_dbo.Emplacement_codeEmplacement] FOREIGN KEY ([codeEmplacement]) 
        REFERENCES [dbo].[Emplacement] ([codeEmplacement]) ON DELETE CASCADE
)
