-- Create dummy data for PharmacistBillingRecords
INSERT INTO PharmacistBillingRecords (billing_record_id, pharmacist_inventory_id)
SELECT
    BR.billing_record_id,
    PI.pharmacist_inventory_id
FROM
    (SELECT billing_record_id FROM BillingRecords ORDER BY RAND() LIMIT 10) AS BR
JOIN
    (SELECT pharmacist_inventory_id FROM PharmacistInventory ORDER BY RAND() LIMIT 10) AS PI
ON 1;
