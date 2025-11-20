--Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside it, then calculate it's percentage
SELECT Make, 
COUNT(*) Number_Of_Vehicales,
(Select COUNT(*) From  VehicleDetails) As Total_Vehicles,
((COUNT(*) * 1.0)/(Select COUNT(*) From  VehicleDetails)*1.0) As [PERCENT] From VehicleDetails
INNER JOIN Makes ON Makes.MakeID = VehicleDetails.MakeID
WHERE YEAR BETWEEN 1950 AND 2000
GROUP BY Make
ORDER BY Number_Of_Vehicales DESC;


--Dr. Mohamed Abu-Hadhoud Solution:
SELECT *, CAST(Number_Of_Vehicales as decimal) / CAST(Total_Vehicles as decimal) AS [Percentage] FROM 
(
    SELECT Make, 
    COUNT(*) Number_Of_Vehicales,
    (Select COUNT(*) From  VehicleDetails) As Total_Vehicles FROM VehicleDetails
    INNER JOIN Makes ON Makes.MakeID = VehicleDetails.MakeID
    WHERE YEAR BETWEEN 1950 AND 2000
    GROUP BY Make
) R1
ORDER BY Number_Of_Vehicales DESC