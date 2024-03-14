SELECT column_nm.name, database_attribute_type.name
FROM column_nm
         JOIN database_attribute_type ON column_nm.database_attribute_type_id = database_attribute_type.id;

SELECT task.id, task.source_schema, column_nm.name
FROM task
         LEFT OUTER JOIN column_nm ON task.id = column_nm.task_id;

SELECT source_schema, COUNT(id) as task_count
FROM task
GROUP BY source_schema;

SELECT source_schema, COUNT(id) as task_count
FROM task
GROUP BY source_schema
HAVING COUNT(id) > 5;

SELECT *
FROM task
WHERE source_schema = 'desired_value';

SELECT *
FROM task
ORDER BY source_schema ASC;

SELECT task.source_schema, task.target_schema, COUNT(task.id) as task_count
FROM task
         LEFT JOIN column_nm ON task.id = column_nm.task_id
GROUP BY task.source_schema, task.target_schema;

SELECT source_schema, COUNT(id) as task_count
FROM task
GROUP BY source_schema
ORDER BY task_count DESC;

SELECT *
FROM db_task.public.transformation_function
WHERE transformation_function.python_type_id IN (SELECT id FROM python_type WHERE id > 2);

SELECT column_nm.name, database_attribute_type.name
FROM column_nm
         JOIN database_attribute_type ON column_nm.database_attribute_type_id = database_attribute_type.id
WHERE column_nm.name IS NOT NULL
ORDER BY column_nm.name;

UPDATE task SET source_schema = 'source 1';

SELECT * FROM task;