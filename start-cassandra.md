<div class="top">

# Try It Out: Cassandra Query Language (CQL)
### [◂](command:katapod.loadPage?intro){.steps} Step 1 of 7 [▸](command:katapod.loadPage?step2){.steps}
</div>

# Start Cassandra 

```
docker run -p 9042:9042 -d cassandra:4
```

```
echo -n 'Waiting for Cassandra to start...'; timeout 60 bash -c 'until cqlsh -e "describe cluster" >/dev/null 2>&1; do sleep 2; echo -n "."; done'; echo ' Ready!'
```

```
docker ps
```

# Connect

First things first, we have to connect to the database. For that we will use a console client called `cqlsh` (Cassandra Query Language Shell). For the locally installed Cassandra with default settings we can connect as simple as that:

```
cqlsh
```

# Create a keyspace

Let's first start learning CQL by creating a keyspace, using the `CREATE KEYSPACE` command.

```
CREATE KEYSPACE demo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
```

A keyspace is a way to logically group a collection of database objects together, such as:

* tables
* user-defined types
* user-defined functions
* and more!

---
*ProTip:* You can use the `Tab` key in `cqlsh` to auto-complete or suggest the next part of your command, as you type.
---

This is similar concept to the database or namespace used in relational databases.

In addition, the keyspace also controls the replication behavior for all of the data stored in the keyspace.

*Great, you now know how to create a keyspace in Apache Cassandra!*

[continue](command:katapod.loadPage?step2){.orange_bar}
