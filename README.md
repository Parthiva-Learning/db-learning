# db-learning
To run all the containers run

```
docker-compose up
```
This spins up a database, pgadmin and flyway
Flyway runs the migrations on the database. All files in the folder [sql](sql) will be run at the start of setting up the db.

pgadmin is accessible at http://localhost:8080 using the password set up in the [.env](.env) file

Solutions are in [queries](queries) folder which can be run on pgadmin query tool