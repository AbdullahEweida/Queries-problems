--Get all Makes that manufactures DriveTypeName = FWD
Select Distinct Make from Makes 
Inner join VehicleDetails On VehicleDetails.MakeID = Makes.MakeID
Inner join DriveTypes On VehicleDetails.DriveTypeID = [dbo].[DriveTypes].[DriveTypeID]
where DriveTypeName = 'FWD'
Order by Make