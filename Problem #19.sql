--Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000

Select distinct DriveTypeName, Make, Count(*) AS Total_Vechicles from VehicleDetails
Inner join DriveTypes ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
Inner join Makes ON Makes.MakeID = VehicleDetails.MakeID
group by Make, DriveTypeName
Having Count(*) >10000
Order by Total_Vechicles Desc