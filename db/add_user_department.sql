-- Insert fake department data for the hospital
INSERT INTO Departments (department_name, department_code, department_descriptions, building_no, floor_level_no, department_phone_no)
VALUES
  ('Cardiology', 'CARD', 'Cardiology department', 1, 2, 1234567890),
  ('Emergency Room', 'ER', 'Emergency Room department', 2, 1, 987654320),
  ('Radiology', 'RAD', 'Radiology department', 3, 3, 555123457),
  ('Surgery', 'SURG', 'Surgery department', 4, 4, 111222333),
  ('Administration', 'ADMIN', 'Administrative department', 5, 1, 999887777),
  ('General Services', 'GEN', 'General Services department', 6, 2, 888999777);

  -- Clear department_id for all Users
UPDATE Users
SET department_id = NULL;

-- Update department_id for Doctors (user_role_id = 3) with a random department ID between 13 and 16
UPDATE Users
SET department_id = FLOOR(13 + RAND() * 4)
WHERE user_role_id = 3;

-- Update department_id for Admins and General Staff
UPDATE Users
SET department_id = (SELECT department_id FROM Departments WHERE department_name = 'Administration')
WHERE user_role_id = 1;

UPDATE Users
SET department_id = (SELECT department_id FROM Departments WHERE department_name = 'General Services')
WHERE user_role_id = 5;
