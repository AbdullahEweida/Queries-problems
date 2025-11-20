--Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'
SELECT * FROM VehicleDetails
INNER JOIN Bodies ON Bodies.BodyID = VehicleDetails.BodyID
WHERE Bodies.BodyName = 'Coupe' OR Bodies.BodyName = 'Hatchback' OR Bodies.BodyName = 'Sedan'

--Dr. Mohammed Abu-Hadhoud Solution 
SELECT       BodyName, VehicleDetails.*
FROM            VehicleDetails INNER JOIN
                         Bodies ON VehicleDetails.BodyID = Bodies.BodyID
Where BodyName in ('Coupe','Hatchback','Sedan')  -- This better than me :(