# SQL Bolt
This repository contains SQL query examples. The database is developed in **MySQL**. The structure and tasks were taken from the [SQLBolt site](https://sqlbolt.com/).
## Requirements
* [MySQL Community Server 8.0.31](https://dev.mysql.com/downloads/windows/installer/8.0.html)
## How run SQL queries
You can see examples of queries and the results of their execution in this [link](https://docs.google.com/spreadsheets/d/1ytB1RlMtPQxJlEEOPSt7kxGRKOCQzu44OEfR2OqpneU/edit?usp=sharing) or in the file [SQLBolt - SQL queries.pdf](https://github.com/SpaceLacuna/sql_bolt/blob/main/SQLBolt%20-%20SQL%20queries.pdf).

Or, if you have a MySQL Server installed, you can download a MySQL database dump and run queries yourself.
## MySQL database dump
**Step 1**. Run `MySQL Command Line Client`.

**Step 2**. Create an empty database.
```
CREATE DATABASE database_name;
```
**Step 3**. Run `cmd.exe`.

**Step 4**. Navigate to the folder where you installed MySQL Server. Below is the default path.
```
cd C:\Program Files\MySQL\MySQL Server 8.0\bin
```
**Step 5**. Restore database from dump.
```
mysql -u -p database_name < sql_bolt_dump.sql
```
Now you can run SQL queries.
