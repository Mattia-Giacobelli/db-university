## Departments (entity: department)
 - id PK AUTOINCREMENT BIGINT 
 - name  VARCHAR(30) NOTNULL
 - degree_id FK 
 - description TEXT

## Degrees (entity: degree)
 - id PK AUTOINCREMENT BIGINT
 - name VARCHAR(30) NOTNULL
 - course_id FK 
 - description TEXT NULL

## Courses (entity: course)
 - id PK AUTOINCREMENT BIGINT
 - name VARCHAR(30) NOTNULL
 - description TEXT NULL
 - teacher_id FK
 - exam_id FK

## Teachers (entity: teacher)
 - id PK AUTOINCREMENT BIGINT
 - name VARCHAR(30) NOTNULL
 - last_name VARCHAR(30) NOTNULL

## Exams (entity: exams)
 - id PK AUTOINCREMENT BIGINT
 - name VARCHAR(30) NOTNULL
 - room VARCHAR(30) NOTNULL
 - date DATETIME NOTNULL
 - result_id FK

## Students (entity: student)
 - id PK AUTOINCREMENT BIGINT
 - name VARCHAR(30) NOTNULL
 - last_name VARCHAR(30) NOTNULL
 - registration_number VARCHAR(10) UNIQUE NOTNULL
 - degree_id FK

## Pivot table : Exams_Students
 - exam_id
 - student_id 
 - vote