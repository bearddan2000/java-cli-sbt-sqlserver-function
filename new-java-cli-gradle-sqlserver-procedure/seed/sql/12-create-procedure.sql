CREATE PROCEDURE sp_rolling_audit AS
BEGIN
	DELETE FROM audit WHERE
	MONTH(changed) <
	MONTH(GETDATE());

	return;
END