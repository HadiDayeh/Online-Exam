-- -----------------------------------------------------
-- Data for table `online_exam`.`statuses`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_exam`;
INSERT INTO `online_exam`.`statuses` (`id_status`, `status`) VALUES (1, 'inactive');
INSERT INTO `online_exam`.`statuses` (`id_status`, `status`) VALUES (2, 'active');

COMMIT;


-- -----------------------------------------------------
-- Data for table `online_exam`.`instructors`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_exam`;
INSERT INTO `online_exam`.`instructors` (`id_instructor`, `first_name`, `last_name`, `email`, `password`) VALUES (1, 'admin1', 'admin1', 'admin1@admin.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`instructors` (`id_instructor`, `first_name`, `last_name`, `email`, `password`) VALUES (2, 'admin2', 'admin2', 'admin2@admin.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`instructors` (`id_instructor`, `first_name`, `last_name`, `email`, `password`) VALUES (3, 'admin3', 'admin3', 'admin3@admin.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');

COMMIT;


-- -----------------------------------------------------
-- Data for table `online_exam`.`students`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_exam`;
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (1, 'user1', 'user1', 'user1@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (2, 'user2', 'user2', 'user2@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (3, 'user3', 'user3', 'user3@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (4, 'user4', 'user4', 'user4@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (5, 'user5', 'user5', 'user5@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (6, 'user6', 'user6', 'user6@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (7, 'user7', 'user7', 'user7@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (8, 'user8', 'user8', 'user8@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (9, 'user9', 'user9', 'user9@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (10, 'user10', 'user10', 'user10@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');
INSERT INTO `online_exam`.`students` (`id_student`, `first_name`, `last_name`, `email`, `password`) VALUES (11, 'user11', 'user11', 'user11@user.com', '$2y$10$YnQh8VHkeo7OELUqzO3a5ujNuGew16RmXPpWOdg7VV4nB1SEJtfd2');

COMMIT;


-- -----------------------------------------------------
-- Data for table `online_exam`.`classes`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_exam`;
INSERT INTO `online_exam`.`classes` (`id_class`, `id_instructor`, `name`) VALUES (1, 1, 'class1');
INSERT INTO `online_exam`.`classes` (`id_class`, `id_instructor`, `name`) VALUES (2, 1, 'class2');
INSERT INTO `online_exam`.`classes` (`id_class`, `id_instructor`, `name`) VALUES (3, 2, 'class3');
INSERT INTO `online_exam`.`classes` (`id_class`, `id_instructor`, `name`) VALUES (4, 2, 'class4');
INSERT INTO `online_exam`.`classes` (`id_class`, `id_instructor`, `name`) VALUES (5, 3, 'class5');
INSERT INTO `online_exam`.`classes` (`id_class`, `id_instructor`, `name`) VALUES (6, 3, 'class6');

COMMIT;


-- -----------------------------------------------------
-- Data for table `online_exam`.`students_classes`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_exam`;
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (1, 1);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (1, 2);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (1, 3);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (2, 2);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (2, 3);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (2, 4);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (3, 3);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (3, 4);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (3, 5);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (4, 4);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (4, 5);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (4, 6);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (4, 7);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (5, 5);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (5, 6);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (5, 7);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (5, 8);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (5, 9);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (6, 6);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (6, 7);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (6, 8);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (6, 9);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (6, 10);
INSERT INTO `online_exam`.`students_classes` (`id_class`, `id_student`) VALUES (6, 11);

COMMIT;


-- -----------------------------------------------------
-- Data for table `online_exam`.`exams`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_exam`;
INSERT INTO `online_exam`.`exams` (`id_exam`, `id_class`, `id_status`, `title`, `description`, `questions`, `duration`) VALUES (1, 1, 2, 'exam1', 'some description', 5, 60);
INSERT INTO `online_exam`.`exams` (`id_exam`, `id_class`, `id_status`, `title`, `description`, `questions`, `duration`) VALUES (2, 1, 2, 'exam2', NULL, 5, 30);
INSERT INTO `online_exam`.`exams` (`id_exam`, `id_class`, `id_status`, `title`, `description`, `questions`, `duration`) VALUES (3, 2, 2, 'exam3', 'some description', 3, 45);
INSERT INTO `online_exam`.`exams` (`id_exam`, `id_class`, `id_status`, `title`, `description`, `questions`, `duration`) VALUES (4, 2, 1, 'exam4', NULL, 3, 60);
INSERT INTO `online_exam`.`exams` (`id_exam`, `id_class`, `id_status`, `title`, `description`, `questions`, `duration`) VALUES (5, 3, 2, 'exam5', 'some description', 3, 75);
INSERT INTO `online_exam`.`exams` (`id_exam`, `id_class`, `id_status`, `title`, `description`, `questions`, `duration`) VALUES (6, 3, 1, 'exam6', 'some description', 3, 45);
INSERT INTO `online_exam`.`exams` (`id_exam`, `id_class`, `id_status`, `title`, `description`, `questions`, `duration`) VALUES (7, 4, 2, 'exam7', NULL, 2, 15);
INSERT INTO `online_exam`.`exams` (`id_exam`, `id_class`, `id_status`, `title`, `description`, `questions`, `duration`) VALUES (8, 5, 1, 'exam8', 'some description', 2, 15);
INSERT INTO `online_exam`.`exams` (`id_exam`, `id_class`, `id_status`, `title`, `description`, `questions`, `duration`) VALUES (9, 6, 2, 'exam9', 'some description', 2, 15);

COMMIT;


-- -----------------------------------------------------
-- Data for table `online_exam`.`questions`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_exam`;
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (1, 1, 'question1.1');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (2, 1, 'question1.2');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (3, 1, 'question1.3');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (4, 1, 'question1.4');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (5, 1, 'question1.5');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (6, 2, 'question2.1');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (7, 2, 'question2.2');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (8, 2, 'question2.3');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (9, 2, 'question2.4');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (10, 2, 'question2.5');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (11, 3, 'question3.1');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (12, 3, 'question3.2');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (13, 3, 'question3.3');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (14, 4, 'question4.1');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (15, 4, 'question4.2');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (16, 4, 'question4.3');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (17, 5, 'question5.1');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (18, 5, 'question5.2');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (19, 5, 'question5.3');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (20, 6, 'question6.1');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (21, 6, 'question6.2');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (22, 6, 'question6.3');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (23, 7, 'question7.1');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (24, 7, 'question7.2');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (25, 8, 'question8.1');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (26, 8, 'question8.2');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (27, 9, 'question9.1');
INSERT INTO `online_exam`.`questions` (`id_question`, `id_exam`, `question`) VALUES (28, 9, 'question9.2');

COMMIT;


-- -----------------------------------------------------
-- Data for table `online_exam`.`options`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_exam`;
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (1, 1, 'option1.1.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (2, 1, 'option1.1.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (3, 2, 'option1.2.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (4, 2, 'option1.2.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (5, 3, 'option1.3.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (6, 3, 'option1.3.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (7, 4, 'option1.4.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (8, 4, 'option1.4.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (9, 5, 'option1.5.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (10, 5, 'option1.5.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (11, 6, 'option2.1.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (12, 6, 'option2.1.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (13, 7, 'option2.2.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (14, 7, 'option2.2.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (15, 8, 'option2.3.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (16, 8, 'option2.3.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (17, 9, 'option2.4.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (18, 9, 'option2.4.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (19, 10, 'option2.5.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (20, 10, 'option2.5.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (21, 11, 'option3.1.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (22, 11, 'option3.1.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (23, 12, 'option3.2.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (24, 12, 'option3.2.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (25, 13, 'option3.3.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (26, 13, 'option3.3.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (27, 14, 'option4.1.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (28, 14, 'option4.1.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (29, 15, 'option4.2.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (30, 15, 'option4.2.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (31, 16, 'option4.3.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (32, 16, 'option4.3.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (33, 17, 'option5.1.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (34, 17, 'option5.1.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (35, 18, 'option5.2.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (36, 18, 'option5.2.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (37, 19, 'option5.3.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (38, 19, 'option5.3.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (39, 20, 'option6.1.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (40, 20, 'option6.1.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (41, 21, 'option6.2.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (42, 21, 'option6.2.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (43, 22, 'option6.3.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (44, 22, 'option6.3.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (45, 23, 'option7.1.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (46, 23, 'option7.1.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (47, 24, 'option7.2.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (48, 24, 'option7.2.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (49, 25, 'option8.1.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (50, 25, 'option8.1.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (51, 26, 'option8.2.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (52, 26, 'option8.2.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (53, 27, 'option9.1.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (54, 27, 'option9.1.2', 0);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (55, 28, 'option9.2.1', 1);
INSERT INTO `online_exam`.`options` (`id_option`, `id_question`, `option`, `is_true`) VALUES (56, 28, 'option9.2.2', 0);

COMMIT;


-- -----------------------------------------------------
-- Data for table `online_exam`.`students_exams`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_exam`;
INSERT INTO `online_exam`.`students_exams` (`id_student`, `id_exam`, `right_answers`, `date_time`) VALUES (1, 1, 2, DEFAULT);
INSERT INTO `online_exam`.`students_exams` (`id_student`, `id_exam`, `right_answers`, `date_time`) VALUES (3, 1, 3, DEFAULT);
INSERT INTO `online_exam`.`students_exams` (`id_student`, `id_exam`, `right_answers`, `date_time`) VALUES (2, 2, 2, DEFAULT);

COMMIT;


-- -----------------------------------------------------
-- Data for table `online_exam`.`answers`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_exam`;
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (1, 1, 1);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (1, 2, 4);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (1, 3, 5);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (1, 4, 8);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (1, 5, NULL);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (3, 1, 2);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (3, 2, 3);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (3, 3, 6);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (3, 4, 7);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (3, 5, 9);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (2, 6, 11);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (2, 7, NULL);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (2, 8, 16);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (2, 9, 17);
INSERT INTO `online_exam`.`answers` (`id_student`, `id_question`, `id_option`) VALUES (2, 10, NULL);

COMMIT;
