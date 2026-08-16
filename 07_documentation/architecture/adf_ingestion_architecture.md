# 🔄 Azure Data Factory Ingestion Architecture

Azure Data Factory (ADF) is used as the ingestion and orchestration
layer of the Automobile Showroom Analytics project.

## 📌 Source Systems

- Microsoft SQL Server
- PostgreSQL

## 🎯 Target

Azure Data Lake Storage Gen2 - Bronze Layer

## 🔄 Ingestion Flow

MSSQL + PostgreSQL
        ↓
Azure Data Factory
        ↓
Metadata / Watermark Lookup
        ↓
Incremental Query
        ↓
Copy Activity
        ↓
ADLS Gen2 Bronze

## 📦 Load Strategy

The project supports both full load and incremental load.

### 🟢 First Run

The initial execution loads the existing source data into
the Bronze layer.

Initial watermark:

1999-01-01

### 🔵 Subsequent Runs

Later executions use the previously stored watermark value.

Only new or modified records are loaded.

Example:

updated_date > last_load_value

## 🗂️ Control Metadata

A control table will maintain:

- Source system
- Table name
- Watermark column
- Last loaded value

## 🔐 Security

Credentials and secrets must not be stored in GitHub.

Azure identity-based authentication will be used wherever possible.