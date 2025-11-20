--Count Vehicles by make and order them by NumberOfVehicles from high to low.
Select Make, COUNT(*) As Number_Of_Vehicles From VehicleDetails
Inner join Makes On VehicleDetails.MakeID = Makes.MakeID
Group by Make
Order by Number_Of_Vehicles Desc