-- Insert into task table
INSERT INTO task (source_schema, source_table, target_schema, target_table)
VALUES ('schema1', 'table1', 'schema2', 'table2'),
       ('schema3', 'table3', 'schema4', 'table4'),
       ('schema5', 'table5', 'schema6', 'table6'),
       ('schema7', 'table7', 'schema8', 'table8'),
       ('schema9', 'table9', 'schema10', 'table10');

-- Insert into python_type table
INSERT INTO python_type (name)
VALUES ('python_type1'),
       ('python_type2'),
       ('python_type3'),
       ('python_type4'),
       ('python_type5');

-- Insert into database_attribute_type table
INSERT INTO database_attribute_type (name, python_type_id)
VALUES ('attribute_type1', 1),
       ('attribute_type2', 2),
       ('attribute_type3', 3),
       ('attribute_type4', 4),
       ('attribute_type5', 5);


-- Insert into column_nm table
INSERT INTO column_nm (name, database_attribute_type_id, task_id)
VALUES ('column1', 1, 1),
       ('column2', 2, 2),
       ('column3', 3, 3),
       ('column4', 4, 4),
       ('column5', 5, 5);

-- Insert into transformation_function table
INSERT INTO transformation_function (name, body, python_type_id)
VALUES ('func1', 'function body 1', 1),
       ('func2', 'function body 2', 2),
       ('func3', 'function body 3', 3),
       ('func4', 'function body 4', 4),
       ('func5', 'function body 5', 5);

-- Insert into database_type table
INSERT INTO database_type (name)
VALUES ('type1'),
       ('type2'),
       ('type3'),
       ('type4'),
       ('type5');




-- Insert into database_attribute_type_database_type table
INSERT INTO database_attribute_type_database_type (database_attribute_type_id, database_type_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5);