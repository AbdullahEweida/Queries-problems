--Get Make, FuelTypeName and Number of Vehicles per FuelType per Make
SELECT Make, FuelTypeName, 
COUNT(*) AS Number_Of_Vehicles FROM VehicleDetails
INNER JOIN Makes On VehicleDetails.MakeID = Makes.MakeID
INNER Join FuelTypes ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
GROUP BY Make, FuelTypeName
ORDER BY Make