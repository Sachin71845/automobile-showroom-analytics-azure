USE Car_Showroom_Enterprise;
GO

--insert values--
INSERT INTO dbo.showroom
(
    showroom_id,
    showroom_name,
    brand,
    city,
    state,
    manager_name,
    opening_date
)
VALUES
(1,  'Pune Central',       'Tata',       'Pune',        'Maharashtra', 'Rahul Patil',     '2020-01-15'),
(2,  'Mumbai Andheri',     'Hyundai',    'Mumbai',      'Maharashtra', 'Amit Sharma',     '2019-06-10'),
(3,  'Nashik Road',        'Maruti',     'Nashik',      'Maharashtra', 'Priya Deshmukh',  '2021-03-20'),
(4,  'Nagpur Central',     'Mahindra',   'Nagpur',      'Maharashtra', 'Vikas Jadhav',    '2020-08-12'),
(5,  'Thane West',         'Kia',        'Thane',       'Maharashtra', 'Sneha Kulkarni',  '2022-01-05'),
(6,  'Navi Mumbai',        'Toyota',     'Navi Mumbai', 'Maharashtra', 'Rohit Joshi',     '2021-09-18'),
(7,  'Aurangabad City',    'Honda',      'Aurangabad',  'Maharashtra', 'Sagar More',      '2020-11-25'),
(8,  'Kolhapur Central',   'Skoda',      'Kolhapur',    'Maharashtra', 'Neha Patil',      '2022-04-15'),
(9,  'Ahmednagar Road',    'Volkswagen', 'Ahmednagar',  'Maharashtra', 'Kunal Shinde',    '2021-07-10'),
(10, 'Solapur Central',    'Tata',       'Solapur',     'Maharashtra', 'Pooja Pawar',     '2022-06-20'),
(11, 'Pimpri Chinchwad',   'Hyundai',    'Pune',        'Maharashtra', 'Akash Gaikwad',   '2019-12-01'),
(12, 'Borivali Mumbai',    'Maruti',     'Mumbai',      'Maharashtra', 'Meena Shah',      '2020-05-15'),
(13, 'Kalyan East',        'Mahindra',   'Kalyan',      'Maharashtra', 'Nitin Kadam',     '2023-02-10'),
(14, 'Satara Road',        'Kia',        'Satara',      'Maharashtra', 'Riya Chavan',     '2023-05-18'),
(15, 'Vasai Road',         'Toyota',     'Vasai',       'Maharashtra', 'Manish Yadav',    '2022-10-12');
GO

-- =========================================================
-- SALESPERSON DATA
-- =========================================================

INSERT INTO dbo.salesperson
(
    salesperson_id,
    salesperson_name,
    showroom_id,
    joining_date
)
VALUES
(1,  'Rahul Patil',      1,  '2022-04-10'),
(2,  'Amit Sharma',      1,  '2023-01-15'),
(3,  'Priya Deshmukh',   2,  '2021-07-20'),
(4,  'Vikas Jadhav',     2,  '2023-03-12'),
(5,  ' Sneha Kulkarni',  3,  '2022-09-05'),
(6,  'ROHIT JOSHI',      3,  '2024-01-18'),
(7,  'Sagar More ',      4,  '2021-11-25'),
(8,  'Neha Patil',       4,  '2023-06-10'),
(9,  'Kunal Shinde',     5,  '2022-02-14'),
(10, 'Pooja Pawar',      5,  '2024-04-01'),
(11, 'Akash Gaikwad',    6,  '2020-08-18'),
(12, 'Meena Shah',       6,  '2023-10-22'),
(13, 'Nitin Kadam',      7,  '2021-05-17'),
(14, 'Riya Chavan',      8,  '2024-02-10'),
(15, 'Manish Yadav',     9,  '2022-12-05');
GO

-- =========================================================
-- CUSTOMER DATA
-- =========================================================

