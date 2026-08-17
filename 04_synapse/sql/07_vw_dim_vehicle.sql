CREATE OR ALTER VIEW gold.vw_dim_vehicle
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/dim_vehicle',
    FORMAT = 'DELTA'
) AS result;