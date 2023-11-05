ALTER TABLE BillingRecords
ADD COLUMN medical_app_record_id INTEGER;

-- Then, add the foreign key constraint
ALTER TABLE BillingRecords
ADD CONSTRAINT FK_BillingRecords_MedicalAppointment
FOREIGN KEY (medical_app_record_id)
REFERENCES MedicalAppointmentRecords (medical_app_record_id);