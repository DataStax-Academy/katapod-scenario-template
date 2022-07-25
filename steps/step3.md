<div class="top">

# Try It Out: Cassandra Query Language (CQL)
### [◂](command:katapod.loadPage?step2){.steps} Step 3 of 7 [▸](command:katapod.loadPage?step4){.steps}
</div>

# Create a table

Next, let's create a `users` table in your `demo` keyspace.

```
CREATE TABLE demo.users (lastname text PRIMARY KEY, firstname text, email text);
```

A table is a database object that stores your data and is defined by a schema. It consists of named columns and data is stored in rows. Tables have a `PRIMARY KEY` column, which is extremely important in regards to data modeling because the `PRIMARY KEY` uniquely identifies each row.

**The schema is ready, it is time to insert user data!**

[continue](command:katapod.loadPage?step4){.orange_bar}
