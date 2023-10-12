CREATE TRIGGER ins_dog_trigger
ON dog
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
	DECLARE @action INT;
	DECLARE @tbl INT;
    DECLARE @chg DATETIME;
    DECLARE @login_name VARCHAR(128)
    DECLARE @x VARCHAR(255);
    DECLARE @y VARCHAR(255);
    DECLARE @z VARCHAR(255);

    SELECT  @login_name = login_name
    FROM    sys.dm_exec_sessions
    WHERE   session_id = @@SPID

	SET @action = 1; -- INSERT
	SET @tbl = 1; -- DOG
    SELECT @x = b.breed FROM Inserted as a JOIN breedLookup as b ON b.id = a.breedId;
    SELECT @y = b.color FROM Inserted as a JOIN colorLookup as b ON b.id = a.colorId;
    SET @z = CONCAT('breed: ', @x, ' color: ', @y);

    EXEC sp_rolling_audit

    INSERT INTO audit (loggedin_user, changed, actionId, tblId, new_val)
		VALUES (@login_name, GETDATE(), @action, @tbl, @z);
END