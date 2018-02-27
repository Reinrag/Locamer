/*
Modèle de script de post-déploiement							
--------------------------------------------------------------------------------------
 Ce fichier contient des instructions SQL qui seront ajoutées au script de compilation.		
 Utilisez la syntaxe SQLCMD pour inclure un fichier dans le script de post-déploiement.			
 Exemple :      :r .\monfichier.sql								
 Utilisez la syntaxe SQLCMD pour référencer une variable dans le script de post-déploiement.		
 Exemple :      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
MERGE INTO Tarif AS Target 
USING (VALUES 
        (1, 'Economique', 10.00), 
        (2, 'Classique', 14.00), 
        (3, 'Luxe', 21.00)
) 
AS Source (codeTarif, libelleTarif, prixTarif) 
ON Target.codeTarif = Source.codeTarif 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (libelleTarif, prixTarif) 
VALUES (libelleTarif, prixTarif);

MERGE INTO Emplacement AS Target 
USING (VALUES 
        (A1, 1, 9, true), 
        (A2, 1, 10, false), 
        (A3, 2, 8, false),
		(B1, 3, 3, true), 
        (B2, 1, 10, false), 
        (B3, 2, 6, true),
		(C1, 2, 7, false), 
        (C2, 2, 7, false), 
        (C3, 2, 7, true),
		(D1, 3, 5, true), 
        (D2, 3, 5, true), 
        (D3, 3, 4, true),
		(E1, 1, 11, false), 
        (E2, 1, 10, false), 
        (E3, 1, 10, false)
) 
AS Source (codeEmplacement, codeTarif, capacite, terrase) 
ON Target.codeEmplacement = Source.codeEmplacement 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (codeEmplacement, codeTarif, capacite, terrase) 
VALUES (codeEmplacement, codeTarif, capacite, terrase);

MERGE INTO TypeSejour AS Target 
USING (VALUES 
        (1, 'Normal', 1.00), 
        (2, 'Comité entreprise', 0.90), 
        (3, 'Famille', 0.80),
		(4, 'Sénior', 0.65)
) 
AS Source (codeSejour, libelleSejour, coefSejour) 
ON Target.codeSejour = Source.codeSejour 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (libelleSejour, coefSejour) 
VALUES (libelleSejour, coefSejour);

MERGE INTO Client AS Target 
USING (VALUES 
        (1, 'TISSOT', 'David', 'davidtissot@gmail.com', '0645283481'), 
        (2, 'COSSON', 'Philippe', 'philippecosson@gmail.com', '0642854261'), 
        (3, 'TRICOT', 'Brigitte', 'brigittetricot@gmail.com', '0696325482'),
		(4, 'KEMADJOU', 'Joseph', 'jokemadjou@gmail.com', '0482694756')
) 
AS Source (codeClient, nomClient, prenomClient, emailClient, telephoneClient) 
ON Target.codeClient = Source.codeClient 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (nomClient, prenomClient, emailClient, telephoneClient) 
VALUES (nomClient, prenomClient, emailClient, telephoneClient);

MERGE INTO Sejour AS Target 
USING (VALUES 
        (1, 1, '2018-06-01', '2018-06-08', 168), 
        (2, 3, '2018-02-24', '2018-02-28', 154.4)
		)
AS Source (codeReservation, codeClient, dateDebut, dateFin, prixReservation) 
ON Target.codeReservation = Source.codeReservation 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (codeClient, dateDebut, dateFin, prixReservation) 
VALUES (codeClient, dateDebut, dateFin, prixReservation);

MERGE INTO Emplacement_Sejour AS Target 
USING (VALUES 
        (1, 'C3'),
		(1, 'E3'), 
        (2, 'C2')
		)
AS Source (codeReservation, codeEmplacement) 
ON Target.codeReservation = Source.codeReservation
ON Target.codeEmplacement = Source.codeEmplacement 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (codeReservation, codeEmplacement) 
VALUES (codeReservation, codeEmplacement);

MERGE INTO Options AS Target 
USING (VALUES 
        (1, 'Barbecue', 15, 3.00),
		(2, 'Internet par wifi',20, 3.00), 
        (3, 'Lit bébé',15, 0.00),
		(4, 'Poussette',25 , 8.00),
		(5, 'Transat', 50, 4.00), 
        (6, 'Vélo', 20, 8.00),
		(7, 'Canoé', 10, 14.00)
		)
AS Source (codeOption, libelleOption, qteOption, prixOption) 
ON Target.codeOption = Source.codeOption 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (libelleOption, qteOption, prixOption) 
VALUES (libelleOption, qteOption, prixOption);

MERGE INTO Detail_Options AS Target 
USING (VALUES 
        (2, 1, 1, 2),
		(2, 6, 4, 2)
		)
AS Source (codeReservation, codeOption, qteDemande, dureeOption) 
ON Target.codeReservation = Source.codeReservation
ON Target.codeOption = Source.codeOption 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (codeOption, qteDemande, dureeOption) 
VALUES (codeOption, qteDemande, dureeOption);
