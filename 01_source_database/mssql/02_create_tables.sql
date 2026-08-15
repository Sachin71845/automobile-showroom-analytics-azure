USE Car_Showroom_Enterprise;
GO

/* =========================================================
   1. SHOWROOM
   ========================================================= */

CREATE TABLE dbo.showroom
(
    showroom_id INT PRIMARY KEY,
    showroom_name VARCHAR(100) NOT NULL,
    brand VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    manager_name VARCHAR(100),
    opening_date DATE,
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);
GO


/* =========================================================
   2. SALESPERSON
   ========================================================= */

CREATE TABLE dbo.salesperson
(
    salesperson_id INT PRIMARY KEY,
    salesperson_name VARCHAR(100) NOT NULL,
    showroom_id INT NOT NULL,
    joining_date DATE,
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_salesperson_showroom
        FOREIGN KEY (showroom_id)
        REFERENCES dbo.showroom(showroom_id)
);
GO


/* =========================================================
   3. CUSTOMER
   ========================================================= */

CREATE TABLE dbo.customer
(
    customer_id BIGINT PRIMARY KEY,
    customer_name VARCHAR(150) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(150),
    city VARCHAR(50),
    age INT,
    gender VARCHAR(20),
    occupation VARCHAR(100),
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);
GO


/* =========================================================
   4. CAMPAIGN
   ========================================================= */

CREATE TABLE dbo.campaign
(
    campaign_id INT PRIMARY KEY,
    campaign_name VARCHAR(150) NOT NULL,
    campaign_type VARCHAR(50) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    budget DECIMAL(18,2) NOT NULL,
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);
GO


/* =========================================================
   5. MARKETING LEAD
   ========================================================= */

CREATE TABLE dbo.marketing_lead
(
    lead_id BIGINT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    showroom_id INT NOT NULL,
    campaign_id INT,
    salesperson_id INT,
    lead_date DATE NOT NULL,
    lead_source VARCHAR(50) NOT NULL,
    lead_status VARCHAR(30) NOT NULL,
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_lead_customer
        FOREIGN KEY (customer_id)
        REFERENCES dbo.customer(customer_id),

    CONSTRAINT FK_lead_showroom
        FOREIGN KEY (showroom_id)
        REFERENCES dbo.showroom(showroom_id),

    CONSTRAINT FK_lead_campaign
        FOREIGN KEY (campaign_id)
        REFERENCES dbo.campaign(campaign_id),

    CONSTRAINT FK_lead_salesperson
        FOREIGN KEY (salesperson_id)
        REFERENCES dbo.salesperson(salesperson_id)
);
GO


/* =========================================================
   6. SHOWROOM VISIT
   ========================================================= */

CREATE TABLE dbo.showroom_visit
(
    visit_id BIGINT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    showroom_id INT NOT NULL,
    salesperson_id INT,
    visit_date DATE NOT NULL,
    visit_purpose VARCHAR(50),
    visit_status VARCHAR(30) NOT NULL,
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_visit_customer
        FOREIGN KEY (customer_id)
        REFERENCES dbo.customer(customer_id),

    CONSTRAINT FK_visit_showroom
        FOREIGN KEY (showroom_id)
        REFERENCES dbo.showroom(showroom_id),

    CONSTRAINT FK_visit_salesperson
        FOREIGN KEY (salesperson_id)
        REFERENCES dbo.salesperson(salesperson_id)
);
GO


/* =========================================================
   7. TEST DRIVE
   ========================================================= */

CREATE TABLE dbo.test_drive
(
    test_drive_id BIGINT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    vehicle_id INT NOT NULL,
    showroom_id INT NOT NULL,
    salesperson_id INT,
    test_drive_date DATE NOT NULL,
    test_drive_status VARCHAR(30) NOT NULL,
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_testdrive_customer
        FOREIGN KEY (customer_id)
        REFERENCES dbo.customer(customer_id),

    CONSTRAINT FK_testdrive_showroom
        FOREIGN KEY (showroom_id)
        REFERENCES dbo.showroom(showroom_id),

    CONSTRAINT FK_testdrive_salesperson
        FOREIGN KEY (salesperson_id)
        REFERENCES dbo.salesperson(salesperson_id)
);
GO


/* =========================================================
   8. CUSTOMER FOLLOW-UP
   ========================================================= */

