--Get all Vehicle_Display_Name, year, Age for vehicles that their age between 15 and 25 years old
SELECT 
    VehicleDetails.Vehicle_Display_Name,
    VehicleDetails.[Year],
    Age = YEAR(GETDATE()) - VehicleDetails.[Year] 
FROM VehicleDetails
WHERE YEAR(GETDATE()) - VehicleDetails.[Year] BETWEEN 5 and 25
ORDER BY Age DESC

--Dr. Mo Abo-Hadhoud Solution
select * from
(
Select VehicleDetails.Vehicle_Display_Name, Year,
Age= YEAR(GetDate()) - VehicleDetails.year
from VehicleDetails
) R1
Where Age between 15 and 25
ORDER BY Age DESC