INSERT INTO dbo.customer
(
    customer_id,
    customer_name,
    phone,
    email,
    city,
    age,
    gender,
    occupation
)
VALUES
(1,  'Sachin Kaware',      '9876543210', 'sachin.kaware@gmail.com',   'Pune',        27, 'Male',   'Engineer'),
(2,  'Amit Sharma',        '9876543211', 'amit.sharma@gmail.com',     'Mumbai',      32, 'Male',   'Business'),
(3,  'Priya Deshmukh',     '9876543212', 'priya.d@gmail.com',         'Nashik',      29, 'Female', 'Teacher'),
(4,  '  Rahul Patil',      '9876543213', 'rahul.patil@gmail.com',     'Pune',        35, 'Male',   'Business'),
(5,  'Sneha Kulkarni ',    '9876543214', 'sneha.k@gmail.com',          'Thane',       28, 'Female', 'Engineer'),
(6,  'ROHIT JOSHI',        '9876543215', 'rohit.joshi@gmail.com',     'Mumbai',      41, 'Male',   'Doctor'),
(7,  'Neha Patil',         '9876543216', 'neha.patil@gmail.com',      'Nagpur',      31, 'Female', 'Government'),
(8,  'Kunal Shinde',       '9876543217', 'kunal.shinde@gmail.com',    'Kolhapur',    26, 'Male',   'Engineer'),
(9,  'Pooja Pawar',        '9876543218', 'pooja.pawar@gmail.com',     'Aurangabad',  34, 'Female', 'Teacher'),
(10, 'Sagar More',         '9876543219', 'sagar.more@gmail.com',      'Nashik',      39, 'Male',   'Business'),
(11, 'Meena Shah',         '9876543220', NULL,                         'Mumbai',      45, 'Female', 'Business'),
(12, 'Akash Gaikwad',      '9876543221', 'akash.g@gmail.com',         'Pune',        30, 'Male',   'Engineer'),
(13, 'Vikas Jadhav',       NULL,         'vikas.jadhav@gmail.com',    'Nagpur',      37, 'Male',   'Government'),
(14, 'Riya Chavan',        '9876543223', 'riya.chavan@gmail.com',     'Satara',      25, 'Female', NULL),
(15, 'manish yadav',       '9876543224', 'manish.yadav@gmail.com',     'Vasai',       42, 'Male',   'Business'),
(16, '  Anjali More  ',    '9876543225', 'anjali.more@gmail.com',     'Pune',        29, 'Female', 'Engineer'),
(17, 'VIVEK SHARMA',       '9876543226', 'vivek.sharma@gmail.com',    'Thane',       36, 'Male',   'Private'),
(18, 'Kiran Patil',        '9876543227', NULL,                         'Nashik',      33, 'Female', 'Teacher'),
(19, 'Rakesh Jadhav',      '9876543228', 'rakesh.jadhav@gmail.com',   'PUNE',        40, 'Male',   'Business'),
(20, 'Snehal  Joshi',      '9876543229', 'snehal.joshi@gmail.com',    ' Mumbai ',    27, 'Female', 'Engineer');
GO

-- =========================================================
-- MARKETING CAMPAIGN DATA
-- =========================================================

INSERT INTO dbo.campaign
(
    campaign_id,
    campaign_name,
    campaign_type,
    start_date,
    end_date,
    budget
)
VALUES
(1,  'Diwali Mega Sale',        'Festival',     '2025-10-01', '2025-11-15', 1500000),
(2,  'Google Search Campaign',  'Digital',      '2025-11-01', '2025-12-31', 900000),
(3,  'Instagram SUV Campaign',  'Social Media', '2025-12-01', '2026-01-31', 700000),
(4,  'New Year Offer',          'Festival',     '2026-01-01', '2026-01-31', 1200000),
(5,  'Republic Day Offer',      'Festival',     '2026-01-15', '2026-01-31', 800000),
(6,  'Summer SUV Sale',         'Seasonal',     '2026-03-01', '2026-04-30', 1100000),
(7,  'YouTube Campaign',        'Digital',      '2026-03-15', '2026-05-15', 650000),
(8,  'Exchange Bonus',          'Promotion',    '2026-04-01', '2026-05-31', 950000),
(9,  'Monsoon Offer',           'Seasonal',     '2026-06-01', '2026-07-31', 850000),
(10, 'Independence Sale',       'Festival',     '2026-08-01', '2026-08-20', 1000000);
GO

-- =========================================================
-- MARKETING LEAD DATA
-- =========================================================

