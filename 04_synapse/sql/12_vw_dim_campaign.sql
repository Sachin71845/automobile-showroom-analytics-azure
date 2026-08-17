CREATE OR ALTER VIEW gold.vw_dim_campaign
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/dim_campaign',
    FORMAT = 'DELTA'
) AS result;