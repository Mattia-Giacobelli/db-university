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
- exam_id FK

## Teachers (entity: teacher)
- id PK AUTOINCREMENT BIGINT
- name VARCHAR(30) NOTNULL
- last_name VARCHAR(30) NOTNULL

## Pivot table : Course_Teacher
- course_id
- teacher_id 

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

## Results (entity: result)
- id PK AUTOINCREMENT BIGINT
- student_id FK
- result TINYINT NOTNULL
