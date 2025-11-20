--Get all Vehicle_Display_Name, NumDoors and add extra column to describe number of doors by words, and if door is null display 'Not Set'
SELECT DISTINCT NumDoors from VehicleDetails --To discover the total number of doors in the database.

SELECT  Vehicle_Display_Name, NumDoors,
CASE  
    WHEN NumDoors IS NULL THEN 'Not Set'
    WHEN NumDoors = 2 THEN 'Two Doors'
    WHEN NumDoors = 3 THEN 'three Doors'
    WHEN NumDoors = 4 THEN 'Four Doors'
    WHEN NumDoors = 5 THEN 'Five Doors'
    WHEN NumDoors = 6 THEN 'six Doors'
    WHEN NumDoors = 7 THEN 'Seven Doors'
    WHEN NumDoors = 8 THEN 'Eight Doors'
End AS DoorDescription
FROM VehicleDetails