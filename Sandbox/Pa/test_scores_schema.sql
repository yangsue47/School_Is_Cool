CREATE TABLE student_info (
	student_id VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	lunch VARCHAR NOT NULL,
	school VARCHAR NOT NULL,
	classroom VARCHAR NOT NULL,
	UNIQUE (student_id)
);

CREATE TABLE school_info (
	school VARCHAR NOT NULL,
	school_setting VARCHAR NOT NULL,
	school_type VARCHAR NOT NULL,
	classroom VARCHAR NOT NULL,
	teaching_method VARCHAR NOT NULL,
	n_student INT NOT NULL,
	student_id VARCHAR NOT NULL,
FOREIGN KEY (student_id) REFERENCES student_info (student_id)
);

CREATE TABLE test_info (
	student_id VARCHAR NOT NULL,
	pretest INT NOT NULL,
	posttest INT NOT NULL,
FOREIGN KEY (student_id) references student_info (student_id)
);