# Diabetes Clinical Trial Analysis: Auralin vs. Novodra

## Project Overview
This project analyzes a diabetes clinical trial dataset comparing two insulin drugs — **Auralin** (inhaled insulin) and **Novodra** (injectable insulin). The analysis explores drug efficacy, patient demographics, dosage patterns, and adverse reactions using **SQL** and **Tableau**.

This project was completed as part of my data analytics portfolio, combining my background in **Pharmacy (PharmD)** with data analysis skills to derive meaningful clinical insights.

---

## Tools Used
- **DB Browser for SQLite** — Data querying and analysis
- **Tableau Public** — Data visualization and dashboard
- **CSV / Excel** — Raw data files

---

## Dataset
| Table | Description |
|-------|-------------|
| `patients_cl` | Patient demographics including BMI, gender, age |
| `treatment_ultra_cleaned` | HbA1c levels, dosage, drug type, adverse reactions |

---

## Key Questions Explored
1. Which drug reduced HbA1c more effectively?
2. Does BMI affect drug response?
3. Which drug had a safer adverse reaction profile?
4. Does gender influence drug response?

---

## Key Findings

### 1. Drug Efficacy — Non-Inferiority Confirmed
| Drug | Avg HbA1c Change |
|------|-----------------|
| Auralin | -0.39 |
| Novodra | -0.40 |

Both drugs reduced HbA1c by nearly identical amounts. The 0.01 difference is clinically negligible, confirming **Auralin is non-inferior to Novodra**.

### 2. BMI vs. Drug Response
| BMI Category | Auralin | Novodra |
|-------------|---------|---------|
| Underweight | 0.42 | 0.45 |
| Normal | 0.40 | 0.39 |
| Overweight | 0.38 | 0.40 |
| Obese | 0.38 | 0.42 |

Obese patients showed the lowest drug response for both drugs — consistent with known insulin resistance research.

### 3. Adverse Reactions
| Reaction | Auralin | Novodra |
|----------|---------|---------|
| None | 91.95% | 88.57% |
| Hypoglycemia | 5.17% | 5.71% |
| Throat Irritation | 1.15% | — |
| Injection Site Discomfort | — | 3.43% |

Auralin had fewer overall adverse reactions. Side effects reflect delivery methods — inhaled vs injectable.

### 4. Gender vs. Drug Response
| Drug | Female | Male |
|------|--------|------|
| Auralin | 0.38 | 0.39 |
| Novodra | 0.40 | 0.41 |

Females responded marginally better than males on both drugs, consistently across both.

---

## Conclusions
- Auralin demonstrates **non-inferiority** to Novodra
- **BMI negatively impacts** drug response
- Auralin has a **slightly safer** adverse reaction profile
- **Female patients respond marginally better** on both drugs
- Auralin could be a preferable alternative, especially for patients who struggle with injections

---

## About Me
PharmD graduate passionate about healthcare data analytics.
Connect with me on [LinkedIn](#)