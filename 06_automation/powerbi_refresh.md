# 🔄 Power BI Refresh

The final step of this project is to make sure the **Power BI dashboard
always shows the latest processed data** after the monthly data pipeline
has completed.

The goal is to connect the data engineering pipeline with the reporting
layer so that the monthly report can be refreshed automatically.

## 📊 Power BI Refresh Flow

``` text
📅 Monthly Pipeline Starts
        ↓
📥 Data Extracted
        ↓
🥉 Bronze Layer Updated
        ↓
🥈 Silver Layer Updated
        ↓
🥇 Gold Layer Updated
        ↓
🏢 Synapse Gold Data Updated
        ↓
🔄 Power BI Dataset Refresh
        ↓
📊 Dashboard Shows Latest Data
        ↓
📋 Monthly Report Ready
```

## 1. 🏗️ Data Pipeline Completion

Before refreshing Power BI, the upstream data pipeline should finish
successfully.

The main flow is:

-   Azure Data Factory extracts the source data.
-   ADLS Gen2 stores the raw Bronze data.
-   Databricks creates the Silver layer.
-   Databricks creates the Gold layer.
-   Azure Synapse provides the analytical data.

Only after these steps are completed should the Power BI dataset be
refreshed.

## 2. 🔄 Power BI Dataset Refresh

Power BI connects to the analytical data available through the
Gold/Synapse layer.

When the dataset is refreshed, Power BI retrieves the latest processed
data and updates the dashboard visuals.

The refresh should happen **after the data engineering pipeline has
completed**, so the report does not use partially processed data.

## 3. 📈 Dashboard Output

After a successful refresh, the dashboard displays the latest showroom
information, including:

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

## 4. ⚙️ Automation

The intended monthly process is:

``` text
1️⃣ 1st day of the month
        ↓
2️⃣ ADF monthly trigger starts
        ↓
3️⃣ Source data is extracted
        ↓
4️⃣ Bronze → Silver → Gold processing
        ↓
5️⃣ Synapse data is updated
        ↓
6️⃣ Power BI dataset is refreshed
        ↓
7️⃣ 📊 Latest dashboard is available
```

This removes the need to manually refresh the Power BI report every
month.

## 5. 🎯 Final Objective

The final objective is to connect the **data engineering pipeline and
Power BI reporting layer** into one automated monthly workflow.

> **Once the monthly pipeline finishes successfully, the Power BI
> dataset should refresh and the latest showroom sales dashboard should
> be ready for reporting.**

## 🚀 End-to-End Architecture

``` text
🗃️ MSSQL + PostgreSQL
          ↓
⚙️ Azure Data Factory
          ↓
🗄️ ADLS Gen2
     🥉 Bronze
          ↓
🧹 Databricks
     🥈 Silver
          ↓
💎 Databricks
     🥇 Gold
          ↓
🏢 Azure Synapse
          ↓
🔄 Power BI Dataset Refresh
          ↓
📊 Showroom Sales Dashboard
```

### 💡 Important

The Power BI refresh is the **last reporting step** of the pipeline. The
data should be completely processed and available in the serving layer
before the refresh begins.
