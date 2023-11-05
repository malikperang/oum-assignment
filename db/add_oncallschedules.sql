-- Insert random data into OncallSchedules
INSERT INTO OncallSchedules (doctor_id, start_date, end_date)
SELECT
    doctor_id,
    TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '2023-01-01', '2023-10-01')), '2023-10-01') AS start_date,
    TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '2023-01-01', '2023-10-01')), '2023-10-01') AS end_date
FROM
    (
        SELECT user_id AS doctor_id FROM Users WHERE user_role_id = 3
    ) AS random_doctors;
