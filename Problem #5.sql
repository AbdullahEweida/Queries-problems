--Get All Makes that have manufactured more than 12000 Vehicles in years 1950 to 2000
SELECT Make, COUNT(*) As Number_Of_Vehicales FROM VehicleDetails
INNER JOIN Makes On Makes.MakeID = VehicleDetails.MakeID
WHERE ([Year] BETWEEN 1950 AND 2000)
GROUP BY Make
HAVING Count(*) > 1200
ORDER BY Number_Of_Vehicales DESC