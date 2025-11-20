--Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite'
Select distinct Makes.MakeID , Make, SubModelName from VehicleDetails
Inner join Makes ON Makes.MakeID = VehicleDetails.MakeID
Inner join SubModels On SubModels.ModelID = VehicleDetails.ModelID
where SubModelName = 'Elite'