INSERT INTO dbo.marketing_lead
(
    lead_id,
    customer_id,
    showroom_id,
    campaign_id,
    salesperson_id,
    lead_date,
    lead_source,
    lead_status
)
VALUES
(1,  1,  1,  2,  1,  '2026-01-05', 'Google Ads',  'Converted'),
(2,  2,  2,  3,  3,  '2026-01-12', 'Instagram',   'Qualified'),
(3,  3,  3,  1,  5,  '2026-01-15', 'Walk-in',     'New'),
(4,  4,  1,  4,  2,  '2026-01-18', 'google ads',  'Contacted'),
(5,  5,  5,  3,  9,  '2026-01-22', ' instagram ', 'Qualified'),
(6,  6,  2,  5,  4,  '2026-01-25', 'Website',     'Converted'),
(7,  7,  4,  6,  7,  '2026-02-01', 'Facebook',    'Lost'),
(8,  8,  5,  7,  10, '2026-02-05', 'Referral',    'Contacted'),
(9,  9,  7,  8,  13, '2026-02-10', 'Google Ads',  'Qualified'),
(10, 10, 3,  9,  6,  '2026-02-15', 'Website',     'Converted'),
(11, 11, 6,  2,  11, '2026-02-20', 'GOOGLE ADS',  'New'),
(12, 12, 1,  10, 1,  '2026-02-25', 'Instagram',   'Qualified'),
(13, 13, 4,  4,  8,  '2026-03-01', 'Walk-in',     'Contacted'),
(14, 14, 8,  7, 14,  '2026-03-05', 'facebook',    'Lost'),
(15, 15, 9,  6, 15, '2026-03-10', ' Referral ',  'Converted'),
(16, 16, 11, 3, 2, '2026-03-15', 'Website',      'New'),
(17, 17, 12, 5, 12, '2026-03-20', 'Instagram',   'Qualified'),
(18, 18, 13, 8, 13, '2026-03-25', 'Google Ads',  'Contacted'),
(19, 19, 14, 9, 14, '2026-04-01', 'Walk-in',      'Converted'),
(20, 20, 15, 10, 15, '2026-04-05', 'Website',     'New');
GO

-- =========================================================
-- SHOWROOM VISIT DATA
-- =========================================================

INSERT INTO dbo.showroom_visit
(
    visit_id,
    customer_id,
    showroom_id,
    salesperson_id,
    visit_date,
    visit_purpose,
    visit_status
)
VALUES
(1,  1,  1,  1,  '2026-01-08', 'New Car Inquiry', 'Completed'),
(2,  2,  2,  3,  '2026-01-12', 'Test Drive',     'Completed'),
(3,  3,  3,  5,  '2026-01-15', 'Price Inquiry',   'Completed'),
(4,  4,  1,  2,  '2026-01-18', 'New Car Inquiry', 'Scheduled'),
(5,  5,  5,  9,  '2026-01-22', 'Test Drive',     'Completed'),
(6,  6,  2,  4,  '2026-02-02', 'Exchange',       'Completed'),
(7,  7,  4,  7,  '2026-02-08', 'New Car Inquiry', 'Cancelled'),
(8,  8,  5,  10, '2026-02-14', 'Test Drive',     'Completed'),
(9,  9,  7,  13, '2026-02-20', 'Price Inquiry',   'Completed'),
(10, 10, 3,  6,  '2026-02-25', 'New Car Inquiry', 'Completed'),
(11, 11, 6,  11, '2026-03-03', 'Test Drive',     'Completed'),
(12, 12, 1,  1,  '2026-03-10', 'Exchange',       'Scheduled'),
(13, 13, 4,  8,  '2026-03-15', 'Price Inquiry',   'Completed'),
(14, 14, 8,  14, '2026-03-22', 'Test Drive',     'Cancelled'),
(15, 15, 9,  15, '2026-04-01', 'New Car Inquiry', 'Completed'),
(16, 16, 11, 2,  '2026-04-08', 'Test Drive',     'Completed'),
(17, 17, 12, 12, '2026-04-15', 'Price Inquiry',   'Completed'),
(18, 18, 13, 13, '2026-05-02', 'New Car Inquiry', 'Scheduled'),
(19, 19, 14, 14, '2026-05-10', 'Test Drive',     'Completed'),
(20, 20, 15, 15, '2026-05-18', 'Exchange',       'Completed');
GO

