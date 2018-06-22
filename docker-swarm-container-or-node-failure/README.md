# Container or node failure

## Swarm Mode: Container Failure

If a container fails, the swarm will schedule the container in a different node to match the desired number of replicas

## Swarm Mode: Node Failure

If a node fails, the swarm will recognize and will schedule a new container on a different node.

## Demo: Container failure

Log into manager3

`docker-machine ssh manager3`

Then list the running containers

`docker container ls`

Save the id of the running container and remove it

`docker container rm -f f4afd2ce1786`

## Verify that another node runs a container

`docker-machine ssh manager1 "docker service ps web"`

## Demo: Node failure

`docker-machine stop worker1`

## Verify that another node takes its place

`docker-machine ssh manager1 "docker service ps web"`