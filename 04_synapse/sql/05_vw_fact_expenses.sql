CREATE OR ALTER VIEW gold.vw_fact_expenses
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/fact_expenses',
    FORMAT = 'DELTA'
) AS result;