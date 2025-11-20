--Get all Makes/Count Of Vehicles that manufactures more than 20K Vehicles
Select Make, COUNT(*) As Number_Of_Vehicles From VehicleDetails
Inner join Makes On VehicleDetails.MakeID = Makes.MakeID
Group by Make
Having Count(*) > 20000
Order by Number_Of_Vehicles Desc