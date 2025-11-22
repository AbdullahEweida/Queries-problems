--Get Total Number Of Doors Manufactured by 'Ford'
SELECT Make, SUM(NumDoors) AS TotalNumberOfDoors FROM VehicleDetails
INNER JOIN Makes ON Makes.MakeID = VehicleDetails.MakeID
WHERE Make = 'Ford'
GROUP BY Make