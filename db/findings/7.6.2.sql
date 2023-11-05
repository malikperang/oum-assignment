-- Update the appointment date to July 14, 2023, at 10:00 AM for the patient named "John Doe"
UPDATE MedicalAppointmentRecords
SET appointment_datetime = '2023-07-14 10:00:00'
WHERE patient_id = (SELECT user_id FROM Users WHERE firstname = 'John' AND lastname = 'Doe');
