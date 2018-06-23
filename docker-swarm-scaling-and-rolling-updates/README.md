# Scaling and rolling update of service

## Swarm Mode: Scale

`docker service scale web=6`

## Swarm Mode: Rolling Updates

`docker service update web --image wildfly:2 --update-parallelism 2 --update-delay 10s`

## Show the current status

`docker-machine ssh manager2 "docker service ls"`

## Show more service details

`docker-machine ssh manager2 "docker service ps web"`
`docker-machine ssh manager2 "docker service ps -f \"desired-state=running\"  web"`

## Scale the service up

`docker service scale web=6`

## Remove the service

`docker service rm web`

## Rolling Updates

`docker service create --name webapp --replicas 6 -p 5000:5000 albihasani94/python-hello-world:ugly`

## Check the status

`docker service ps webapp`

## Reach one of the nodes

> Go to <http://192.168.99.100:5000/>

## Perform a rolling update

```bash
docker service update webapp --image albihasani94/python-hello-world:beautiful --update-parallelism 2 --update-delay 15s
```

## Investigate the rolling update

`docker service ps webapp`