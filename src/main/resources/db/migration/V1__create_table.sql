CREATE TABLE task
(
    id            serial primary key,
    source_schema varchar(255) NOT NULL,
    source_table  varchar(255) NOT NULL,
    target_schema varchar(255) NOT NULL,
    target_table  varchar(255) NOT NULL
);

CREATE TABLE column_nm
(
    name                       varchar(255) NOT NULL,
    database_attribute_type_id integer      NOT NULL,
    task_id                    integer      NOT NULL
);

CREATE TABLE transformation_function
(
    name           varchar(255)  NOT NULL,
    body           varchar(8191) NOT NULL,
    python_type_id integer       NOT NULL
);

CREATE TABLE database_type
(
    id   serial primary key,
    name varchar(255) NOT NULL
);


CREATE TABLE database_attribute_type
(
    id             serial primary key,
    name           varchar(255) NOT NULL,
    python_type_id integer      NOT NULL
);

CREATE TABLE python_type
(
    id   serial primary key,
    name varchar(255) NOT NULL
);

CREATE TABLE database_attribute_type_database_type
(
    database_attribute_type_id integer NOT NULL,
    database_type_id           integer NOT NULL
);

ALTER TABLE column_nm
    ADD CONSTRAINT FK_database_attribute_type_id FOREIGN KEY (database_attribute_type_id) REFERENCES database_attribute_type;

ALTER TABLE column_nm
    ADD CONSTRAINT FK_task_id FOREIGN KEY (task_id) REFERENCES task;

ALTER TABLE transformation_function
    ADD CONSTRAINT FK_python_type_id FOREIGN KEY (python_type_id) REFERENCES python_type;

ALTER TABLE database_attribute_type
    ADD CONSTRAINT FK_python_type_id FOREIGN KEY (python_type_id) REFERENCES python_type;

ALTER TABLE database_attribute_type_database_type
    ADD CONSTRAINT FK_database_attribute_type_id FOREIGN KEY (database_attribute_type_id) REFERENCES database_attribute_type;

ALTER TABLE database_attribute_type_database_type
    ADD CONSTRAINT FK_database_type_id FOREIGN KEY (database_type_id) REFERENCES database_type;




