CREATE TABLE dbo.customer_followup
(
    followup_id BIGINT PRIMARY KEY,
    lead_id BIGINT NOT NULL,
    customer_id BIGINT NOT NULL,
    salesperson_id INT,
    showroom_id INT NOT NULL,
    followup_date DATE NOT NULL,
    followup_type VARCHAR(50),
    followup_status VARCHAR(30),
    remarks VARCHAR(500),
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_followup_lead
        FOREIGN KEY (lead_id)
        REFERENCES dbo.marketing_lead(lead_id),

    CONSTRAINT FK_followup_customer
        FOREIGN KEY (customer_id)
        REFERENCES dbo.customer(customer_id),

    CONSTRAINT FK_followup_salesperson
        FOREIGN KEY (salesperson_id)
        REFERENCES dbo.salesperson(salesperson_id),

    CONSTRAINT FK_followup_showroom
        FOREIGN KEY (showroom_id)
        REFERENCES dbo.showroom(showroom_id)
);
GO


/* =========================================================
   9. INVENTORY
   ========================================================= */

CREATE TABLE dbo.inventory
(
    inventory_id BIGINT PRIMARY KEY,
    vehicle_id INT NOT NULL,
    showroom_id INT NOT NULL,
    vin VARCHAR(50) NOT NULL UNIQUE,
    purchase_date DATE NOT NULL,
    purchase_cost DECIMAL(18,2) NOT NULL,
    status VARCHAR(30) NOT NULL,
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_inventory_showroom
        FOREIGN KEY (showroom_id)
        REFERENCES dbo.showroom(showroom_id)
);
GO


/* =========================================================
   10. SALES
   ========================================================= */

CREATE TABLE dbo.sales
(
    sale_id BIGINT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    vehicle_id INT NOT NULL,
    showroom_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    inventory_id BIGINT NOT NULL,
    sale_date DATE NOT NULL,
    sale_price DECIMAL(18,2) NOT NULL,
    purchase_cost DECIMAL(18,2) NOT NULL,
    discount DECIMAL(18,2) NOT NULL DEFAULT 0,
    commission DECIMAL(18,2) NOT NULL DEFAULT 0,
    payment_method VARCHAR(30),
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_sales_customer
        FOREIGN KEY (customer_id)
        REFERENCES dbo.customer(customer_id),

    CONSTRAINT FK_sales_showroom
        FOREIGN KEY (showroom_id)
        REFERENCES dbo.showroom(showroom_id),

    CONSTRAINT FK_sales_salesperson
        FOREIGN KEY (salesperson_id)
        REFERENCES dbo.salesperson(salesperson_id),

    CONSTRAINT FK_sales_inventory
        FOREIGN KEY (inventory_id)
        REFERENCES dbo.inventory(inventory_id)
);
GO


/* =========================================================
   11. EXPENSES
   ========================================================= */

CREATE TABLE dbo.expenses
(
    expense_id BIGINT PRIMARY KEY,
    showroom_id INT NOT NULL,
    expense_date DATE NOT NULL,
    expense_type VARCHAR(50) NOT NULL,
    amount DECIMAL(18,2) NOT NULL,
    description VARCHAR(255),
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_expense_showroom
        FOREIGN KEY (showroom_id)
        REFERENCES dbo.showroom(showroom_id)
);
GO


/* =========================================================
   12. CAMPAIGN EXPENSE
   ========================================================= */

CREATE TABLE dbo.campaign_expense
(
    campaign_expense_id BIGINT PRIMARY KEY,
    campaign_id INT NOT NULL,
    showroom_id INT NOT NULL,
    expense_date DATE NOT NULL,
    amount DECIMAL(18,2) NOT NULL,
    created_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_date DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_campaign_expense_campaign
        FOREIGN KEY (campaign_id)
        REFERENCES dbo.campaign(campaign_id),

    CONSTRAINT FK_campaign_expense_showroom
        FOREIGN KEY (showroom_id)
        REFERENCES dbo.showroom(showroom_id)
);
GO


/* =========================================================
   INDEXES FOR INCREMENTAL LOADS & ANALYTICS
   ========================================================= */

CREATE INDEX IX_sales_updated_date
ON dbo.sales(updated_date);
GO

CREATE INDEX IX_inventory_updated_date
ON dbo.inventory(updated_date);
GO

CREATE INDEX IX_marketing_lead_updated_date
ON dbo.marketing_lead(updated_date);
GO

CREATE INDEX IX_showroom_visit_updated_date
ON dbo.showroom_visit(updated_date);
GO

CREATE INDEX IX_test_drive_updated_date
ON dbo.test_drive(updated_date);
GO

CREATE INDEX IX_customer_followup_updated_date
ON dbo.customer_followup(updated_date);
GO

CREATE INDEX IX_expenses_updated_date
ON dbo.expenses(updated_date);
GO

CREATE INDEX IX_campaign_expense_updated_date
ON dbo.campaign_expense(updated_date);
GO