-- Insert dummy data for PharmacistSuppliers
INSERT INTO PharmacistSuppliers (supplier_name, supplier_address, supplier_phone_no)
VALUES
    ('Pfizer', 'PJ, Kuala Lumpur', 123456789),
    ('Johnson & Johnson', 'Beranang, Selangor', 976543210),
    ('Roche', 'Beranang, Selangor', 555123457),
    ('Novartis', 'Muar, Johor', 111223333),
    ('Bayer', 'Ipoh,Perak', 999888777);

-- Insert dummy data for PharmacistInventory and associate with suppliers
INSERT INTO PharmacistInventory (item_name, item_descriptions, consumption_instructions, quantity, price, pharmacist_supplier_id)
VALUES
    ('Antibiotics', 'Treatment for bacterial infections', 'Take as directed by your doctor', 100, 15.99, 1),
    ('Pain Relievers', 'Relief from minor aches and pains', 'Follow dosage instructions', 200, 8.99, 2),
    ('Antiseptics', 'Cleans and disinfects wounds', 'Apply to affected area', 150, 4.99, 1),
    ('Vitamins and Minerals', 'Supplements for a balanced diet', 'Take one tablet daily', 300, 12.49, 4),
    ('Antifungals', 'Treatment for fungal infections', 'Apply to affected area', 50, 9.99, 3),
    ('Allergy Medications', 'Relief from allergy symptoms', 'Follow dosage instructions', 120, 7.49, 2),
    ('Antacids', 'Relief from heartburn and indigestion', 'Chew or dissolve in water', 180, 6.99, 5),
    ('Laxatives', 'Relief from constipation', 'Take as directed on the label', 90, 5.49, 4),
    ('Adhesive bandages', 'For covering small wounds', 'Apply to clean, dry skin', 250, 3.99, 1);
