--Get the Lowest Manufacturers manufactured the lowest number of models
SELECT Make, COUNT(*) AS NumberOfModels FROM MakeModels
INNER JOIN Makes ON Makes.MakeID = MakeModels.MakeID
GROUP BY Make
HAVING COUNT(*) = 
(
    SELECT MIN(NumberOfModels) 
    FROM 
    (
        SELECT MakeID, COUNT(*) AS NumberOfModels FROM MakeModels
        GROUP BY MakeID
    )R1
)