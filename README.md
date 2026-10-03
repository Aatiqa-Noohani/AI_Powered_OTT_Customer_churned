# 📺 AI-Powered OTT Customer Churn & Revenue Intelligence Platform

<p align="center">

### Turning Customer Data into Churn Intelligence, Revenue Insights & AI-Powered Decisions

**Python • SQL • Power BI • Machine Learning • SHAP • Streamlit • K-Means**

</p>

<p align="center">

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-150458?logo=pandas)
![MySQL](https://img.shields.io/badge/MySQL-Business%20Analytics-4479A1?logo=mysql)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi)
![Scikit Learn](https://img.shields.io/badge/Scikit--Learn-ML-F7931E?logo=scikit-learn)
![XGBoost](https://img.shields.io/badge/XGBoost-ML-red)
![SHAP](https://img.shields.io/badge/SHAP-Explainable%20AI-purple)
![Streamlit](https://img.shields.io/badge/Streamlit-Web%20App-FF4B4B?logo=streamlit)

</p>

---

## 📌 Project Overview

**AI-Powered OTT Customer Churn & Revenue Intelligence Platform** is an end-to-end **Data Analytics + Business Intelligence + Machine Learning** project built around an OTT subscription business.

The platform transforms raw customer data into:

* 📊 Business insights
* 🔎 Churn-driver analysis
* 🤖 Customer churn prediction
* 🧠 Explainable AI insights
* 👥 Customer segmentation
* 💰 Revenue-risk analysis
* 🎯 Retention recommendations
* 🌐 Interactive Streamlit analytics

The project goes beyond simply building a machine learning model. It demonstrates a complete analytics lifecycle from **raw data → business analysis → predictive modeling → explainability → revenue intelligence → actionable decisions**.

---

## 🎯 Business Problem

OTT businesses depend heavily on customer retention.

When subscribers leave, the business loses recurring revenue and may need to spend additional resources acquiring replacement customers.

This project investigates questions such as:

> **Which customers are churning?**

> **What behaviors are associated with churn?**

> **Which subscription segments have higher churn?**

> **Does customer inactivity indicate increased churn risk?**

> **Which customers are potentially at risk?**

> **Why is a customer classified as high risk?**

> **How much monthly revenue could potentially be exposed to churn?**

> **What actions can the business take to improve retention?**

---

# 📊 Project at a Glance

| Metric                |         Value |
| --------------------- | ------------: |
| 👥 Total Customers    |     **5,000** |
| 🧩 Features           |        **20** |
| 🟢 Active Customers   |     **4,042** |
| 🔴 Churned Customers  |       **958** |
| 📉 Overall Churn Rate |    **19.16%** |
| 🗄️ Database          |     **MySQL** |
| 📊 BI Platform        |  **Power BI** |
| 🌐 Web Application    | **Streamlit** |
| 🤖 ML Models          |         **3** |
| 🧠 Explainability     |      **SHAP** |
| 👥 Segmentation       |   **K-Means** |

The dataset contains 5,000 customers and 20 features, with 958 churned customers and an overall churn rate of 19.16%.

---

# 🏗️ End-to-End Architecture

```text
                    ┌───────────────────────┐
                    │   OTT Customer Data   │
                    │   5,000 Customers     │
                    │      20 Features      │
                    └───────────┬───────────┘
                                │
                                ▼
                    ┌───────────────────────┐
                    │ Data Understanding &  │
                    │   Quality Checks      │
                    └───────────┬───────────┘
                                │
                ┌───────────────┼────────────────┐
                ▼               ▼                ▼
        ┌─────────────┐ ┌─────────────┐ ┌─────────────┐
        │   Python    │ │   MySQL     │ │  Power BI   │
        │     EDA     │ │  Analytics  │ │  Dashboard  │
        └──────┬──────┘ └──────┬──────┘ └──────┬──────┘
               │               │                │
               └───────────────┼────────────────┘
                               ▼
                    ┌───────────────────────┐
                    │ Business Intelligence│
                    │     & Insights       │
                    └───────────┬───────────┘
                                │
                                ▼
                    ┌───────────────────────┐
                    │   Machine Learning    │
                    │                       │
                    │ Logistic Regression   │
                    │ Random Forest         │
                    │ XGBoost               │
                    └───────────┬───────────┘
                                │
                                ▼
                    ┌───────────────────────┐
                    │   Model Evaluation    │
                    └───────────┬───────────┘
                                │
                                ▼
                    ┌───────────────────────┐
                    │    SHAP Explainable   │
                    │          AI           │
                    └───────────┬───────────┘
                                │
                    ┌───────────┴───────────┐
                    ▼                       ▼
             Global Drivers       Customer-Level
                                  Explanations
                    │                       │
                    └───────────┬───────────┘
                                ▼
                    ┌───────────────────────┐
                    │    Revenue Risk       │
                    │      Analysis         │
                    └───────────┬───────────┘
                                │
                                ▼
                    ┌───────────────────────┐
                    │ Business Actions &    │
                    │ Recommendations       │
                    └───────────────────────┘
```

---

# 🛠️ Technology Stack

### 🐍 Programming & Analytics

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Jupyter Notebook

### 🗄️ Database & SQL

* MySQL
* `GROUP BY`
* `CASE WHEN`
* Aggregations
* KPI calculations
* Customer segmentation queries
* Multi-factor churn analysis

### 📊 Business Intelligence

* Power BI
* DAX
* KPI Cards
* Interactive Slicers
* Executive Dashboards
* Customer Segmentation
* Revenue Analytics

### 🤖 Machine Learning

* Scikit-learn
* Logistic Regression
* Random Forest
* XGBoost
* K-Means Clustering

### 🧠 Explainable AI

* SHAP
* Global Feature Importance
* Individual Customer Explanations
* Churn Driver Analysis

### 🌐 Application

* Streamlit
* Interactive KPI dashboard
* Exploratory analysis
* Customer churn risk interface

---

# 🔄 Complete Project Workflow

```text
Business Problem
       ↓
Data Understanding
       ↓
Data Quality Validation
       ↓
Python EDA
       ↓
Behavioral Analysis
       ↓
MySQL Business Analysis
       ↓
Power BI Dashboard
       ↓
Feature Engineering
       ↓
Machine Learning
       ↓
Model Comparison
       ↓
SHAP Explainable AI
       ↓
Customer Segmentation
       ↓
Revenue Risk
       ↓
Business Recommendations
       ↓
Streamlit Application
```

---

# 🔎 01 — Data Understanding & Quality

The first stage focused on understanding the dataset and validating its quality.

### Quality Checks

```python
df.shape
df.info()
df.isnull().sum()
df.duplicated().sum()
df.describe()
```

### Results

```text
Rows:              5,000
Columns:           20
Missing Values:    0
Duplicate Rows:    0
Active Customers: 4,042
Churned Customers: 958
Churn Rate:        19.16%
```

These checks established that the working dataset contained no missing values or duplicate rows.

---

# 🐍 02 — Python Customer Analytics

Python was used for exploratory and behavioral analysis across:

* Customer demographics
* Subscription plans
* Contract length
* Monthly charges
* Payment methods
* Auto-renewal
* Watch hours
* Login frequency
* Download behavior
* Customer support activity
* Streaming quality
* Days since last login
* Churn status

The objective was to identify behavioral patterns that could later support business analysis and machine learning.

---

# 🗄️ 03 — MySQL Business Analytics

The MySQL layer converts customer-level data into business-oriented insights.

### Analysis Areas

```text
Customer KPIs
     ↓
Subscription Analysis
     ↓
Churn Rate Analysis
     ↓
Behavior Analysis
     ↓
Customer Segmentation
     ↓
Churn Drivers
     ↓
Revenue Analysis
```

Example business questions:

```sql
-- Churn by Subscription Plan
SELECT
    Subscription_Plan,
    COUNT(*) AS Total_Customers,
    SUM(Churn_Status = 'Churned') AS Churned_Customers
FROM ott_customer_churn
GROUP BY Subscription_Plan;
```

The SQL analysis layer is centered on business KPIs, customer segments, and multi-factor churn drivers.

---

# 📊 04 — Power BI Executive Dashboard

The Power BI solution was designed as a multi-page customer and churn intelligence dashboard.

### Page 1 — Executive Overview

* Total Customers
* Active Customers
* Churned Customers
* Churn Rate
* Revenue Metrics
* Plan-level churn
* Regional churn
* Auto-renewal analysis

### Page 2 — Customer Behavior & Churn Drivers

* Watch hours
* Login frequency
* Customer support calls
* Streaming quality issues
* Inactivity behavior
* Engagement analysis

### Page 3 — Customer Segmentation & Revenue

* Customer segments
* Behavioral groups
* Revenue exposure
* Segment-level churn
* Customer value analysis

### Page 4 — AI Churn Prediction & Revenue Risk

* Customer risk scoring
* Predicted churn
* Monthly charges
* Revenue exposure
* High-risk customer identification

### Page 5 — Explainable AI & Recommendations

* SHAP feature importance
* Customer-level explanations
* Churn drivers
* Retention recommendations

The five-page dashboard structure is documented in the original project specification.

---

# 🤖 05 — Machine Learning Churn Prediction

Three classification algorithms were evaluated:

```text
                    Churn Prediction
                           │
             ┌─────────────┼─────────────┐
             ▼             ▼             ▼
        Logistic       Random        XGBoost
       Regression       Forest
             │             │             │
             └─────────────┼─────────────┘
                           ▼
                  Model Evaluation
```

## 📈 Model Comparison

| Model               | Accuracy | Precision | Recall |     F1 | ROC-AUC |
| ------------------- | -------: | --------: | -----: | -----: | ------: |
| Logistic Regression |    0.809 |    0.5217 | 0.0625 | 0.1116 |  0.7506 |
| Random Forest       |    0.811 |    0.7143 | 0.0260 | 0.0503 |  0.7026 |
| XGBoost             |    0.804 |    0.4444 | 0.0833 | 0.1404 |  0.7017 |

These are the recorded evaluation results from the project.

### Evaluation Metrics

The project evaluates:

* Accuracy
* Precision
* Recall
* F1 Score
* ROC-AUC

This allows the models to be examined from multiple perspectives rather than relying only on accuracy.

---

# 🔍 06 — Explainable AI with SHAP

A major component of the project is **Explainable AI**.

Instead of only asking:

> "Will this customer churn?"

the project also asks:

> "Why is this customer considered high risk?"

### Global Explainability

SHAP is used to identify features that have strong influence across the customer population.

Examples include:

* Average watch hours
* Days since last login
* Login frequency

### Individual Customer Explanation

For an individual customer, SHAP can help identify the factors contributing to that customer's prediction.

```text
Customer
   │
   ▼
Churn Prediction
   │
   ▼
SHAP Explanation
   │
   ├── Driver 1
   ├── Driver 2
   ├── Driver 3
   └── Driver 4
```

### Revenue Risk

The project also connects predicted churn probability with monthly charges:

```text
Revenue Risk
=
Churn Probability × Monthly Charges
```

The project specification explicitly includes global feature importance, individual explanations, and revenue-risk quantification.

---

# 👥 07 — Customer Segmentation

K-Means clustering is used to identify behavioral customer groups.

Potential segmentation dimensions include:

* Engagement
* Watch hours
* Login frequency
* Support activity
* Subscription behavior
* Pricing
* Customer activity

Conceptually:

```text
                Customers
                    │
                    ▼
              Feature Scaling
                    │
                    ▼
               K-Means
                    │
        ┌───────────┼───────────┐
        ▼           ▼           ▼
     Segment 1   Segment 2   Segment 3
        │           │           │
        └───────────┼───────────┘
                    ▼
          Business Interpretation
```

---

# 💰 08 — Revenue Risk Intelligence

Customer churn becomes a business problem when it affects recurring revenue.

The project therefore connects:

```text
Customer
    ↓
Churn Probability
    ↓
Monthly Charges
    ↓
Potential Revenue Exposure
```

This creates a bridge between **machine learning output and business impact**.

Instead of simply reporting:

> "Customer has 70% churn probability"

the analysis can ask:

> "What recurring revenue is associated with this customer's risk?"

---

# 🌐 09 — Streamlit Interactive Application

The project includes an interactive Streamlit application designed to make analytics accessible without directly interacting with notebooks.

### Application Sections

#### 📌 Overview & KPIs

Displays:

* Total customers
* Active customers
* Churned customers
* Overall churn rate
* Customer data preview

#### 📊 Exploratory Data Analysis

Users can explore churn rates across:

* Subscription Plan
* Contract Length
* Region
* Payment Method
* Gender
* Auto Renewal

#### 🤖 Customer Churn Predictor

The application provides an interactive customer form where users can enter customer characteristics such as:

* Age
* Region
* Subscription Plan
* Monthly Charges
* Contract Length
* Payment Method
* Auto Renewal
* Watch Hours
* Support Calls
* Streaming Quality Issues
* Days Since Last Login

The application then presents an estimated churn-risk result and a retention-oriented recommendation.

---

# 📁 Suggested Repository Structure

```text
AI-Powered-OTT-Customer-Churn/
│
├── 📂 data/
│   └── OTT_Customer_Churn_5000.csv
│
├── 📂 notebooks/
│   ├── 01_Data_Understanding.ipynb
│
├── 📂 powerbi/
│   └── AI_powered_customer_churn.pbix
│
├── 📂 sql/
│   └── AI_powered_customer_churn.sql
│─ 📂 App/
├── app.py
├─
└── README.md
```

---

# ⚙️ Installation

## 1️⃣ Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/AI-Powered-OTT-Customer-Churn.git
```

## 2️⃣ Navigate to the Project

```bash
cd AI-Powered-OTT-Customer-Churn
```

## 3️⃣ Install Dependencies

```bash
pip install -r requirements.txt
```

## 4️⃣ Run Streamlit

```bash
streamlit run app.py
```

The original project setup uses the same clone → install → `streamlit run app.py` workflow.

---

# 📦 Requirements

```text
streamlit
pandas
numpy
matplotlib
seaborn
scikit-learn
xgboost
shap
jupyter
```

---

# 🎓 Skills Demonstrated

This project demonstrates practical experience across several areas:

| Area                  | Skills                                         |
| --------------------- | ---------------------------------------------- |
| 🐍 Python             | Data cleaning, EDA, visualization              |
| 🗄️ SQL               | Business analytics, aggregations, segmentation |
| 📊 Power BI           | DAX, KPIs, dashboards, slicers                 |
| 🤖 Machine Learning   | Classification, model comparison               |
| 🧠 Explainable AI     | SHAP, feature importance                       |
| 👥 Segmentation       | K-Means clustering                             |
| 💰 Business Analytics | Revenue-risk analysis                          |
| 🌐 Deployment         | Streamlit application                          |
| 📈 Data Storytelling  | Executive insights & recommendations           |

---

# 💡 What Makes This Project Different?

This project is not just:

```text
Dataset → ML Model → Accuracy
```

It follows a more complete business workflow:

```text
                 RAW DATA
                    ↓
              DATA ANALYTICS
                    ↓
             BUSINESS INSIGHTS
                    ↓
              ML PREDICTION
                    ↓
             EXPLAINABLE AI
                    ↓
             REVENUE IMPACT
                    ↓
          BUSINESS RECOMMENDATIONS
                    ↓
            INTERACTIVE APP
```

The goal is to demonstrate how an analyst or AI professional can move from **data → insight → prediction → explanation → business action**.

---

# 🚀 Future Enhancements

Possible future improvements include:

* [ ] Deploy Streamlit application
* [ ] Add model probability calibration
* [ ] Add automated model monitoring
* [ ] Add customer-level SHAP visualization
* [ ] Add automated retention recommendation engine
* [ ] Add API layer with FastAPI
* [ ] Add cloud database integration
* [ ] Add scheduled data refresh
* [ ] Add automated Power BI refresh
* [ ] Add LLM-powered Business Analyst interface

---

# 👩‍💻 Author

## Aatiqa Noohani

**AI & Data Analyst | Python | SQL | Power BI | Machine Learning**

Interested in:

* 📊 Data Analytics
* 💼 Business Intelligence
* 🤖 Machine Learning
* 🧠 Explainable AI
* 🐍 Python
* 🗄️ SQL
* 📈 Data Visualization
* 🌐 AI Applications

---

## ⭐ Project Highlight

> **Turning 5,000 OTT customer records into actionable churn, customer, and revenue intelligence using Python, SQL, Power BI, Machine Learning, SHAP, K-Means, and Streamlit.**

---

<p align="center">

### 📺 From Customer Data → Churn Intelligence → Business Action

**Built with Python • SQL • Power BI • Machine Learning • Explainable AI**

</p>
