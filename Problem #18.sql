--Get total vehicles per DriveTypeName Per Make and order them per make asc then per total Desc
Select DriveTypeName, Make, Count(*) AS Total_Vechicles from VehicleDetails
Inner join DriveTypes ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
Inner join Makes ON Makes.MakeID = VehicleDetails.MakeID
group by Make, DriveTypeName
Order by Total_Vechicles Desc