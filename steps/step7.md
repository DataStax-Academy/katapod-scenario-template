<div class="top">

# Try It Out: Cassandra Query Language (CQL)
### [◂](command:katapod.loadPage?step6){.steps} Step 7 of 7 [▸](command:katapod.loadPage?finish){.steps}
</div>

# DELETE command

A `DELETE` command removes data from one or more selected columns or removes the entire row when no column is specified.

Remove our row of user data from the `users` table.

```
DELETE FROM users WHERE lastname='Polson';
```

**You've had your first taste of querying a Cassandra database with CQL! Isn't it easy?**

[continue](command:katapod.loadPage?finish){.orange_bar}
