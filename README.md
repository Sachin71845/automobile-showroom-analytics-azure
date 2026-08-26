# 🚗 Automobile Showroom Analytics – Azure Data Engineering Project

This project demonstrates an **end-to-end Azure Data Engineering solution** for an automobile showroom. It integrates data from multiple source databases into Azure, processes and transforms the data using a **Bronze → Silver → Gold** architecture, prepares it for analytics, and presents meaningful business insights through an interactive **Power BI dashboard**.

The main objective of this project is:

> **To automate the monthly journey from source data to business reporting, ensuring that the latest showroom insights are available with minimal manual intervention.**

---

## 🎯 Project Objective

Automobile showroom data is typically distributed across multiple operational systems. Information related to sales, customers, leads, inventory, expenses, campaigns, showrooms, and salespersons needs to be consolidated before meaningful business analysis can be performed.

This project aims to build a complete end-to-end data workflow that:

- 📥 Extracts data from multiple databases
- 🔄 Loads and processes data using Azure services
- 🥉 Stores raw data in the Bronze layer
- 🥈 Cleans and standardizes data in the Silver layer
- 🥇 Creates business-ready datasets in the Gold layer
- 🗄️ Makes transformed data available for analytics through Azure Synapse
- 📊 Presents business insights through Power BI
- 📅 Supports a monthly automated reporting workflow

The intended workflow is designed to run on the **1st day of every month**, covering the complete journey from data extraction to the reporting layer.

---

# 🏗️ Solution Architecture

The project follows a layered architecture in which each Azure service has a clearly defined responsibility.


![alt text](<ChatGPT Image Aug 26, 2026, 10_02_06 PM.png>)

### ⚙️ Control and Incremental Loading

An **Azure SQL control database** is used as the control and metadata layer for the pipeline. This supports concepts such as **watermark-based incremental loading**, allowing the pipeline to process only new or updated data instead of reprocessing the complete dataset unnecessarily.

---

# 🔄 End-to-End Data Flow

## 1️⃣ Source Databases

The project uses multiple relational source systems:

- 🗄️ Microsoft SQL Server
- 🐘 PostgreSQL

These source systems contain different showroom-related datasets, including vehicle sales, customers, leads, campaigns, inventory, expenses, salespersons, showrooms, and vehicle/model information.

## 2️⃣ Azure Data Factory – Ingestion and Orchestration

**Azure Data Factory (ADF)** is responsible for extracting data from the source systems, loading it into the Azure data platform, and orchestrating the overall workflow.

The ADF implementation includes components such as:

- Linked Services
- Datasets
- Pipelines
- Integration Runtime
- Triggers
- Parameterized Activities

ADF also acts as the central orchestration layer, coordinating the movement and processing of data across the different stages of the pipeline.

## 3️⃣ 🥉 Bronze Layer – Raw Data

The extracted data is stored in **Azure Data Lake Storage Gen2 (ADLS Gen2)**.

The Bronze layer acts as the raw data landing zone, preserving the extracted source data before major transformations are applied.

## 4️⃣ 🥈 Silver Layer – Cleaned and Standardized Data

The Bronze layer data is processed using **Azure Databricks**.

The Silver transformation stage focuses on preparing reliable and consistent data through:

- 🧹 Data cleaning
- 🔄 Data standardization
- 🔍 Data validation
- 🗑️ Duplicate handling
- 🔢 Data type conversion
- 🧩 Schema handling

## 5️⃣ 🥇 Gold Layer – Business-Ready Data

The Gold layer contains business-ready datasets created from the cleaned and standardized Silver data.

This stage can include:

- Business logic implementation
- Data aggregations
- Analytical transformations
- Fact and dimension preparation
- Optimized datasets for reporting and analytics

The objective is to ensure that reporting and analytics tools consume well-prepared analytical datasets rather than raw operational data.

---

# 🗄️ Azure Synapse Analytics

**Azure Synapse Analytics** is used as the analytical SQL layer of the project.

It provides a structured layer between the transformed data and the reporting solution, making the data easier to query, analyze, and consume.

The project includes SQL-based analytical objects such as:

- Tables
- Views
- SQL Scripts

---

# 📊 Power BI Dashboard

The final business-facing layer is an interactive **Power BI dashboard** designed to analyze and understand overall showroom performance.

### Key KPIs

- 💰 Total Sales Revenue
- 📈 Total Profit
- 🚗 Total Vehicles Sold
- 📊 Average Profit %

### Key Analysis

- Revenue by Vehicle Model
- Revenue by Brand
- Revenue by Salesperson
- Top 5 Models Sold
- Lead Conversion
- Showroom-wise Revenue Analysis

