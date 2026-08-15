--create first vehicale model tabel--
CREATE TABLE vehicle_model
(
    model_id INTEGER PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model_name VARCHAR(100) NOT NULL,
    vehicle_type VARCHAR(50),
    segment VARCHAR(50),
    created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--create second table--
CREATE TABLE vehicle
(
    vehicle_id INTEGER PRIMARY KEY,
    model_id INTEGER NOT NULL,
    variant VARCHAR(100) NOT NULL,
    fuel_type VARCHAR(30) NOT NULL,
    transmission VARCHAR(30) NOT NULL,
    manufacturing_year INTEGER NOT NULL,
    base_price NUMERIC(18,2) NOT NULL,
    created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_vehicle_model
        FOREIGN KEY (model_id)
        REFERENCES vehicle_model(model_id)
);

--create indexes for incremental loading--
CREATE INDEX idx_vehicle_updated_date
ON vehicle(updated_date);

CREATE INDEX idx_vehicle_model_updated_date
ON vehicle_model(updated_date);

CREATE INDEX idx_vehicle_model_brand
ON vehicle_model(brand);