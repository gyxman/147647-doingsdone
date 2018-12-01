CREATE DATABASE doingsdone
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR NOT NULL UNIQUE,
    user_id INT
);

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_create TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_completed TIMESTAMP,
    is_completed TINYINT DEFAULT 0,
    name CHAR NOT NULL,
    file_link CHAR,
    date_target TIMESTAMP,
    user_id INT NOT NULL,
    cat_id INT NOT NULL
);
CREATE INDEX name ON tasks(name);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_add TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email CHAR(128) NOT NULL UNIQUE,
    name CHAR,
    password CHAR(64)
);
