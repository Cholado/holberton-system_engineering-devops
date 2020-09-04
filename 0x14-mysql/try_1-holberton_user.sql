#!/usr/bin/env bash
# use the transfer file script in my 1628-web-01 & 1628-web-02 server home dir
# name of file to tranfer is currently 1-holberton_user.sql
# execute the command in MYSQL localhost root using the file input to test if it works
# after setting the MYSQL deletes the file

./0-transfer_file 1-holberton_user.sql 35.243.226.232 ubuntu ~/.ssh/holberton
ssh ubuntu@35.243.226.232 -i ~/.ssh/holberton 'cat 1-holberton_user.sql | mysql -hlocalhost -uroot -p'
ssh ubuntu@35.243.226.232 -i ~/.ssh/holberton 'rm 1-holberton_user.sql'

./0-transfer_file 1-holberton_user.sql 54.147.176.180 ubuntu ~/.ssh/holberton
ssh ubuntu@54.147.176.180 -i ~/.ssh/holberton 'cat 1-holberton_user.sql | mysql -hlocalhost -uroot -p'
ssh ubuntu@54.147.176.180 -i ~/.ssh/holberton 'rm 1-holberton_user.sql'
