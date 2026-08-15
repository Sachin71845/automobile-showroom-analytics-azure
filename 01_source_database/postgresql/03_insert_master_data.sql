/* =========================================================
   VEHICLE MODEL MASTER DATA
   ========================================================= */

INSERT INTO vehicle_model
(model_id, brand, model_name, vehicle_type, segment)
VALUES
(101, 'Tata', 'Nexon', 'SUV', 'Mid'),
(102, 'Tata', 'Punch', 'SUV', 'Entry'),
(103, 'Tata', 'Harrier', 'SUV', 'Premium'),
(104, 'Tata', 'Safari', 'SUV', 'Premium'),

(105, 'Hyundai', 'Creta', 'SUV', 'Mid'),
(106, 'Hyundai', 'Venue', 'SUV', 'Entry'),
(107, 'Hyundai', 'Verna', 'Sedan', 'Mid'),
(108, 'Hyundai', 'i20', 'Hatchback', 'Entry'),

(109, 'Maruti', 'Swift', 'Hatchback', 'Entry'),
(110, 'Maruti', 'Baleno', 'Hatchback', 'Mid'),
(111, 'Maruti', 'Brezza', 'SUV', 'Mid'),
(112, 'Maruti', 'Grand Vitara', 'SUV', 'Premium'),

(113, 'Mahindra', 'XUV 3XO', 'SUV', 'Mid'),
(114, 'Mahindra', 'Scorpio', 'SUV', 'Premium'),
(115, 'Mahindra', 'XUV700', 'SUV', 'Premium'),
(116, 'Mahindra', 'Thar', 'SUV', 'Premium'),

(117, 'Kia', 'Seltos', 'SUV', 'Mid'),
(118, 'Kia', 'Sonet', 'SUV', 'Entry'),
(119, 'Kia', 'Carens', 'MUV', 'Premium'),

(120, 'Toyota', 'Innova', 'MUV', 'Premium'),
(121, 'Toyota', 'Fortuner', 'SUV', 'Luxury'),
(122, 'Toyota', 'Urban Cruiser', 'SUV', 'Mid'),

(123, 'Honda', 'City', 'Sedan', 'Mid'),
(124, 'Honda', 'Elevate', 'SUV', 'Mid'),

(125, 'Skoda', 'Kushaq', 'SUV', 'Mid'),
(126, 'Skoda', 'Slavia', 'Sedan', 'Mid'),

(127, 'Volkswagen', 'Taigun', 'SUV', 'Mid'),
(128, 'Volkswagen', 'Virtus', 'Sedan', 'Mid');

--insert data into vehicle--
INSERT INTO vehicle
(vehicle_id, model_id, variant, fuel_type, transmission,
 manufacturing_year, base_price)
VALUES

(10001, 101, 'XZ+', 'Petrol', 'Manual', 2026, 1250000),
(10002, 101, 'XZ+ Lux', 'Petrol', 'Automatic', 2026, 1400000),
(10003, 101, 'XZ+ Diesel', 'Diesel', 'Manual', 2026, 1450000),

(10004, 102, 'Adventure', 'Petrol', 'Manual', 2026, 950000),
(10005, 102, 'Creative+', 'Petrol', 'Automatic', 2026, 1100000),

(10006, 103, 'XZA', 'Diesel', 'Automatic', 2026, 2100000),
(10007, 104, 'Accomplished', 'Diesel', 'Automatic', 2026, 2400000),

(10008, 105, 'S', 'Petrol', 'Manual', 2026, 1450000),
(10009, 105, 'SX', 'Petrol', 'Automatic', 2026, 1750000),
(10010, 105, 'SX Diesel', 'Diesel', 'Automatic', 2026, 1900000),

(10011, 106, 'S', 'Petrol', 'Manual', 2026, 850000),
(10012, 106, 'SX', 'Petrol', 'Automatic', 2026, 1050000),

(10013, 107, 'SX', 'Petrol', 'Manual', 2026, 1350000),
(10014, 107, 'SX Turbo', 'Petrol', 'Automatic', 2026, 1650000),

(10015, 108, 'Sportz', 'Petrol', 'Manual', 2026, 850000),

(10016, 109, 'VXI', 'Petrol', 'Manual', 2026, 800000),
(10017, 109, 'ZXI+', 'Petrol', 'Automatic', 2026, 950000),

(10018, 110, 'Alpha', 'Petrol', 'Manual', 2026, 1000000),
(10019, 110, 'Alpha AMT', 'Petrol', 'Automatic', 2026, 1150000),

(10020, 111, 'ZXI', 'Petrol', 'Manual', 2026, 1150000),
(10021, 111, 'ZXI AT', 'Petrol', 'Automatic', 2026, 1350000),

(10022, 112, 'Alpha+', 'Hybrid', 'Automatic', 2026, 1900000),

(10023, 113, 'AX5', 'Petrol', 'Manual', 2026, 1350000),
(10024, 114, 'S11', 'Diesel', 'Manual', 2026, 1850000),
(10025, 115, 'AX7', 'Diesel', 'Automatic', 2026, 2500000),
(10026, 116, 'LX', 'Petrol', 'Manual', 2026, 1750000),

(10027, 117, 'HTX', 'Petrol', 'Automatic', 2026, 1800000),
(10028, 118, 'GTX+', 'Petrol', 'Automatic', 2026, 1400000),
(10029, 119, 'Luxury Plus', 'Diesel', 'Automatic', 2026, 2000000),

(10030, 120, 'ZX', 'Hybrid', 'Automatic', 2026, 2500000),
(10031, 121, 'Legender', 'Diesel', 'Automatic', 2026, 4800000),
(10032, 122, 'High', 'Petrol', 'Automatic', 2026, 1600000),

(10033, 123, 'ZX', 'Petrol', 'Manual', 2026, 1450000),
(10034, 124, 'ZX', 'Petrol', 'Automatic', 2026, 1750000),

(10035, 125, 'Style', 'Petrol', 'Manual', 2026, 1450000),
(10036, 126, 'Style', 'Petrol', 'Manual', 2026, 1400000),

(10037, 127, 'GT', 'Petrol', 'Automatic', 2026, 1900000),
(10038, 128, 'GT', 'Petrol', 'Automatic', 2026, 1850000

SELECT COUNT(*) AS model_count
FROM vehicle_model;

SELECT COUNT(*) AS vehicle_count
FROM vehicle;

