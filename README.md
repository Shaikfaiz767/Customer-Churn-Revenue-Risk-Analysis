## 📌 Overview

This project analyzes customer purchase behavior to identify churn risk, revenue concentration, and business opportunities.
It combines Python, SQL, and Power BI to build an end-to-end analytics workflow and an interactive dashboard.

---

## 🎯 Objectives

* Identify churned customers using recency-based logic
* Segment customers based on value (RFM approach)
* Analyze revenue distribution across customers and countries
* Build an interactive dashboard for business decision-making

---

## 🛠️ Tools & Technologies

* **Python:** Pandas, NumPy (data cleaning & analysis)
* **SQL (PostgreSQL):** Data querying, aggregation, churn logic
* **Power BI:** Dashboard development & visualization

---

## 📊 Dataset

* E-commerce transactional dataset
* ~400,000+ records
* Fields include Invoice, CustomerID, Revenue, Country, Date

---

## 🔍 Key Analysis Performed

### 1. Data Cleaning (Python)

* Removed null values and invalid records
* Handled negative quantities (returns)
* Created revenue column

---

### 2. Customer Segmentation

* Calculated total spend per customer
* Segmented into:

  * High Value
  * Medium Value
  * Low Value

---

### 3. Churn Analysis

* Defined churn as **no purchase in last 90 days**
* Calculated at **customer level (not transaction level)**

---

### 4. SQL Analysis

* Total revenue calculation
* Top customers identification
* Revenue by country
* Customer ranking using window functions
* Churn detection using last purchase logic

---

### 5. Dashboard (Power BI)

* KPI Metrics:

  * Total Revenue (~$8.8M)
  * Total Customers (4314)
  * Churn Rate (~33%)
  * Revenue at Risk (~12%)
* Visuals:

  * Customer Segmentation (Pie Chart)
  * Top Customers (Bar Chart)
  * Revenue by Country
  * Monthly Revenue Trend
* Interactive filters:

  * Country
  * Date (Month-Year)

---

## 📈 Key Insights

* ~33% of customers are churned
* Only ~12% of revenue is at risk → churn mostly from low-value customers
* Revenue is highly concentrated among a few customers
* United Kingdom contributes the majority of revenue

---

## 💡 Business Recommendations

* Focus on retaining **medium-value customers** to increase lifetime value
* Provide exclusive benefits to **high-value customers**
* Reduce dependency on a single country by expanding globally
* Target low-value customers with engagement campaigns

---

## 📁 Project Structure

customer-churn-analysis/
│
├── data/ → cleaned dataset
├── python/ → analysis notebook
├── sql/ → SQL queries
├── powerbi/ → dashboard file
└── README.md

---

## 🚀 Conclusion

This project demonstrates an end-to-end data analysis workflow, combining data processing, SQL querying, and business intelligence visualization to deliver actionable insights.

---

## 📷 Dashboard Preview

# <img width="631" height="354" alt="Customer Churn   Revenue Risk Analysis" src="https://github.com/user-attachments/assets/f0190e09-12ac-41fe-9039-1d5f0d4e9689" />


