-- -----------------------------------------------------
-- Get dashboard exams for a student
-- -----------------------------------------------------
SELECT 
    all_exams.id_exam,
    all_exams.id_class,
    classes.name AS class,
    all_exams.title,
    all_exams.questions,
    all_exams.duration
FROM
    (SELECT 
        students_exams.id_student, students_exams.id_exam
    FROM
        students_exams
    WHERE
        students_exams.id_student = '3') AS attended_exams
        RIGHT JOIN
    (SELECT 
        students_classes.id_student,
            exams.id_exam,
            exams.id_class,
            exams.id_status,
            exams.title,
            exams.questions,
            exams.duration
    FROM
        exams
    INNER JOIN students_classes ON exams.id_class = students_classes.id_class
    WHERE
        students_classes.id_student = '3') AS all_exams ON attended_exams.id_exam = all_exams.id_exam,
    classes
WHERE
    attended_exams.id_exam IS NULL
        AND all_exams.id_class = classes.id_class
        AND all_exams.id_status = '2';

-- -----------------------------------------------------
-- Get history exams for a student
-- -----------------------------------------------------
SELECT 
    exams.id_exam,
    exams.id_class,
    classes.name AS class,
    exams.title,
    exams.questions,
    students_exams.right_answers,
    (exams.questions - students_exams.right_answers) AS wrong_answers,
    ROUND(((students_exams.right_answers * 100) / exams.questions),
            2) AS score,
    students_exams.date_time
FROM
    exams,
    classes,
    students_exams
WHERE
    exams.id_class = classes.id_class
        AND exams.id_exam = students_exams.id_exam
        AND students_exams.id_student = '2';

-- -----------------------------------------------------
-- Get student classes with total_exams
-- -----------------------------------------------------
SELECT DISTINCT
    classes_list.id_class,
    classes_list.name AS class,
    classes_list.instructor,
    classes_list.email,
    COUNT(DISTINCT (exams_list.id_exam)) AS total_exams
FROM
    (SELECT 
        students_classes.id_student,
            classes.id_class,
            classes.name,
            CONCAT(instructors.first_name, ' ', instructors.last_name) AS instructor,
            instructors.email
    FROM
        students_classes, classes, instructors
    WHERE
        students_classes.id_class = classes.id_class
            AND classes.id_instructor = instructors.id_instructor) AS classes_list
        LEFT JOIN
    (SELECT 
        students_classes.id_student,
            exams.id_exam,
            classes.id_class,
            exams.id_status
    FROM
        exams, classes, students_classes
    WHERE
        exams.id_class = classes.id_class
            AND classes.id_class = students_classes.id_class
            AND exams.id_status = '2') AS exams_list ON classes_list.id_class = exams_list.id_class
WHERE
    classes_list.id_student = '3'
GROUP BY classes_list.name;

-- -----------------------------------------------------
-- Get instructor exams
-- -----------------------------------------------------
SELECT 
    exams.id_exam,
    classes.id_class,
    exams.id_status,
    classes.name AS class,
    exams.title,
    exams.questions,
    exams.duration
FROM
    classes,
    exams,
    instructors
WHERE
    exams.id_class = classes.id_class
        AND classes.id_instructor = instructors.id_instructor
        AND instructors.id_instructor = '1';

-- -----------------------------------------------------
-- Get classes with total_students
-- -----------------------------------------------------
SELECT 
    instructors.id_instructor,
    classes.id_class,
    classes.name AS class,
    COUNT(students_classes.id_student) AS total_students
FROM
    instructors,
    classes
        LEFT JOIN
    students_classes ON classes.id_class = students_classes.id_class
WHERE
    classes.id_instructor = instructors.id_instructor
GROUP BY classes.id_class;

-- -----------------------------------------------------
-- Get classes with total_exams
-- -----------------------------------------------------
SELECT 
    instructors.id_instructor,
    classes.id_class,
    classes.name AS class,
    COUNT(exams.id_exam) AS total_exams
FROM
    instructors,
    classes
        LEFT JOIN
    exams ON classes.id_class = exams.id_class
WHERE
    classes.id_instructor = instructors.id_instructor
GROUP BY classes.id_class;

-- -----------------------------------------------------
-- Get instructor classes with total_exams and total_students
-- -----------------------------------------------------
SELECT 
    total_students.id_class,
    total_students.class,
    total_students.total_students,
    total_exams.total_exams
FROM
    total_students,
    total_exams
WHERE
    total_students.id_class = total_exams.id_class
        AND total_students.id_instructor = '1';
        
-- -----------------------------------------------------
-- Get students list in a class for an instructor
-- -----------------------------------------------------
SELECT 
    students.id_student,
    CONCAT(students.first_name,
            ' ',
            students.last_name) AS student,
    students.email
FROM
    students,
    students_classes    
WHERE
    students_classes.id_student = students.id_student
        AND students_classes.id_class = '2';

-- -----------------------------------------------------
-- Get student grades in an exam for an instructor
-- -----------------------------------------------------
SELECT 
    students_exams.id_student,
    CONCAT(students.first_name, ' ', students.last_name) AS student,
    exams.questions,
    students_exams.right_answers,
    (exams.questions - students_exams.right_answers) AS wrong_answers,
    ROUND(((students_exams.right_answers * 100) / exams.questions),
            2) AS score,
    students_exams.date_time
FROM
    exams,
    students,
    students_exams
WHERE
    students.id_student = students_exams.id_student
        AND exams.id_exam = students_exams.id_exam
        AND exams.id_exam = '2';
        
-- -----------------------------------------------------
-- Get exam details
-- -----------------------------------------------------
SELECT 
    classes.name AS class,
    exams.title,
    exams.description,
    exams.questions,
    exams.duration
FROM
    exams,
    classes
WHERE
    exams.id_class = classes.id_class
        AND exams.id_exam = '1';
        
-- -----------------------------------------------------
-- Get questions list for an exam
-- -----------------------------------------------------
SELECT 
    questions.id_question, questions.question
FROM
    exams,
    questions
WHERE
    exams.id_exam = questions.id_exam
        AND exams.id_exam = '1';

-- -----------------------------------------------------
-- Get options list for a question
-- -----------------------------------------------------
SELECT 
    options.id_option, options.option, options.is_true
FROM
    questions,
    options
WHERE
    questions.id_question = options.id_question
        AND questions.id_question = '1'
ORDER BY options.option ASC;