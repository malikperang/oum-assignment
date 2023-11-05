SELECT 
    COUNT(*) AS "Total Medical Appointment Records",
    MAX(DATE_FORMAT(appointment_datetime, '%M')) AS "Month"
FROM `MedicalAppointmentRecords`
WHERE MONTH(appointment_datetime) = 1;
