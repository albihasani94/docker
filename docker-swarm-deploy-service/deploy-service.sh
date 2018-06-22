docker-machine ssh manager1
docker service create --name web --replicas 3 -p 8080:8080 jboss/wildfly
docker service ls
docker service inspect web
docker service ps web