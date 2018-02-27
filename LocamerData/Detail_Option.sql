CREATE TABLE [dbo].[Detail_Option]
(
	  [codeReservation] INT NOT NULL,
    [codeOption]        INT NOT NULL,
    [qteDemande]     INT NOT NULL,
    [dureeOption]    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([codeReservation] ASC, [codeOption] ASC),
    CONSTRAINT [FK_dbo.Detail_Option_dbo.Reservation_codeReservation] FOREIGN KEY ([codeReservation]) 
        REFERENCES [dbo].[Reservation] ([codeReservation]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.Detail_Option_dbo.Options_codeOption] FOREIGN KEY ([codeOption]) 
        REFERENCES [dbo].[Options] ([codeOption]) ON DELETE CASCADE
)

