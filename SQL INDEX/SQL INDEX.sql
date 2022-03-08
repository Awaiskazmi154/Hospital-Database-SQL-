CREATE TABLE IF NOT EXISTS SQL_INDEX (
    `CREATE_UNIQUE_INDEX_IX_StaffMember_Name` VARCHAR(40) CHARACTER SET utf8
);
INSERT INTO SQL_INDEX VALUES
    ('ON StaffMember_info (member_name)'),
    ('SELECT member_name FROM StaffMember_info'),
    ('WHERE member_name LIKE ''o%'';');
