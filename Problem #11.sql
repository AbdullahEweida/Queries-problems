--Get Total Makes that runs with GAS
    SELECT Count(*) As Total_Makes from (
    SELECT DISTINCT Make AS MakesThatRunsWithGAS FROM VehicleDetails
    INNER JOIN Makes ON Makes.MakeID = VehicleDetails.MakeID
    INNER JOIN FuelTypes ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
    WHERE FuelTypeName = N'Gas'
) R1