# Deploy Services to Swarm Mode

## Swarm Mode: Replicated Service

`docker service create --replicas 3 --name web jboss/wildfly`

## Swarm Mode: Routing Mesh

- Load balancers are host-aware, not container-aware
- Swarm mode introduces the container-aware routing mesh
- It reroutes traffic from any host to a container
  - reserves a swarm-wide ingress port
  - uses DNS-based service discovery

## Demo

Login into manager1

`docker-machine ssh manager1`

Then execute

```bash
docker service create --replicas 3 --name web -p 8080:8080 jboss/wildfly
```

## Verify the service

`docker service ls`

## Get more details about the service

`docker service inspect web`

## Get info about the replicas

`docker service ps web`