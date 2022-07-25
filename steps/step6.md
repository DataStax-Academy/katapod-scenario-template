<div class="top">

# Try It Out: Cassandra Query Language (CQL)
### [◂](command:katapod.loadPage?step5){.steps} Step 6 of 7 [▸](command:katapod.loadPage?step7){.steps}
</div>

# UPDATE command

The `UPDATE` command is used to modify one or more column values to a row in a table.

First, use a `SELECT` statement to see the user with the lastname `Polson`

```
SELECT * FROM users WHERE lastname = 'Polson';
```

Say this user has  recently changed their `email` address. Their information will need to be updated in the table.

```
UPDATE users SET email = 'lpolson@example.com'  WHERE lastname = 'Polson';
```

`UPDATE` writes one or more column values to a row in a table.

Use the `SELECT` command again to see the change, specifying for the particular user we just updated by using the `PRIMARY KEY`.

```
SELECT * FROM users WHERE lastname = 'Polson';
```

**You have just updated a row of user data. Nice work!**

[continue](command:katapod.loadPage?step7){.orange_bar}
