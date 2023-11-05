SELECT
    Users.user_id AS patient_id,
    Users.firstname AS patient_firstname,
    Users.lastname AS patient_lastname,
    (SELECT COUNT(*) FROM MedicalAppointmentRecords WHERE patient_id = Users.user_id) AS total_appointment_records
FROM Users
WHERE Users.user_role_id = 2;