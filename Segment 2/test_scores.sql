CREATE TABLE student_info (
  student_id VARCHAR NOT NULL,
  school VARCHAR NOT NULL,
  gender VARCHAR NOT NULL,
  lunch VARCHAR NOT NULL,
  pretest FLOAT NOT NULL,
  posttest FLOAT NOT NULL,
  PRIMARY KEY (student_id)
);

CREATE TABLE school_info (
	school VARCHAR NOT NULL,
	student_id VARCHAR NOT NULL,
	school_setting VARCHAR NOT NULL,
	school_type VARCHAR NOT NULL,
	classroom VARCHAR NOT NULL,
	teaching_method VARCHAR NOT NULL,
	n_student FLOAT NOT NULL,
	FOREIGN KEY (student_id) REFERENCES student_info (student_id)
);



SELECT * FROM school_info;

SELECT * FROM student_info;

SELECT sc.student_id,
	sc.school,
	sc.school_setting,
	sc.school_type,
	sc.classroom,
	sc.teaching_method,
	sc.n_student,
	st.gender,
	st.lunch,
	st.pretest,
	st.posttest
INTO combined_table_info
FROM school_info AS sc
JOIN student_info as st
ON sc.student_id = st.student_id;

SELECT * FROM combined_table_info;
DROP TABLE combined_table_info;
