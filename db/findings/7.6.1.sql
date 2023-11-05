UPDATE Wards
SET availability_status = 0
WHERE ward_name IN ('Rose', 'Tulip');

-- Retrieve the updated records
SELECT *
FROM Wards