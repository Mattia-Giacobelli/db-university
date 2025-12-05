# USE db_university

#1
/*SELECT COUNT(*) as `1990_students` 
FROM `students`
WHERE `date_of_birth` LIKE "1990%"*/

#2
/*SELECT COUNT(*) as `10_cfu_courses`
FROM `courses`
WHERE `cfu` > 10*/

#3
/*SELECT COUNT(*) as `30_years_students`
FROM `students`
WHERE timestampdiff(YEAR, `date_of_birth`, CURDATE()) > 30*/

#4
/*SELECT COUNT(*) 
FROM `courses`
WHERE `period` LIKE "I %"
AND `year` = 1*/

#5
/*SELECT COUNT(*) 
FROM `exams`
WHERE `hour` > "14:00:00"
AND `date` = "2020/06/20"*/

#6
/*SELECT COUNT(*)
FROM `degrees`
WHERE `level` = "magistrale"*/

#7
/*SELECT COUNT(*)
FROM `departments`*/

#8
/*SELECT COUNT(*)
FROM `teachers`
WHERE `phone` IS NULL*/

#9
/*SELECT COUNT(*) as `subscription`, YEAR(`enrolment_date`) as `enrolmant_year`
FROM `students`
GROUP BY `enrolmant_year`*/

#10
/*SELECT COUNT(*) as `count`, `office_address` as `address`
FROM `teachers`
GROUP BY `office_address`*/

#11
/*SELECT AVG(`vote`) as `avg_vote`, `exam_id` as `exam`
FROM `exam_student`
GROUP BY `exam_id`*/

#12
/*SELECT COUNT(*) as `degrees_per_department`, `department_id`
FROM `degrees`
GROUP BY `department_id`*/
