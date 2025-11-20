--Get number vehicles made between 1950 and 2000 per make and order them by Number Of Vehicles Descending
SELECT  Make, COUNT(*) As Number_Of_Vehicales FROM Makes 
INNER JOIN VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID
WHERE [Year] BETWEEN 1950 And 2000
GROUP BY Makes.Make
ORDER BY Number_Of_Vehicales DESC