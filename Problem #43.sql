--Get Make and Total Number Of Doors Manufactured Per Make
SELECT Make, SUM(NumDoors) AS TotalNumberOfDoors FROM VehicleDetails
INNER JOIN Makes ON Makes.MakeID = VehicleDetails.MakeID
GROUP BY Make