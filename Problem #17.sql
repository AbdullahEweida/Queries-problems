--Get total Makes that Mantufactures DriveTypeName=FWD
Select Count(*) as Total_Makes from
(
	Select Distinct Make from Makes 
	Inner join VehicleDetails On VehicleDetails.MakeID = Makes.MakeID
	Inner join DriveTypes On VehicleDetails.DriveTypeID = [dbo].[DriveTypes].[DriveTypeID]
	where DriveTypeName = 'FWD'
)R1