### Interactive Filtering

The report allows users to analyze data based on:

- 🏢 Showroom
- 📅 Date / Reporting Period

The goal is to provide users with a single place to understand overall sales performance and drill down into specific business areas.

---

# 🎯 Lead Conversion Analysis

The project also focuses on understanding how potential customer leads move toward actual sales.

The lead conversion analysis helps answer the following question:

> **How effectively are potential customer leads being converted into actual sales?**

This provides an additional perspective on showroom performance beyond revenue and profit alone.

---

# 📅 Monthly Automation Goal

The main objective of this project is to connect the complete workflow into a monthly automated process.

The intended flow is:

```text
📅 1st Day of the Month
          │
          ▼
⚙️ ADF Schedule Trigger
          │
          ▼
📥 Extract Latest / Incremental Source Data
          │
          ▼
🥉 Load to Bronze Layer
          │
          ▼
🥈 Run Silver Transformations
          │
          ▼
🥇 Run Gold Transformations
          │
          ▼
🗄️ Update Analytical Layer
          │
          ▼
🔄 Refresh Power BI Dataset
          │
          ▼
📊 Latest Monthly Dashboard Available
```

This automation is the central goal of the project: **from data extraction to business reporting, the monthly workflow should require minimal manual intervention.**

---

# 📁 Repository Structure

```text
automobile-showroom-analytics-azure/
│
├── 01_source_database/
│   ├── azure_sql_control/
│   ├── mssql/
│   └── postgresql/
│
├── 02_adf/
│   ├── dataset/
│   ├── integrationRuntime/
│   ├── linkedService/
│   ├── pipeline/
│   ├── trigger/
│   └── publish_config.json
│
├── 03_databricks/
│   └── notebook/
│       ├── NB_Silver_Transformation.ipynb
│       └── NB_Gold_Transformation.ipynb
│
├── 04_synapse/
│   ├── credential/
│   ├── integrationRuntime/
│   ├── linkedService/
│   ├── sql/
│   └── sqlscript/
│
├── 05_powerbi/
│   ├── dashboard/
│   ├── screenshots/
│   └── README.md
│
├── 06_automation/
│   ├── monthly_workflow.md
│   └── powerbi_refresh.md
│
├── architecture/
│   └── architecture.png
│
└── README.md
```

---

# 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Microsoft SQL Server | Source database |
| PostgreSQL | Source database |
| Azure SQL Database | Control / metadata layer |
| Azure Data Factory | Data ingestion and orchestration |
| Azure Data Lake Storage Gen2 | Data lake storage |
| Azure Databricks | Data transformation |
| PySpark | Large-scale data processing |
| Parquet / Delta | Analytical data storage |
| Azure Synapse Analytics | Analytical SQL layer |
| Power BI | Reporting and visualization |
| Git & GitHub | Version control and documentation |

---

# 💡 Key Concepts Demonstrated

This project brings together several practical data engineering concepts:

- 🔄 ETL / ELT Workflows
- 💧 Incremental Loading
- 📌 Watermark-Based Processing
- 🏗️ Medallion Architecture
- 🥉 Bronze / 🥈 Silver / 🥇 Gold Layers
- 🔗 Data Pipeline Orchestration
- ⏰ Scheduled Execution
- ⚙️ PySpark Transformations
- 🗄️ Analytical SQL
- 📊 Business Intelligence and Reporting
- 📁 Version Control using Git and GitHub

---

# 🚀 Project Outcome

The final outcome is an integrated data engineering solution in which different technologies work together as part of a complete data ecosystem rather than operating independently.

The complete data journey can be summarized as:

> **Source Databases → Data Ingestion → Data Lake → Transformation → Analytics → Power BI Reporting**

The Power BI dashboard represents the final layer of a much larger data journey. The main value of the project lies in building a reliable pipeline that prepares the right data for meaningful business decisions.

---

# 🔮 Next Steps and Enhancements

As the project continues, the workflow can be enhanced with:

- 📧 Automated notifications after successful pipeline completion
- 🚨 Failure alerts and monitoring
- ✅ Additional data quality checks
- 🔐 Secret management using Azure Key Vault
- 🔄 Fully automated Power BI Service refresh
- 📝 Pipeline audit and execution logging
- 🚀 CI/CD using Azure DevOps or GitHub Actions

---

## 👨‍💻 Author

**Sachin Kaware**

This project is part of my hands-on learning journey in **Azure Data Engineering, SQL, Databricks, Synapse, and Power BI**.
