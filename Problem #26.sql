--Get all vehicles that their body is 'Sport Utility' and Year > 2020
SELECT * FROM VehicleDetails
INNER JOIN Bodies ON Bodies.BodyID = VehicleDetails.BodyID
WHERE BodyName = 'Sport Utility' and Year > 2020