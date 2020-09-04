-- Write a script that creates the database tyrell_corp and
-- the table nexus6 (in the database tyrell_corp) on your MySQL server.
-- nexus6 description:
-- id INT unique, auto generated, can’t be null and is a primary key
-- name VARCHAR(256) can’t be null
-- If the database tyrell_corp already exists, your script should not fail
-- If the table nexus6 already exists, your script should not fail

CREATE DATABASE IF NOT EXISTS tyrell_corp;
CREATE TABLE IF NOT EXISTS tyrell_corp.nexus6 (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(256) NOT NULL);
GRANT SELECT ON tyrell_corp TO 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
FLUSH PRIVILEGES;
