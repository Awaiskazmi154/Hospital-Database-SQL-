CREATE TABLE IF NOT EXISTS SQL_SELECT (
    `SELECT_A_p_name` VARCHAR(143) CHARACTER SET utf8,
    `A_p_address` VARCHAR(21) CHARACTER SET utf8,
    `B_doc_name` VARCHAR(29) CHARACTER SET utf8,
    `C_ward_type` VARCHAR(23) CHARACTER SET utf8,
    `D_p_age` VARCHAR(18) CHARACTER SET utf8,
    `E_p_disease` VARCHAR(16) CHARACTER SET utf8
);
INSERT INTO SQL_SELECT VALUES
    ('SELECT A.p_name','A.p_address','B.doc_name',' C.ward_type','D.p_age','E.p_disease'),
    ('FROM Patient_info A',' Doctor B',' Ward C',' Patient_age D',' Patient_disease E',' Patient_stats F'),
    ('WHERE A.p_id = F.p_id and F.ward_id = C.ward_id and C.ward_type = ''Normal Ward'' and A.doc_id = B.doc_id and A.p_id = D.p_id and A.p_id = E.p_id',NULL,NULL,NULL,NULL,NULL),
    ('SELECT DISTINCT A.doc_id','B.doc_name',NULL,NULL,NULL,NULL),
    ('FROM Patient_info A',' Doctor B',NULL,NULL,NULL,NULL),
    ('WHERE A.doc_id = B.doc_id',NULL,NULL,NULL,NULL,NULL),
    ('ORDER BY B.doc_name ASC',NULL,NULL,NULL,NULL,NULL),
    ('SELECT sum(A.bill_ward_charge) as ''Total Wards Charged''',' ',NULL,NULL,NULL,NULL),
    ('sum(A.bill_operation_charge) as ''Total Operations Charged''',' ',NULL,NULL,NULL,NULL),
    ('sum(A.bill_doctor_charge) as ''Total Doctors Charged''',' ',NULL,NULL,NULL,NULL),
    ('sum(A.bill_nursing_charge) as ''Total Nurses Charged''',NULL,NULL,NULL,NULL,NULL),
    ('FROM Bill_total A ',NULL,NULL,NULL,NULL,NULL),
    ('SELECT A.member_name',' B.member_designation',' B.member_salary AS ''salary'' ',NULL,NULL,NULL),
    ('FROM StaffMember_info A',' Member_exp B',' StaffMember_ranking C',NULL,NULL,NULL),
    ('WHERE B.member_salary = (SELECT MAX(member_salary) FROM Member_exp)',NULL,NULL,NULL,NULL,NULL),
    ('AND B.member_experience = C.member_experience AND A.member_id = C.member_id',NULL,NULL,NULL,NULL,NULL),
    ('UNION',NULL,NULL,NULL,NULL,NULL),
    ('SELECT A.member_name',' B.member_designation',' B.member_salary AS ''salary'' ',NULL,NULL,NULL),
    ('FROM StaffMember_info A',' Member_exp B',' StaffMember_ranking C',NULL,NULL,NULL),
    ('WHERE B.member_salary = (SELECT MIN(member_salary) FROM Member_exp)',NULL,NULL,NULL,NULL,NULL),
    ('AND B.member_experience = C.member_experience AND A.member_id = C.member_id',NULL,NULL,NULL,NULL,NULL),
    ('SELECT A.dept_name',' B.member_name',' C.member_working_shifts',' C.member_salary ',NULL,NULL),
    ('FROM Department A',' StaffMember_info B',' Member_exp C',' StaffMember_ranking D',NULL,NULL),
    ('WHERE A.dept_name = ''EMG Dept''',NULL,NULL,NULL,NULL,NULL),
    ('AND A.dept_id = B.dept_id AND B.member_id = D.member_id  AND C.member_experience = D.member_experience',NULL,NULL,NULL,NULL,NULL),
    ('UNION',NULL,NULL,NULL,NULL,NULL),
    ('SELECT A.dept_name',' B.member_name',' C.member_working_shifts',' C.member_salary ',NULL,NULL),
    ('FROM Department A',' StaffMember_info B',' Member_exp C',' StaffMember_ranking D',NULL,NULL),
    ('WHERE A.dept_name = ''ENT''',NULL,NULL,NULL,NULL,NULL),
    ('AND A.dept_id = B.dept_id AND B.member_id = D.member_id  AND C.member_experience = D.member_experience',NULL,NULL,NULL,NULL,NULL),
    ('SELECT sum(A.member_salary) AS ''Total Salaries For Employees''','B.dept_name',NULL,NULL,NULL,NULL),
    ('FROM Member_exp A',' Department B',' StaffMember_info C',' StaffMember_ranking D ',NULL,NULL),
    ('WHERE B.dept_id = C.dept_id AND C.member_id = D.member_id  AND D.member_experience = A.member_experience',NULL,NULL,NULL,NULL,NULL);