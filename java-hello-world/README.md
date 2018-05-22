# How to run

First, build the image:

```
  docker image build -t java-hello-world .
```

Then, run the image:

```
  docker run -p 8080:8080 -d java-hello-world
```

Alternatively, deploy the WAR file to the wildfly container via command:

```
docker container run -d --name web -p 8080:8080 -v C:\Users\ahasani\Desktop\docker\java-hello-world\web.war:/opt/jboss/wildfly/standalone/deployments/web.war jboss/wildfly
```

Then open a web browser or REST API testing tool and go to:

```
http://localhost:8080/web/resources/ping
```