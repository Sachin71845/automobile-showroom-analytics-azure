CREATE OR ALTER VIEW gold.vw_fact_sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'fact_sales',
    DATA_SOURCE = 'gold_storage',
    FORMAT = 'DELTA'
) AS result;