# 📊 Monthly Automated Workflow

The main goal of this project is simple: **on the 1st day of every
month, the complete showroom sales data pipeline should run
automatically and the Power BI dashboard should be refreshed with the
latest data.**

The idea is to avoid manual work as much as possible --- from extracting
the data to preparing the final report.

## 🔄 Overall Workflow

``` text
📅 1st Day of Every Month
          ↓
⚙️ Azure Data Factory Trigger
          ↓
📥 Extract Data from MSSQL & PostgreSQL
          ↓
🗄️ Load Raw Data into ADLS Gen2
       (🥉 Bronze Layer)
          ↓
🧹 Databricks Silver Transformation
          ↓
💎 Databricks Gold Transformation
          ↓
🏢 Azure Synapse Analytics
          ↓
📈 Power BI Dataset Refresh
          ↓
📋 Monthly Sales Report Ready
```

## 1. 📅 Monthly Trigger

Azure Data Factory uses a **monthly schedule trigger** to start the
workflow automatically on the **1st day of every month**.

Once the trigger runs, the rest of the pipeline can proceed without
manually starting each step.

## 2. 📥 Data Extraction

The source data comes from:

-   Microsoft SQL Server
-   PostgreSQL

Azure Data Factory handles the extraction.

For incremental loading, the project uses a **watermark-based
approach**. This helps the pipeline identify which records need to be
loaded instead of processing everything again every month.

## 3. 🥉 Bronze Layer --- Raw Data

The extracted data is stored in **Azure Data Lake Storage Gen2** in
Parquet format.

A simple structure is:

``` text
Bronze/
├── mssql/
└── postgresql/
```

The Bronze layer keeps the raw data available for further processing and
provides a useful starting point for the transformation process.

## 4. 🥈 Silver Layer --- Clean & Transform

Azure Databricks processes the Bronze data and creates the Silver layer.

The main transformations include:

-   🧹 Data cleaning
-   ✅ Data validation
-   🔄 Standardization
-   🗑️ Deduplication
-   🧩 Schema handling
-   🔢 Data type handling

Notebook:

``` text
03_databricks/notebook/NB_Silver_Transformation.ipynb
```

## 5. 🥇 Gold Layer --- Business-Ready Data

After the Silver transformation, Databricks creates the Gold layer.

This layer contains data prepared for reporting and business analysis.

The main work includes:

-   💡 Business logic
-   📊 Aggregations
-   🔑 Surrogate keys
-   ⚡ Optimized analytical tables
-   ⭐ Fact and dimension preparation

Notebook:

``` text
03_databricks/notebook/NB_Gold_Transformation.ipynb
```

## 6. 🏢 Synapse Analytics

The Gold data is then made available through **Azure Synapse
Analytics**.

The project follows a dimensional/star-schema approach with fact and
dimension tables.

Synapse acts as the analytical serving layer for the Power BI report.

## 7. 📈 Power BI Refresh

Once the data pipeline has completed, the Power BI dataset needs to be
refreshed so the dashboard shows the latest available data.

The dashboard currently includes metrics and visuals such as:

-   💰 Total Sales Revenue
-   📈 Total Profit
-   🚗 Total Vehicles Sold
-   📊 Average Profit %
-   🚘 Revenue by Model
-   🏷️ Revenue by Brand
-   👨‍💼 Revenue by Salesperson
-   🏆 Top 5 Models Sold
-   🔄 Lead Conversion Funnel
-   🏢 Revenue by Showroom

## 8. 🚀 End-to-End Flow

In simple terms, the complete process is:

``` text
🗃️ Source Databases
       ↓
⚙️ Azure Data Factory
       ↓
🥉 ADLS Gen2 — Bronze
       ↓
🥈 Databricks — Silver
       ↓
🥇 Databricks — Gold
       ↓
🏢 Azure Synapse
       ↓
📈 Power BI Dataset Refresh
       ↓
📋 Monthly Sales Dashboard
```

## 🎯 Final Goal

The target is to make the complete reporting process as automated as
possible:

> **Every month on the 1st day, the pipeline should extract the latest
> data, process it through the Bronze → Silver → Gold layers, update
> Synapse, refresh Power BI, and make the latest showroom sales report
> ready --- with minimal manual intervention.**

This automation is the main objective of the project.
