--Get total vehicles that have Engin_CC above average
SELECT COUNT(*) AS TotalVechicles FROM VehicleDetails
WHERE Engine_CC > (SELECT AVG(Engine_CC) FROM VehicleDetails)