-- =========================================================
-- TEST DRIVE DATA
-- =========================================================

INSERT INTO dbo.test_drive
(
    test_drive_id,
    customer_id,
    vehicle_id,
    showroom_id,
    salesperson_id,
    test_drive_date,
    test_drive_status
)
VALUES
(1,  1,  10001, 1,  1,  '2026-01-09', 'Completed'),
(2,  2,  10008, 2,  3,  '2026-01-13', 'Completed'),
(3,  3,  10016, 3,  5,  '2026-01-16', 'Completed'),
(4,  4,  10002, 1,  2,  '2026-01-19', 'No Show'),
(5,  5,  10027, 5,  9,  '2026-01-23', 'Completed'),
(6,  6,  10009, 2,  4,  '2026-02-03', 'Completed'),
(7,  7,  10023, 4,  7,  '2026-02-09', 'Cancelled'),
(8,  8,  10028, 5,  10, '2026-02-15', 'Completed'),
(9,  9,  10034, 7,  13, '2026-02-21', 'Completed'),
(10, 10, 10005, 3,  6,  '2026-02-26', 'Completed'),
(11, 11, 10030, 6,  11, '2026-03-04', 'Completed'),
(12, 12, 10003, 1,  1,  '2026-03-11', 'No Show'),
(13, 13, 10025, 4,  8,  '2026-03-16', 'Completed'),
(14, 14, 10035, 8,  14, '2026-03-23', 'Cancelled'),
(15, 15, 10037, 9,  15, '2026-04-02', 'Completed'),
(16, 16, 10012, 11, 2,  '2026-04-09', 'Completed'),
(17, 17, 10018, 12, 12, '2026-04-16', 'Completed'),
(18, 18, 10024, 13, 13, '2026-05-03', 'No Show'),
(19, 19, 10029, 14, 14, '2026-05-11', 'Completed'),
(20, 20, 10031, 15, 15, '2026-05-19', 'Completed');
GO

-- =========================================================
-- CUSTOMER FOLLOW-UP DATA
-- =========================================================

INSERT INTO dbo.customer_followup
(
    followup_id,
    lead_id,
    customer_id,
    salesperson_id,
    showroom_id,
    followup_date,
    followup_type,
    followup_status,
    remarks
)
VALUES
(1,  1,  1,  1,  1,  '2026-01-10', 'Phone',    'Completed',   'Customer interested in Nexon'),
(2,  2,  2,  3,  2,  '2026-01-14', 'WhatsApp', 'Completed',   'Customer requested price details'),
(3,  3,  3,  5,  3,  '2026-01-17', 'Phone',    'Pending',     'Customer considering multiple models'),
(4,  4,  4,  2,  1,  '2026-01-20', 'Email',    'Completed',   'Quotation sent to customer'),
(5,  5,  5,  9,  5,  '2026-01-24', 'WhatsApp', 'Completed',   'Customer interested in Seltos'),
(6,  6,  6,  4,  2,  '2026-02-04', 'Phone',    'Completed',   'Exchange details discussed'),
(7,  7,  7,  7,  4,  '2026-02-10', 'Email',    'No Response', 'Customer did not respond'),
(8,  8,  8,  10, 5,  '2026-02-16', 'Phone',    'Completed',   'Test drive feedback received'),
(9,  9,  9,  13, 7,  '2026-02-22', 'WhatsApp', 'Pending',     'Customer asked for finance options'),
(10, 10, 10, 6, 3,  '2026-02-27', 'Phone',    'Completed',   'Customer ready for booking'),
(11, 11, 11, 11, 6, '2026-03-05', 'Email',    'Completed',   'Quotation sent'),
(12, 12, 12, 1, 1,  '2026-03-12', 'Phone',    'Pending',     'Customer requested callback'),
(13, 13, 13, 8, 4,  '2026-03-17', 'WhatsApp', 'Completed',   'Customer interested in SUV'),
(14, 14, 14, 14, 8, '2026-03-24', 'Phone',    'No Response', 'No response from customer'),
(15, 15, 15, 15, 9, '2026-04-03', 'Email',    'Completed',   'Finance options shared'),
(16, 16, 16, 2, 11, '2026-04-10', 'Phone',    'Completed',   'Customer interested in Venue'),
(17, 17, 17, 12, 12, '2026-04-17', 'WhatsApp', 'Pending',     'Customer comparing models'),
(18, 18, 18, 13, 13, '2026-05-04', 'Phone',    'Completed',   'Follow-up scheduled'),
(19, 19, 19, 14, 14, '2026-05-12', 'Email',    'Completed',   'Customer requested final quotation'),
(20, 20, 20, 15, 15, '2026-05-20', 'WhatsApp', 'Completed',   'Customer interested in Fortuner');
GO

