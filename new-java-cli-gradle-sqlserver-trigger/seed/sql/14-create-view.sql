CREATE VIEW audit_view AS
SELECT a.id, loggedin_user as 'user', MONTH(changed) as 'Month', DAY(changed) as 'Day',
  action, table_name as 'Table', old_val, new_val
FROM audit as a
JOIN audit_action as b ON a.actionId = b.id
JOIN audit_table_name as c ON a.tblId = c.id;