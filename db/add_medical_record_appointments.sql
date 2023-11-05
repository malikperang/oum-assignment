-- Generate dummy data for Medical Appointment Records
-- The appointment datetime will be between January to October 2023 and between 8 a.m. to 10 p.m.
-- Drop the temporary table
DROP TEMPORARY TABLE PatientsAndDoctors;

-- Create a temporary table for patients and doctors
CREATE TEMPORARY TABLE PatientsAndDoctors AS
SELECT user_id, user_role_id,firstname,lastname
FROM Users
WHERE user_role_id = 2 OR user_role_id = 3;

-- Get the counts of patients and doctors
SELECT
    COUNT(*) AS patient_count,
    (SELECT COUNT(*) FROM Users WHERE user_role_id = 3) AS doctor_count
FROM PatientsAndDoctors
LIMIT 1;

-- Insert dummy appointment records
INSERT INTO MedicalAppointmentRecords (patient_id, attended_doctor_id, appointment_summary, last_full_medical_checkup_date, medical_information_summary, appointment_datetime)
SELECT
    -- Select random patient
    p.user_id AS patient_id,
    -- Select a random doctor
    d.user_id AS attended_doctor_id,
    -- Generate a random appointment summary
    CONCAT('Appointment with Dr. ', d.firstname, ' ', d.lastname) AS appointment_summary,
    -- Generate a random last_full_medical_checkup_date within the last year
    DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY) AS last_full_medical_checkup_date,
    -- Generate a random medical information summary
    CONCAT('Medical info for patient ', p.firstname) AS medical_information_summary,
    -- Generate a random appointment datetime between January to October 2023 and between 8 a.m. to 10 p.m.
    TIMESTAMPADD(
        HOUR,
        FLOOR(8 + (RAND() * 14)),  -- Random hour between 8 to 21 (8 a.m. to 9 p.m.)
        TIMESTAMPADD(
            DAY,
            FLOOR(RAND() * 304),  -- Random day between 0 to 303 (January to October)
            '2023-01-01 00:00:00'  -- Start date: January 1, 2023
        )
    ) AS appointment_datetime
FROM
    PatientsAndDoctors p
    -- Randomly join each patient with a doctor
    JOIN (
        SELECT *
        FROM Users
        WHERE user_role_id = 3  -- Doctors only
        ORDER BY RAND()  -- Randomize the order
--         LIMIT 1  -- Limit to 1 doctor
    ) d;



