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
######################################
# SQL Practice (SQL-1)

A progressive collection of SQL practice scripts documenting my step-by-step learning journey in SQL, starting from foundational queries and moving into structured data cleaning exercises across gradually larger datasets.

## Repository Structure & Progression

- **sales_practice.sql (Foundation):**
  - The starting point of this repository. A small dataset focused on basic SQL fundamentals, initial table setup, and simple exploratory queries.

- **sales_practice_2.sql (Data Cleaning – Stage 1):**
  - A larger multi-table sales dataset (customers, products, salespeople, orders).
  - **Focus:data cleaninga cleaning** (standardizing text formatting, fixing inconsistent entries, handling missing/placeholder values, and preparing clean records) — *no analytical queries included*.

- **sales_practice_3.sql (Data Cleaning – Stage 2):**
  - Follows the exact same concept as the second script, applied to a slightly larger dataset with more records and Focus:.
  - data cleaning*data cleaning** and standardization — *no data analysis*.

- **sales_practice_4.sql (Data Cleaning – Stage 3):**
  - The largest dataset in this cleaning series, building on the previous scripts with broader data inconsistencFocus:olve.
data cleaningre **data cleaning** and validation — *no data analysis*. 