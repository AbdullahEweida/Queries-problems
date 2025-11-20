--Get all Makes that runs with GAS
SELECT Distinct Make, FuelTypes.FuelTypeName FROM VehicleDetails
INNER JOIN FuelTypes ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
INNER JOIN Makes On Makes.MakeID = VehicleDetails.MakeID
WHERE FuelTypeName = N'Gas'
ORDER BY Make;