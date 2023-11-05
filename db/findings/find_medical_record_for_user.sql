
SELECT 
username,firstname,lastname,
MedicalAppointmentRecords.`appointment_datetime` AS "Appointment Date & Time",
MedicalAppointmentRecords.`last_full_medical_checkup_date` AS "Last Full Medical Checkup",
MedicalAppointmentRecords.`medical_information_summary` AS "Medical Info Summary",
MedicalAppointmentRecords.`appointment_summary` AS "Appointment Summary"
FROM Users 
JOIN MedicalAppointmentRecords ON Users.`user_id`= MedicalAppointmentRecords.`patient_id`
WHERE Users.`username` = "patient1"