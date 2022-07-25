<div class="top">

# Try It Out: Cassandra Query Language (CQL)
### [◂](command:katapod.loadPage?intro){.steps} Step 1 of 7 [▸](command:katapod.loadPage?step2){.steps}
</div>

# To use Astra you need to create an Account and a token

```
astra setup
```

# You can now list your db

```
astra db list
```

# Let us create a database `demo` 

```
astra db create demo -k demo --if-not-exist -v
```

# Wait for the DB be becomes actives

```
astra db get demo | grep status
```

# Start Cqlsh

```
clear
astra db cqlsh demo
```


# Now let us open the keyspace

This is similar concept to the database or namespace used in relational databases.

In addition, the keyspace also controls the replication behavior for all of the data stored in the keyspace.

*Great, you now know how to create a keyspace in Apache Cassandra!*

[continue](command:katapod.loadPage?step2){.orange_bar}
