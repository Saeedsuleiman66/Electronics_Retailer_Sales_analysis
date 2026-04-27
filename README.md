# 📊 Retailer Sales Performance Analysis (End-to-End Project)

## 📝 Project Overview
This project provides a comprehensive analysis of a global retailer's sales data. The goal was to transform raw, messy data into actionable insights through a robust data pipeline, covering everything from data cleaning and database management to advanced visualization.

## 🛠️ Tech Stack
* **Data Cleaning & Preprocessing:** Python (Pandas, NumPy)
* **Database Management:** MySQL Workbench
* **Data Engineering:** SQL (Views, Complex Joins, Window Functions)
* **Data Visualization:** Power BI (DAX, Power Query)

## 🏗️ Data Pipeline Architecture
1.  **Extraction & Cleaning (Python):** * Handled missing values and inconsistent date formats.
    * Calculated new metrics like `Actual Age` and `Profit Margin`.
    * Exported cleaned data to a relational database.
2.  **Storage & Transformation (MySQL):** * Stored data in a structured schema.
    * Created **SQL Views** (e.g., `v_customer_loyalty`, `v_monthly_sales_trend`) to optimize Power BI performance and ensure data consistency.
3.  **Visualization (Power BI):** * **Page 1: Sales Executive Overview:** High-level KPIs, revenue trends, and market share by age groups.
    * **Page 2: Customer & Product Deep-Dive:** Detailed analysis using Decomposition Trees, Scatter Charts, and Top 10 Customer tracking.

## 📈 Key Insights
* **Customer Segmentation:** Identified that the **Seniors (55+)** age group contributes to over **52%** of total revenue.
* **Product Performance:** Computers and Home Appliances are the primary profit drivers, despite having different sales volumes.
* **Loyalty Program:** Isolated the top 10 customers responsible for a significant portion of annual sales for targeted marketing.

## 🚀 How to Run
1.  Clone the repository.
2.  Run the Jupyter Notebook to clean the raw CSV files.
3.  Import the SQL script into MySQL Workbench to create the database and views.
4.  Open the `.pbix` file in Power BI Desktop and connect it to your MySQL local server.

## 📂 Project Structure
├── Data/                   # Raw and Cleaned datasets
├── Scripts/                # Python cleaning script & SQL Queries
├── Dashboard/              # Power BI (.pbix) file
└── README.md               # Project documentation
Author: saeedsoliman901@gmail.com
