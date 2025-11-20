--Get percentage of vehicles that has no doors specified
Select (Count(*)*1.0)/(Select Count(*) from VehicleDetails)*1.0 As PercOfNoSpecifiedDoors from VehicleDetails
where NumDoors is null

--Dr. Mohamed Abu-Hadhoud Solution
select 
	(
	
	
		CAST(	(select count(*) as TotalWithNoSpecifiedDoors from VehicleDetails
		where NumDoors is Null) as float)


		/
	
	
		Cast( (select count(*) from VehicleDetails as TotalVehicles) as float)
	
	
	) as PercOfNoSpecifiedDoors