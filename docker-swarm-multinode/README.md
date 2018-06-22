# Docker Swarm (Multinode)

## Swarm mode: Initialize

`docker swarm init --listen-addr <ip>`

## Swarm mode: Add Worker

`docker swarm join --token <worker_token> <manager>`

## Swarm Mode: Primary/Secondary Master

`docker swarm join --manager --token <manager_token> --listen-addr <master2> <master1>`

## Initialize Swarm mode on manager1

```bash
docker-machine ssh manager1 \
"docker swarm init \
--listen-addr $(docker-machine ip manager1) \
--advertise-addr $(docker-machine ip manager1)"
```

## Show list of nodes in the cluster

`docker-machine ssh manager1 "docker node ls"`

## Get manager token

`docker-machine ssh manager1 "docker swarm join-token manager -q"`

## Get worker token

`docker-machine ssh manager1 "docker swarm join-token worker -q"`

## Join manager2 to the cluster

```bash
docker-machine ssh manager2 \
  "docker swarm join \
  --token `docker-machine ssh manager1 "docker swarm join-token manager -q"` \
  --listen-addr $(docker-machine ip manager2) \
  --advertise-addr $(docker-machine ip manager2) \
  $(docker-machine ip manager1)"
```

### Response

> This node joined a swarm as a manager.

### Do the same with manager3

## Verify the swarm nodes

`docker-machine ssh manager1 "docker node ls"`

## Join a worker node

```bash
docker-machine ssh worker1 \
"docker swarm join \
--token `docker-machine ssh manager1 "docker swarm join-token worker -q"` \
--listen-addr $(docker-machine ip worker1) \
--advertise-addr $(docker-machine ip worker1) \
$(docker-machine ip manager1)"
```

### Response

> This node joined a swarm as a worker

### Join worker2 and worker3 to the swarm

### Get info about the swarm

`docker-machine ssh manager1 "docker info"`