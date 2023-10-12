CREATE TABLE audit_table_name (
	id INT IDENTITY(1,1) PRIMARY KEY,
	table_name VARCHAR(20) NOT NULL
);

INSERT INTO audit_table_name (table_name)
VALUES ('DOG'), ('BREEDLOOKUP'), ('COLORLOOKUP');
