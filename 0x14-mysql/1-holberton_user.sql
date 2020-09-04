-- Write a script that creates the MySQL server user holberton_user
-- holberton_user should permission to check the primary/replica status of your databases.
-- The holberton_user password should be set to projectcorrection280hbtn
-- If the user holberton_user already exists, your script should not fail

CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost'
