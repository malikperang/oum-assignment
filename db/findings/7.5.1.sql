SELECT 
    Users.user_id,
    Users.firstname,
    Users.lastname,
    (SELECT COUNT(*) FROM MedicalAppointmentRecords WHERE MedicalAppointmentRecords.attended_doctor_id = Users.user_id) AS appointment_count
FROM Users
WHERE Users.user_role_id = 3
ORDER BY appointment_count;
