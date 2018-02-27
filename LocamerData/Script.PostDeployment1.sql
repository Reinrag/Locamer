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
        ('A1', 1, 9, 1), 
        ('A2', 1, 10, 0), 
        ('A3', 2, 8, 0),
		('B1', 3, 3, 1), 
        ('B2', 1, 10, 0), 
        ('B3', 2, 6, 1),
		('C1', 2, 7, 0), 
        ('C2', 2, 7, 0), 
        ('C3', 2, 7, 1),
		('D1', 3, 5, 1), 
        ('D2', 3, 5, 1), 
        ('D3', 3, 4, 1),
		('E1', 1, 11, 0), 
        ('E2', 1, 10, 0), 
        ('E3', 1, 10, 0)
) 
AS Source (codeEmplacement, codeTarif, capacite, terrasse) 
ON Target.codeEmplacement = Source.codeEmplacement 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (codeTarif, capacite, terrasse) 
VALUES (codeTarif, capacite, terrasse);

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
AS Source (codeOption, libelleOption, qteDispo, prixOption) 
ON Target.codeOption = Source.codeOption 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (libelleOption, qteDispo, prixOption) 
VALUES (libelleOption, qteDispo, prixOption);

