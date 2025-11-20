--Get make and vehicles that the engine contains 'OHV' and have Cylinders = 4
SELECT Make, COUNT(*) AS TotalVehicles FROM VehicleDetails
INNER JOIN Makes ON Makes.MakeID = VehicleDetails.MakeID
WHERE Engine LIKE '%OHV%' AND Engine_Cylinders = 4
GROUP BY Make


--Dr. Mohammed Abu-Hadhoud Solution
SELECT         Makes.Make, VehicleDetails.*
FROM            VehicleDetails INNER JOIN
                         Makes ON VehicleDetails.MakeID = Makes.MakeID
WHERE        (VehicleDetails.Engine LIKE '%OHV%') AND (VehicleDetails.Engine_Cylinders = 4)