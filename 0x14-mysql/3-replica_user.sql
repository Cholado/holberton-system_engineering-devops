-- Write a script that creates the MySQL server user holberton_user
-- holberton_user should permission to check the primary/replica status of your databases.
-- The holberton_user password should be set to projectcorrection280hbtn
-- If the user holberton_user already exists, your script should not fail

CREATE USER IF NOT EXISTS 'replica_user'@'%' IDENTIFIED BY 'replica';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;
