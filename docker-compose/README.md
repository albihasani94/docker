#How to run

Run

```
docker-compose up -d
```

Copy the war from the previous project to the deployments volume, which is mapped to the wildfly/deployments

```
cp .\Desktop\docker\java-hello-world\web.war .\deployments\
```

Then open a web browser or REST API testing tool and go to:

```
http://localhost:8080/web/resources/ping
```