-- =========================================================
-- INVENTORY DATA
-- =========================================================

INSERT INTO dbo.inventory
(
    inventory_id,
    vehicle_id,
    showroom_id,
    vin,
    purchase_date,
    purchase_cost,
    status
)
VALUES
(1,  10001, 1,  'VIN20260001', '2026-01-05', 1050000, 'Sold'),
(2,  10002, 1,  'VIN20260002', '2026-01-12', 1200000, 'Sold'),
(3,  10008, 2,  'VIN20260003', '2026-01-18', 1500000, 'Sold'),
(4,  10009, 2,  'VIN20260004', '2026-02-01', 1600000, 'Available'),
(5,  10016, 3,  'VIN20260005', '2026-02-05', 720000,  'Sold'),
(6,  10017, 3,  'VIN20260006', '2026-02-10', 850000,  'Available'),
(7,  10023, 4,  'VIN20260007', '2026-02-15', 1200000, 'Sold'),
(8,  10024, 4,  'VIN20260008', '2026-02-20', 1650000, 'Reserved'),
(9,  10027, 5,  'VIN20260009', '2026-02-25', 1600000, 'Sold'),
(10, 10028, 5,  'VIN20260010', '2026-03-01', 1250000, 'Available'),
(11, 10030, 6,  'VIN20260011', '2026-03-05', 2200000, 'Sold'),
(12, 10031, 6,  'VIN20260012', '2026-03-10', 4300000, 'Available'),
(13, 10034, 7,  'VIN20260013', '2026-03-15', 1550000, 'Sold'),
(14, 10035, 8,  'VIN20260014', '2026-03-20', 1300000, 'Reserved'),
(15, 10037, 9,  'VIN20260015', '2026-03-25', 1700000, 'Sold'),
(16, 10038, 9,  'VIN20260016', '2026-04-01', 1650000, 'Available'),
(17, 10003, 1,  'VIN20260017', '2026-04-05', 1250000, 'Available'),
(18, 10005, 3,  'VIN20260018', '2026-04-10', 950000,  'Sold'),
(19, 10012, 11, 'VIN20260019', '2026-04-15', 950000,  'Sold'),
(20, 10018, 12, 'VIN20260020', '2026-04-20', 900000,  'Available');
GO

-- =========================================================
-- SALES DATA
-- =========================================================

INSERT INTO dbo.sales
(
    sale_id,
    customer_id,
    vehicle_id,
    showroom_id,
    salesperson_id,
    inventory_id,
    sale_date,
    sale_price,
    purchase_cost,
    discount,
    commission,
    payment_method
)
VALUES
(1,  1,  10001, 1,  1,  1,  '2026-01-10', 1180000, 1050000, 20000, 15000, 'Loan'),
(2,  2,  10002, 1,  2,  2,  '2026-01-20', 1350000, 1200000, 30000, 18000, 'Bank Transfer'),
(3,  3,  10008, 2,  3,  3,  '2026-01-25', 1680000, 1500000, 25000, 20000, 'Loan'),
(4,  5,  10016, 3,  5,  5,  '2026-02-12', 830000,  720000,  10000, 9000,  'UPI'),
(5,  7,  10023, 4,  7,  7,  '2026-02-22', 1420000, 1200000, 30000, 16000, 'Loan'),
(6,  8,  10027, 5,  9,  9,  '2026-03-02', 1760000, 1600000, 20000, 18000, 'Bank Transfer'),
(7,  10, 10030, 6,  11, 11, '2026-03-12', 2450000, 2200000, 50000, 25000, 'Loan'),
(8,  13, 10034, 7,  13, 13, '2026-03-25', 1690000, 1550000, 25000, 17000, 'UPI'),
(9,  15, 10037, 9,  15, 15, '2026-04-05', 1880000, 1700000, 30000, 19000, 'Loan'),
(10, 18, 10005, 3,  6,  18, '2026-04-18', 1080000, 950000,  15000, 10000, 'Cash'),
(11, 19, 10012, 11, 2,  19, '2026-04-25', 1180000, 950000,  20000, 12000, 'Loan');
GO

