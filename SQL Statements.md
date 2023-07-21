## SQL Statements

### This command lists the existing databases
* `SHOW DATABASES`;

### This command lists all rows and columns in the country table
* `SELECT` * `FROM` world.country;

### COUNT() command is used to query the number of rows in a table
* `SELECT` `COUNT(*)` `FROM` world.country;

### This command is used to list all columns from the country table
* `SHOW COLUMNS FROM` world.country;

### This command is used to list some specific columns from the country table
* `SELECT` Name, Capital, Region, SurfaceArea, Population `FROM` world.country;
