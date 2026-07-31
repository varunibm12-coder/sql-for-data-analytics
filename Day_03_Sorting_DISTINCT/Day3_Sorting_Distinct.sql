SELECT *
FROM Patients;
SELECT *
FROM Patients
ORDER BY patient_name;
SELECT *
FROM Patients
ORDER BY patient_name DESC;
SELECT *
FROM Patients
ORDER BY patient_id;
SELECT *
FROM Patients
ORDER BY patient_id DESC;
SELECT *
FROM Patients
ORDER BY age;
SELECT *
FROM Patients
ORDER BY age DESC;
SELECT *
FROM Patients
ORDER BY bill_amount;
SELECT *
FROM Patients
ORDER BY bill_amount DESC;
SELECT *
FROM Patients
ORDER BY city;
SELECT *
FROM Patients
ORDER BY disease;
SELECT *
FROM Patients
ORDER BY doctor;
SELECT *
FROM Patients
ORDER BY admission_date;
SELECT * 
FROM Patients
ORDER BY city,patient_name;
SELECT *
FROM Patients
ORDER BY city asc,disease desc;
SELECT DISTINCT city
FROM Patients;
SELECT DISTINCT disease
FROM Patients;
SELECT DISTINCT city
FROM Patients;
SELECT DISTINCT gender
FROM Patients;
SELECT DISTINCT disease,gender
FROM Patients;
