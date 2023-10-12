CREATE TABLE audit_action (
	id INT IDENTITY(1,1) PRIMARY KEY,
	action VARCHAR(20) NOT NULL
);

INSERT INTO audit_action (action)
VALUES ('INS'), ('DEL');
