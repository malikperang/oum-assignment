-- Create dummy billing records for patients with medical appointments
INSERT INTO BillingRecords (patient_id, appointment_id, total_amount, payment_status)
SELECT 
   	u.user_id,
    a.medical_app_record_id,
    ROUND(RAND() * 1000 + 100, 2), -- Random amount between 100 and 1100
    ROUND(RAND())
FROM
    MedicalAppointmentRecords a
    JOIN Users u ON a.patient_id = u.user_id;
