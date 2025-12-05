#1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
/*SELECT `students`.`id`, `degrees`.`id` AS `degreeId`, `degrees`.`name` AS `degree_name`, `students`.`name`,
`students`.`surname`, `students`.`date_of_birth`, `students`.`enrolment_date`
FROM `students`
JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia"*/

#2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
/*SELECT `degrees`.`id`, `departments`.`id` AS `department_id`,`departments`.`name` AS `department`,
`degrees`.`name`, `degrees`.`level`
FROM `degrees`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name`= "Dipartimento di Neuroscienze"
AND `degrees`.`level` = "magistrale"*/

#3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
/*SELECT *
FROM `courses`
JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers`
ON `teacher_id` = `teachers`.`id`
WHERE `teacher_id` = 44*/

#4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti
# e il relativo dipartimento, in ordine alfabetico per cognome e nome
/*SELECT `students`.`id`, `students`.`surname`, `students`.`name`, `students`.`date_of_birth`, 
`students`.`registration_number`, `degrees`.`name` AS `degree`,
`departments`.`name` AS `department`
FROM `students`
JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname`, `students`.`name`*/

#5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
/*SELECT `courses`.`id`, `courses`.`name` AS `courseName`, `degrees`.`name` AS `degreesName`, 
`departments`.`name` AS `departmentName`
FROM `course_teacher`
JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
JOIN `degrees`
ON `degrees`.`id` = `courses`.`degree_id`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`*/

#6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
/*SELECT DISTINCT `teachers`.`id`, `teachers`.`surname`, `teachers`.`name`, `departments`.`name`
FROM `course_teacher`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `degrees`
ON `degrees`.`id` = `courses`.`degree_id`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = "Dipartimento di Matematica"*/

#7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, 
# stampando anche il voto massimo.
/*SELECT COUNT(`exam_student`.`vote`), MAX(`exam_student`.`vote`)
FROM `exam_student`
JOIN `exams`
ON `exams`.`id` = `exam_student`.`exam_id`
JOIN `students`
ON `students`.`id` = `exam_student`.`student_id`
GROUP BY `exam_student`.`student_id`*/

# Successivamente,filtrare i tentativi con voto minimo 18.
/*SELECT COUNT(`exam_student`.`vote`) AS `tryes`, `students`.`id`, `students`.`surname`, `students`.`name`, MAX(`exam_student`.`vote`)
FROM `exam_student`
JOIN `exams`
ON `exams`.`id` = `exam_student`.`exam_id`
JOIN `students`
ON `students`.`id` = `exam_student`.`student_id`
WHERE `exam_student`.`vote` > 18
GROUP BY `students`.`id`, `exams`.`id`*/

