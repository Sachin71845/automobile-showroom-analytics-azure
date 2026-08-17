CREATE OR ALTER VIEW gold.vw_fact_leads
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/fact_leads',
    FORMAT = 'DELTA'
) AS result;