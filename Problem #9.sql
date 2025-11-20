--Get all vehicles that runs with GAS
SELECT * FROM VehicleDetails 
INNER JOIN FuelTypes ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
WHERE FuelTypeName = 'GAS'