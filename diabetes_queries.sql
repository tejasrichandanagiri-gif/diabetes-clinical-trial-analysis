-- Q1 Which drug reduced HbA1c more effectively? 
SELECT 
    medicine_type,
    COUNT(patient_id) AS total_patients,
    ROUND(AVG(hba1c_start), 2) AS avg_hba1c_start,
    ROUND(AVG(hba1c_end), 2) AS avg_hba1c_end,
    ROUND(AVG(hba1c_change), 2) AS avg_hba1c_change
FROM treatment_ultra_cleaned
GROUP BY medicine_type
ORDER BY avg_hba1c_change ASC;

-- Q2 Does BMI affect drug response?
SELECT 
    t.medicine_type,
    CASE 
        WHEN p.bmi < 18.5 THEN 'Underweight'
        WHEN p.bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
        WHEN p.bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
        ELSE 'Obese'
    END AS bmi_category,
    COUNT(p.patient_id) AS total_patients,
    ROUND(AVG(t.hba1c_change), 2) AS avg_hba1c_change
FROM patients_cl p
JOIN treatment_ultra_cleaned t 
    ON p.patient_id = t.patient_id
GROUP BY t.medicine_type, bmi_category
ORDER BY t.medicine_type, avg_hba1c_change ASC;

-- Q3 Adverse Drug Reactions
SELECT 
    medicine_type,
    adverse_reaction,
    COUNT(*) AS total_patients,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY medicine_type), 2) AS percentage
FROM treatment_ultra_cleaned
GROUP BY medicine_type, adverse_reaction
ORDER BY medicine_type, total_patients DESC;

--Q4 Gender Vs DrugResponse


