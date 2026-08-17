CREATE OR ALTER VIEW gold.vw_dim_vehicle_model
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://stshowroomanalytics01.dfs.core.windows.net/gold/dim_vehicle_model',
    FORMAT = 'DELTA'
) AS result;