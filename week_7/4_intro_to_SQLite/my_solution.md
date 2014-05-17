# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

<!-- paste your terminal output here -->
SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"



## Release 1: Insert Data 
<!-- paste your terminal output here -->
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-17 17:05:08|2014-05-17 17:05:08

1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-17 17:05:08|2014-05-17 17:05:08
2|Amelia|Downs|ad@gmail.com|2014-05-17 17:06:53|2014-05-17 17:06:53

## Release 2: Multi-line commands
<!-- paste your terminal output here -->
Error: column email is not unique

NOTE: This is an error becasue the db code contained "email VARCHAR(128) UNIQUE NOT NULL" 

1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-17 17:05:08|2014-05-17 17:05:08
2|Amelia|Downs|ad@gmail.com|2014-05-17 17:06:53|2014-05-17 17:06:53

## Release 3: Add a column
<!-- paste your terminal output here -->
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, nicknames VARCHAR(64)) NOT NULL;

1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-17 17:05:08|2014-05-17 17:05:08|Kimchee
2|Amelia|Downs|ad@gmail.com|2014-05-17 17:06:53|2014-05-17 17:06:53|Mia


## Release 4: Change a value

1|Kimmy|Lin|kimmy@devbootcamp.com|2014-05-17 17:05:08|2014-05-17 17:20:47|Ninja Coder
2|Amelia|Downs|ad@gmail.com|2014-05-17 17:06:53|2014-05-17 17:06:53|Mia


<!-- paste your terminal output here -->

## Release 5: Reflect
<!-- Add your reflection here -->

I liked this challenge more than any other this week. It felt more like coding than the others. 

I def learned more about the practical parts of databases. For instance how to require something to be unique, or require an input for a column, or how to get the datetime for now. 

I felt like I got to practice more with this challenge which I liked a lot. 



