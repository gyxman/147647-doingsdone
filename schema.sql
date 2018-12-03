CREATE DATABASE doingsdone
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE projects (
    id int(11) NOT NULL AUTO_INCREMENT,
    name char(1) NOT NULL,
    user_id int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY name (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE tasks (
   id int(11) NOT NULL AUTO_INCREMENT,
   date_create timestamp NULL DEFAULT CURRENT_TIMESTAMP,
   date_completed timestamp NULL DEFAULT NULL,
   is_completed tinyint(4) DEFAULT '0',
   name char(1) NOT NULL,
   file_link char(1) DEFAULT NULL,
   date_target timestamp NULL DEFAULT NULL,
   user_id int(11) NOT NULL,
   cat_id int(11) NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE users (
   id int(11) NOT NULL AUTO_INCREMENT,
   date_add timestamp NULL DEFAULT CURRENT_TIMESTAMP,
   email char(128) NOT NULL,
   name char(1) DEFAULT NULL,
   password char(64) DEFAULT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY email (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
