--Get all vehicles that have the minimum Engine_CC
SELECT * FROM VehicleDetails
WHERE Engine_CC = (Select MIN(Engine_CC) from VehicleDetails)