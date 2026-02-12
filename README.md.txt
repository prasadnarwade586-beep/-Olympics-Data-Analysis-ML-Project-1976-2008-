# 🏅 Olympics Data Analysis & ML Project (1976–2008)

## 📌 Project Overview

This project is an **end-to-end data analytics and machine learning solution** built using historical Olympic medal data from **1976 to 2008**. The project follows a **real-world data science workflow**, covering data profiling, cleaning, exploratory analysis, statistical analysis, machine learning modeling, SQL-based insights, and an interactive **Power BI dashboard**.

Unlike traditional BI-only projects, this project emphasizes **data science practices** using Python notebooks and model development, with Power BI used for final business-facing visualization.

---

## 🎯 Project Objectives

* Perform structured **data profiling and cleaning** on Olympic medal data
* Conduct **exploratory and statistical analysis** to identify performance patterns
* Build a **machine learning model** to analyze and predict medal-related outcomes
* Generate **SQL-based business insights**
* Create an **interactive Power BI dashboard** for executive reporting

---

## 📂 Project Structure

```
Olympics-Data-Analysis/
│
├── Dashboards/
│   └── Olympics_PowerBI_Dashboard.pbix
│
├── Data/
│   └── olympics_cleaned.csv
│
├── Notebooks/
│   ├── 01_data_profiling.ipynb
│   ├── 02_cleaning_feature_engineering.ipynb
│   ├── 03_Advanced_EDA.ipynb
│   ├── 04_Statistical_Analysis.ipynb
│   └── 05_ML_Modeling.ipynb
│
├── Report/
│   └── Olympics_Performance_Analysis_Report.pdf
│
├── Sql/
│   └── olympics_analysis.sql
│
├── venv/
├── requirements.txt
└── README.md
```

---

## 📊 Dataset Description

* **File Used:** `olympics_cleaned.csv`
* **Time Period:** Summer Olympics (1976–2008)
* **Granularity:** Each row represents one medal-winning event

### Key Columns

* `Year` – Olympic year
* `City` – Host city
* `Country` – Medal-winning country
* `Sport` – Sport category
* `Athlete` – Athlete name
* `Gender` – Athlete gender
* `Medal` – Gold / Silver / Bronze
* `Medal_Points` – Weighted medal score (Gold = 3, Silver = 2, Bronze = 1)

The dataset is pre-cleaned and validated prior to analysis.

---

## 📓 Python Notebooks Workflow

### 1️⃣ Data Profiling (`01_data_profiling.ipynb`)

* Dataset shape and structure validation
* Missing value analysis
* Duplicate checks
* Initial descriptive statistics

---

### 2️⃣ Data Cleaning & Feature Engineering (`02_cleaning_feature_engineering.ipynb`)

* Removal of invalid or incomplete records
* Standardization of categorical variables
* Creation of analytical features such as **Medal_Points**

---

### 3️⃣ Advanced Exploratory Data Analysis (`03_Advanced_EDA.ipynb`)

* Country-wise and sport-wise medal distributions
* Gender-based performance analysis
* Trend analysis across Olympic years

---

### 4️⃣ Statistical Analysis (`04_Statistical_Analysis.ipynb`)

* Hypothesis testing
* Group-based comparisons
* Distribution analysis
* Statistical validation of observed trends

---

### 5️⃣ Machine Learning Modeling (`05_ML_Modeling.ipynb`)

* Feature selection and data preparation
* Train-test split
* Model training and evaluation
* Performance metrics interpretation

This notebook demonstrates applied machine learning concepts on real-world sports data.

---

## 🗄 SQL Analysis

SQL was used to answer **business-driven analytical questions** using structured queries.

### Key SQL Capabilities

* Data validation and aggregation
* Country and sport-level performance analysis
* Trend and efficiency metrics
* Medal-weighted scoring logic

---

## 📊 Power BI Dashboard

Power BI was used as the **final visualization and reporting layer**.

### Dashboard Features

* **KPI Cards**:

  * Total Medals
  * Weighted Medal Score
  * Gold Contribution Percentage
* **Filled Map**: Country-wise medal share
* **Line Chart**: Medal points trend over time
* **Heatmap (Matrix)**: Sport vs Country medal dominance
* **Interactive Slicers**: Year and Country

### Business Value

The dashboard enables stakeholders to quickly identify dominant countries, observe long-term trends, and understand sport-level specialization patterns.

---

## 📌 Key Insights

* Olympic success is **highly concentrated** among a limited number of countries
* Medal quality (Gold-weighted scoring) provides deeper insight than raw medal counts
* Countries demonstrate **strong specialization** in specific sports
* Medal trends increase over time due to event expansion and participation growth

---

## 🛠 Tools & Technologies

* **Python** (Pandas, NumPy, Scikit-learn)
* **Jupyter Notebook**
* **SQL**
* **Power BI**
* **Git & GitHub**

---

## 🚀 How to Run the Project

1. Clone the repository
2. Create a virtual environment and install dependencies using `requirements.txt`
3. Run notebooks sequentially from `01_data_profiling.ipynb` to `05_ML_Modeling.ipynb`
4. Review SQL queries in the `Sql` folder
5. Open the Power BI dashboard (`.pbix`) for interactive analysis

---

## 📬 Author

**Prasad Narwade**
Data Analyst 

---

⭐ If you find this project useful, feel free to star the repository!
