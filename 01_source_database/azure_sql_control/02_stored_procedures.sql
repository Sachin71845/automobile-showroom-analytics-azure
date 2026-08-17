CREATE OR ALTER PROCEDURE dbo.usp_UpdateControlWatermark
    @control_id INT,
    @last_load_value DATETIME2
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.data_factory_control_log
    SET
        last_load_value = @last_load_value,
        updated_date = GETDATE()
    WHERE control_id = @control_id;
END;
GO