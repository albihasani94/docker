#How to run

Build the db image

```
docker image build -t couchbase:prod .
```

Build the web war

```
mvn clean package
```

Build the web image

```
docker image build -t couchbaseweb:prod .
```

Run the docker-compose with the overriden(extended) files

```
docker-compose -f docker-compose.yml -f docker-compose.db.yml up -d
```

Verify the running application

```
docker-compose -f docker-compose.yml -f docker-compose.db.yml ps
```

Bring down the application

```
docker-compose -f docker-compose.yml -f docker-compose.db.yml down
```