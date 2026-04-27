📊 Retail Sales Performance & Customer Analytics Pipeline
📌 Project Overview
This project is an End-to-End Data Pipeline designed to transform raw retail transaction data into actionable business insights. The pipeline covers the entire lifecycle of data: from automated cleaning using Python, structured storage in MySQL, to advanced analytical modeling and interactive visualization in Power BI.

The goal is to analyze sales trends, profitability, and customer demographics (specifically targeting the "Senior" segment) to drive data-informed decision-making.

🛠️ Tech Stack
Data Cleaning & ETL: Python (Pandas)

Database Management: MySQL Workbench

Analytical Modeling: SQL (Views, Window Functions, CTEs)

Business Intelligence: Power BI (DAX, Power Query)

🚀 The Data Pipeline (Architecture)
1. Data Cleaning & Preprocessing (Python)
Handled missing values and inconsistent data formats.

Calculated key derived metrics like Actual_Age from birthdates.

Performed currency normalization to ensure all financial metrics are in USD.

2. Database Schema & Storage (MySQL)
Designed a relational structure to store the cleaned dataset (final_data).

Created SQL Views to optimize Power BI performance:

v_monthly_sales_trend: Aggregated revenue/profit by month.

v_customer_loyalty: Identifying the top 10 high-value customers.

3. Advanced Analytics (SQL)
Segmented customers into 3 demographic groups: Young, Adults, and Seniors.

Conducted "Peak Day" analysis to identify high-traffic sales periods.

4. Interactive Dashboards (Power BI)
The project features a two-page interactive report:

Page 1: Executive Sales Overview: A high-level view of Revenue ($55M+), Profit ($32M+), and global sales distribution.

Page 2: Customer & Product Deep-Dive: Featuring a Decomposition Tree to analyze revenue drivers and a Scatter Chart for price-vs-quantity correlation.

📈 Key Insights
Demographic Dominance: Customers aged 55+ (Seniors) contribute to over 52% of the total revenue.

Product Performance: The Computers category is the primary revenue driver, while Cell Phones show the highest transaction frequency.

Profitability: Maintained a healthy overall profit margin of ~58%.

📁 Project Structure
Plaintext

├── Scripts/
│   ├── data_cleaning.py    # Python ETL script
│   └── analysis_queries.sql # SQL Views and analytical queries
├── Dashboards/
│   └── Sales_Analytics.pbix # Power BI Project file
└── README.md
👤 Author
saeedsoliman901@gmail.com
