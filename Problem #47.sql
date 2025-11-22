--Get the highest number of models manufactured
SELECT COUNT(MakeModels.ModelID) AS HighestNumberOfModels FROM MakeModels
GROUP BY MakeID
HAVING COUNT(MakeModels.ModelID) IN 
(
    SELECT TOP 1 COUNT(MakeModels.ModelID) AS HighestNumberOfModels FROM MakeModels
    GROUP BY MakeID
    ORDER BY HighestNumberOfModels DESC
)

--Dr. Mo Abu-Hadhoud
select Max(NumberOfModels) as MaxNumberOfModels
from
(
SELECT Makes.Make, COUNT(*) AS
NumberOfModels
FROM Makes INNER JOIN
MakeModels ON
Makes.MakeID = MakeModels.MakeID
GROUP BY Makes.Make
) R1