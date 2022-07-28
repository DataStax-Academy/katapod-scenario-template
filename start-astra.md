<div class="top">
  <img src="https://datastax-academy.github.io/katapod-shared-assets/images/ds-academy-logo.svg" />
  <span style="position:absolute;top:20px;left:350px;font-size:30px"><b>Cassandra Fundamentals</b></span>
  <span style="position:absolute;top:90px;left:350px;font-size:20px"><u>Module:</u> <b>Introduction to CQL</b></span>
  <span style="position:absolute;top:60px;left:350px;font-size:20px"><u>Level:</u> <b>Beginner</b></span>
  <a href="command:katapod.loadPage?%5B%7B%22step%22%3A%22intro%22%7D%5D" class="btn btn-primary btn-astra" class="btn btn-primary" style="background-color:#111111;border:0px;position:absolute;top:130px;left:20px">
      ⬅️ Previous
  </a>
  <a href="command:katapod.loadPage?%5B%7B%22step%22%3A%22step2%22%7D%5D" class="btn btn-primary btn-astra" class="btn btn-primary" style="background-color:#111111;border:0px;position:absolute;top:130px;right:20px">
       Next ➡️
  </a>
</div>

<main style="margin-top:20px">
ok
</main>

# To use Astra you need to create an Account and a token

```
source ~/.astra/cli/astra-init.sh && astra setup
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
