CREATE OR ALTER VIEW gold.vw_fact_sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/fact_sales',
    FORMAT = 'DELTA'
) AS result;