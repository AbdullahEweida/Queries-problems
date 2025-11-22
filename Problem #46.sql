--Get the highest 3 manufacturers that make the highest number of models
SELECT Make, COUNT(ModelID) AS NumberOfModels FROM MakeModels
INNER JOIN Makes ON MakeModels.MakeID = Makes.MakeID
GROUP BY Make
HAVING COUNT(ModelID) IN 
(
    SELECT Distinct top 3 COUNT(ModelID) AS HighestNumberOfModels FROM MakeModels
    INNER JOIN Makes ON MakeModels.MakeID = Makes.MakeID
    GROUP BY Make
    ORDER BY HighestNumberOfModels Desc
)
ORDER BY NumberOfModels DESC

--Dr. Mo Abu-Hahoud Solution
SELECT TOP 3 Makes.Make, COUNT(*) AS NumberOfModels FROM Makes 
INNER JOIN MakeModels ON Makes.MakeID = MakeModels.MakeID
GROUP BY Makes.Make
Order By NumberOfModels Desc