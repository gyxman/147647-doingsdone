CREATE DATABASE doingsdone
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    author_id INT
);

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_create TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_completed TIMESTAMP,
    is_completed TINYINT DEFAULT 0,
    name VARCHAR(255) NOT NULL,
    file_path VARCHAR(255),
    date_target TIMESTAMP,
    project_id INT NOT NULL
);
CREATE INDEX name ON tasks(name);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_add TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email VARCHAR(128) NOT NULL UNIQUE,
    name VARCHAR(255),
    password CHAR(64)
);
