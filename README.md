# Sales Database Practice & Data Cleaning (SQL)

## 📌 Project Overview
This repository contains a practical SQL project (sales_practice.sql) designed to simulate real-world database creation, management, and data cleaning scenarios using MySQL. The main focus of this project is handling "dirty" data, resolving case-sensitivity issues, and structuring relational tables accurately.

## 🛠️ Tools & Technologies
* Database Management System: MySQL
* Environment: MySQL Workbench
* Version Control: Git & GitHub

## 🗂️ Database Structure
The script initializes the sales_practice database and builds the following core tables:
* **customers**: Stores customer details (customer_id, customer_name, city, segment) configured with case-sensitive collation (utf8mb4_bin) to simulate real-world inconsistent data entries (e.g., distinguishing between "Amman" and "amman").
* **orders**: Tracks sales transactions (order_id, order_date, customer_id, product, category).
* **data_issues**: Serves as a reference table documenting the intentional data anomalies embedded in the dataset for validation and auditing.

## 🎯 Key FoDatabase Schema Design:ma Design:** Creating clean, structured tables from scratch with appropriate daData Cleaning & Auditing: Auditing:** Identifying and preparing inconsistent records (case-sensitivity discrepancies, formatting anomalies) prior to running analytical queries.

## 🚀 How to Run
1. Download or clone this repository to your local machine.
2. Open sales_practice.sql in **MySQL Workbench*Execute (Lightning Bolt)ightning Bolt)** icon to run the entire script and generate the sales_practice database.