-- =========================================================
-- SHOWROOM EXPENSE DATA
-- =========================================================

INSERT INTO dbo.expenses
(
    expense_id,
    showroom_id,
    expense_date,
    expense_type,
    amount,
    description
)
VALUES
(1,  1,  '2026-01-31', 'Rent',        180000, 'Monthly showroom rent'),
(2,  1,  '2026-01-31', 'Electricity',  32000, 'Monthly electricity bill'),
(3,  2,  '2026-01-31', 'Marketing',    75000, 'Digital marketing expense'),
(4,  2,  '2026-02-28', 'Maintenance',  28000, 'Showroom maintenance'),
(5,  3,  '2026-02-28', 'Rent',        150000, 'Monthly showroom rent'),
(6,  3,  '2026-02-28', 'Salary',      220000, 'Sales staff salary'),
(7,  4,  '2026-03-31', 'Electricity',  35000, 'Monthly electricity bill'),
(8,  4,  '2026-03-31', 'Marketing',    60000, 'Local marketing campaign'),
(9,  5,  '2026-03-31', 'Rent',        175000, 'Monthly showroom rent'),
(10, 5,  '2026-04-30', 'Maintenance',  24000, 'Vehicle display area maintenance'),
(11, 6,  '2026-04-30', 'Marketing',    90000, 'Online advertising'),
(12, 7,  '2026-05-31', 'Salary',      210000, 'Sales staff salary'),
(13, 8,  '2026-05-31', 'Electricity',  30000, 'Monthly electricity bill'),
(14, 9,  '2026-06-30', 'Rent',        160000, 'Monthly showroom rent'),
(15, 11, '2026-06-30', 'Marketing',    85000, 'Social media campaign');
GO

-- =========================================================
-- CAMPAIGN EXPENSE DATA
-- =========================================================

INSERT INTO dbo.campaign_expense
(
    campaign_expense_id,
    campaign_id,
    showroom_id,
    expense_date,
    amount
)
VALUES
(1,  1,  1,  '2025-10-15', 120000),
(2,  1,  2,  '2025-10-20', 150000),
(3,  2,  1,  '2025-11-10', 85000),
(4,  2,  6,  '2025-11-15', 90000),
(5,  3,  5,  '2025-12-10', 65000),
(6,  3,  2,  '2025-12-15', 70000),
(7,  4,  1,  '2026-01-05', 110000),
(8,  4,  3,  '2026-01-08', 95000),
(9,  5,  4,  '2026-01-18', 70000),
(10, 5, 7,  '2026-01-20', 65000),
(11, 6,  4,  '2026-03-10', 90000),
(12, 6, 5,  '2026-03-15', 85000),
(13, 7,  2,  '2026-04-01', 55000),
(14, 8,  6,  '2026-04-15', 75000),
(15, 9,  9,  '2026-06-10', 65000);
GO

-- =========================================================
-- VERIFY ALL SOURCE TABLES
-- =========================================================

SELECT * FROM dbo.showroom;
SELECT * FROM dbo.salesperson;
SELECT * FROM dbo.customer;
SELECT * FROM dbo.campaign;
SELECT * FROM dbo.marketing_lead;
SELECT * FROM dbo.showroom_visit;
SELECT * FROM dbo.customer_followup;
SELECT * FROM dbo.inventory;
SELECT * FROM dbo.sales;
SELECT * FROM dbo.expenses;
SELECT * FROM dbo.campaign_expense;
SELECT * FROM dbo.test_drive;


