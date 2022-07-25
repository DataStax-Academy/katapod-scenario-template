<div class="top">

# Try It Out: Cassandra Query Language (CQL)
### [◂](command:katapod.loadPage?step3){.steps} Step 4 of 7 [▸](command:katapod.loadPage?step5){.steps}
</div>

# Let's load some data

Let's first select the keyspace we want to use: 

```
USE demo;
```

Now we have this keyspace preselected and don't have to mention it in each and every command.

Inserting columns and column values programmatically is more practical than using `cqlsh` in a production database. Using the SQL-like shell makes testing queries very convenient.

| lastname | firstname | email |
| :---: | :---:   | :---: |
| Round | Craig |craig@example.com |
| Pratico | Cassi | cassi@example.com |
| Polson | Lino | lino@example.com |  

To insert some simple rows of data into the table `demo.users`, use the `INSERT` command. Insert 3 records of user data into the table. 

*Reminder*: To execute the commands, you can:

1. Just click on them,
2. Type them manually, OR
3. Copy-paste, whatever you prefer.

```
INSERT INTO users (lastname, firstname, email) VALUES ('Round', 'Craig', 'craig@example.com');
```

```
INSERT INTO users (lastname, firstname, email) VALUES ('Pratico', 'Cassi', 'cassi@example.com');
```

```
INSERT INTO users (lastname, firstname, email) VALUES ('Polson', 'Lino', 'lino@example.com');
```

---
**ProTip:** *Additionally, if you have a CSV file, you can make use of the `COPY` command to insert data. Give it a try:*

```
COPY demo.users (lastname, firstname, email) FROM 'users.csv' WITH HEADER = TRUE;
```
---

**Nice job! You have filled your table with rows of data.**

[continue](command:katapod.loadPage?step5){.orange_bar}
