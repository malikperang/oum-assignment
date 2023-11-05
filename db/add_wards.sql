-- Insert dummy data for the Wards table with some wards marked as not available (availability_status = 0)
INSERT INTO Wards (ward_name, ward_number, total_bed, availability_status, building_no)
VALUES
  ('Rose', 1, 150, 1, 1),
  ('Lily', 2, 200, 1, 2),
  ('Daisy', 3, 40, 0, 1),  -- Not available
  ('Tulip', 4, 33, 1, 2),
  ('Orchid', 5, 92, 0, 1),  -- Not available
  ('Sunflower', 6, 54, 1, 2);
