# ADLS Gen2 Architecture

Azure Data Lake Storage Gen2 is used as the central data lake
for the Automobile Showroom Analytics project.

## Storage Layers

### Bronze
Stores raw data ingested from MSSQL and PostgreSQL.

### Silver
Stores cleaned and transformed data processed using Databricks.

### Gold
Stores business-ready analytical data used for reporting.

## Data Flow

MSSQL + PostgreSQL
        ↓
Azure Data Factory
        ↓
ADLS Gen2 - Bronze
        ↓
Databricks
        ↓
ADLS Gen2 - Silver
        ↓
Business Transformations
        ↓
ADLS Gen2 - Gold
        ↓
Power BI