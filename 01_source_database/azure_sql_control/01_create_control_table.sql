-- =========================================================
-- ADF CONTROL TABLE
-- =========================================================

CREATE TABLE dbo.data_factory_control_log
(
    control_id INT IDENTITY(1,1) PRIMARY KEY,

    source_system VARCHAR(50) NOT NULL,

    table_name VARCHAR(100) NOT NULL,

    watermark_column VARCHAR(100) NOT NULL,

    last_load_value DATETIME2 NOT NULL,

    target_container VARCHAR(50) NOT NULL,

    target_path VARCHAR(500) NOT NULL,

    is_active BIT NOT NULL DEFAULT 1,

    created_date DATETIME2 NOT NULL DEFAULT GETDATE(),

    updated_date DATETIME2 NOT NULL DEFAULT GETDATE()
);

-- =========================================================
-- MSSQL CONTROL METADATA
-- =========================================================

INSERT INTO dbo.data_factory_control_log
(
    source_system,
    table_name,
    watermark_column,
    last_load_value,
    target_container,
    target_path,
    is_active
)
VALUES
('MSSQL', 'showroom',          'updated_date', '1999-01-01', 'bronze', 'mssql/showroom',          1),
('MSSQL', 'salesperson',       'updated_date', '1999-01-01', 'bronze', 'mssql/salesperson',       1),
('MSSQL', 'customer',          'updated_date', '1999-01-01', 'bronze', 'mssql/customer',          1),
('MSSQL', 'campaign',          'updated_date', '1999-01-01', 'bronze', 'mssql/campaign',          1),
('MSSQL', 'marketing_lead',   'updated_date', '1999-01-01', 'bronze', 'mssql/marketing_lead',    1),
('MSSQL', 'showroom_visit',   'updated_date', '1999-01-01', 'bronze', 'mssql/showroom_visit',    1),
('MSSQL', 'test_drive',       'updated_date', '1999-01-01', 'bronze', 'mssql/test_drive',        1),
('MSSQL', 'customer_followup','updated_date', '1999-01-01', 'bronze', 'mssql/customer_followup', 1),
('MSSQL', 'inventory',        'updated_date', '1999-01-01', 'bronze', 'mssql/inventory',         1),
('MSSQL', 'sales',            'updated_date', '1999-01-01', 'bronze', 'mssql/sales',             1),
('MSSQL', 'expenses',         'updated_date', '1999-01-01', 'bronze', 'mssql/expenses',          1),
('MSSQL', 'campaign_expense', 'updated_date', '1999-01-01', 'bronze', 'mssql/campaign_expense',  1);