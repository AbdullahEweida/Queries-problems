--Get Number of Models Per Make
SELECT Make, COUNT(ModelName) AS NumModels FROM MakeModels
INNER JOIN Makes ON Makes.MakeID = MakeModels.MakeID
GROUP BY Make
ORDER BY NumModels DESC