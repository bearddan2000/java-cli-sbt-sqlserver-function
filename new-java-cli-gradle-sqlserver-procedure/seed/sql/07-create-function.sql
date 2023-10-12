CREATE FUNCTION fn_breed_count (@bid int) RETURNS INT
AS
BEGIN
    RETURN ( SELECT COUNT(*) FROM dog WHERE breedId = @bid )
END
