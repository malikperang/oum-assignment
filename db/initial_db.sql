CREATE TABLE `Users` (
  `user_id` integer AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(200),
  `email` varchar(255),
  `password` varchar(255),
  `firstname` varchar(255),
  `lastname` varchar(255),
  `phone_number` varchar(100),
  `user_role_id` integer,
  `department_id` integer,
  `created_at` datetime
);

CREATE TABLE `UserRoles` (
  `user_role_id` integer AUTO_INCREMENT PRIMARY KEY,
  `role_name` varchar(100),
  `role_descriptions` text
);

CREATE TABLE `Departments` (
  `department_id` integer AUTO_INCREMENT PRIMARY KEY,
  `department_name` varchar(100),
  `department_code` varchar(100),
  `department_descriptions` text,
  `building_no` integer,
  `floor_level_no` integer,
  `department_phone_no` integer
);

CREATE TABLE `MedicalAppointmentRecords` (
  `medical_app_record_id` integer AUTO_INCREMENT PRIMARY KEY,
  `patient_id` integer,
  `attended_doctor_id` integer,
  `appointment_summary` text,
  `last_full_medical_checkup_date` datetime,
  `medical_information_summary` text,
  `appointment_datetime` datetime
);

CREATE TABLE `Wards` (
  `ward_id` integer AUTO_INCREMENT PRIMARY KEY,
  `ward_name` varchar(100),
  `ward_number` integer,
  `total_bed` integer,
  `availability_status` tinyint(1),
  `building_no` integer
);

CREATE TABLE `WardBookingRecords` (
  `ward_record_id` integer AUTO_INCREMENT PRIMARY KEY,
  `ward_id` integer,
  `patient_id` integer,
  `checkin_date` datetime,
  `checkout_date` datetime
);

CREATE TABLE `BillingRecords` (
  `billing_record_id` integer AUTO_INCREMENT PRIMARY KEY,
  `patient_id` integer,
  `total_amount` decimal(10,2),
  `payment_status` tinyint(1)
);

CREATE TABLE `PharmacistBillingRecords` (
  `pharmacist_billing_record_id` integer AUTO_INCREMENT PRIMARY KEY,
  `billing_record_id` integer,
  `pharmacist_inventory_id` integer
);

CREATE TABLE `PharmacistInventory` (
  `pharmacist_inventory_id` integer AUTO_INCREMENT PRIMARY KEY,
  `item_name` varchar(255),
  `item_descriptions` varchar(255),
  `consumption_instructions` varchar(255),
  `quantity` integer,
  `price` decimal(10,2),
  `pharmacist_supplier_id` integer
);

CREATE TABLE `PharmacistSuppliers` (
  `pharmacist_supplier_id` integer AUTO_INCREMENT PRIMARY KEY,
  `supplier_name` varchar(255),
  `supplier_address` varchar(255),
  `supplier_phone_no` integer
);

CREATE TABLE `OncallSchedules` (
  `oncall_schedule_id` integer AUTO_INCREMENT PRIMARY KEY,
  `doctor_id` integer,
  `start_date` datetime,
  `end_date` datetime
);


ALTER TABLE `Users` ADD FOREIGN KEY (`user_role_id`) REFERENCES `UserRoles` (`user_role_id`);

ALTER TABLE `Users` ADD FOREIGN KEY (`department_id`) REFERENCES `Departments` (`department_id`);

ALTER TABLE `MedicalAppointmentRecords` ADD FOREIGN KEY (`patient_id`) REFERENCES `Users` (`user_id`);

ALTER TABLE `MedicalAppointmentRecords` ADD FOREIGN KEY (`attended_doctor_id`) REFERENCES `Users` (`user_id`);

ALTER TABLE `WardBookingRecords` ADD FOREIGN KEY (`ward_id`) REFERENCES `Wards` (`ward_id`);

ALTER TABLE `WardBookingRecords` ADD FOREIGN KEY (`patient_id`) REFERENCES `Users` (`user_id`);

ALTER TABLE `BillingRecords` ADD FOREIGN KEY (`patient_id`) REFERENCES `Users` (`user_id`);

ALTER TABLE `PharmacistBillingRecords` ADD FOREIGN KEY (`billing_record_id`) REFERENCES `BillingRecords` (`billing_record_id`);

ALTER TABLE `PharmacistBillingRecords` ADD FOREIGN KEY (`pharmacist_inventory_id`) REFERENCES `PharmacistInventory` (`pharmacist_inventory_id`);

ALTER TABLE `PharmacistInventory` ADD FOREIGN KEY (`pharmacist_supplier_id`) REFERENCES `PharmacistSuppliers` (`pharmacist_supplier_id`);

ALTER TABLE `OncallSchedules` ADD FOREIGN KEY (`doctor_id`) REFERENCES `Users` (`user_id`);
