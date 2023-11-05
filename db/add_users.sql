-- Insert 8 fake patients
INSERT INTO Users (username, email, password, firstname, lastname, phone_number, user_role_id, created_at)
VALUES
  ('patient1', 'patient1@example.com', 'password1', 'John', 'Doe', '123-456-7890', 2, NOW()),
  ('patient2', 'patient2@example.com', 'password2', 'Alice', 'Smith', '987-654-3210', 2, NOW()),
  ('patient3', 'patient3@example.com', 'password3', 'Bob', 'Johnson', '555-123-4567', 2, NOW()),
  ('patient4', 'patient4@example.com', 'password4', 'Emily', 'Brown', '111-222-3333', 2, NOW()),
  ('patient5', 'patient5@example.com', 'password5', 'Grace', 'Williams', '999-888-7777', 2, NOW()),
  ('patient6', 'patient6@example.com', 'password6', 'Henry', 'Taylor', '555-555-5555', 2, NOW()),
  ('patient7', 'patient7@example.com', 'password7', 'Olivia', 'Lee', '111-111-1111', 2, NOW()),
  ('patient8', 'patient8@example.com', 'password8', 'William', 'Davis', '123-123-1234', 2, NOW());

-- Insert 5 fake doctors
INSERT INTO Users (username, email, password, firstname, lastname, phone_number, user_role_id, created_at)
VALUES
  ('doctor1', 'doctor1@example.com', 'password1', 'Dr. Jane', 'Smith', '987-654-3210', 3, NOW()),
  ('doctor2', 'doctor2@example.com', 'password2', 'Dr. David', 'Lee', '555-123-4567', 3, NOW()),
  ('doctor3', 'doctor3@example.com', 'password3', 'Dr. Sarah', 'Johnson', '111-222-3333', 3, NOW()),
  ('doctor4', 'doctor4@example.com', 'password4', 'Dr. Michael', 'Brown', '555-555-5555', 3, NOW()),
  ('doctor5', 'doctor5@example.com', 'password5', 'Dr. Emily', 'Williams', '999-888-7777', 3, NOW());

-- Insert 3 fake admins
INSERT INTO Users (username, email, password, firstname, lastname, phone_number, user_role_id, created_at)
VALUES
  ('admin1', 'admin1@example.com', 'password1', 'Admin', 'Adminson', '555-123-4567', 1, NOW()),
  ('admin2', 'admin2@example.com', 'password2', 'Super', 'Admin', '111-222-3333', 1, NOW()),
  ('admin3', 'admin3@example.com', 'password3', 'Admin', 'Administrator', '333-444-5555', 1, NOW());

-- Insert 2 fake general staff
INSERT INTO Users (username, email, password, firstname, lastname, phone_number, user_role_id, created_at)
VALUES
  ('staff1', 'staff1@example.com', 'password1', 'Staff', 'Member', '999-888-7777', 5, NOW()),
  ('staff2', 'staff2@example.com', 'password2', 'Support', 'Staff', '777-777-7777', 5, NOW());
