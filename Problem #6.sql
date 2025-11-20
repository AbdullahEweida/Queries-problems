--Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside
SELECT Make, 
COUNT(*) Number_Of_Vehicales,
(Select COUNT(*) From  VehicleDetails) As Total_Vehicles From VehicleDetails
INNER JOIN Makes ON Makes.MakeID = VehicleDetails.MakeID
WHERE YEAR BETWEEN 1950 AND 2000
GROUP BY Make
ORDER BY Number_Of_Vehicales DESC