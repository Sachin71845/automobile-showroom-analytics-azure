CREATE OR ALTER VIEW gold.vw_fact_inventory
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/fact_inventory',
    FORMAT = 'DELTA'
) AS result;