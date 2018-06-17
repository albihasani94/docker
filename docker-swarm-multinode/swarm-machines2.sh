#!/bin/bash

# Swarm mode using Docker Machine

# create manager machines
echo "======> Creating 3 manager machines ...";
docker-machine create -d virtualbox manager1;
docker-machine create --driver azure --azure-subscription-id <subscription-id> --azure-size Standard_A1_v2 manager2;
docker-machine create --driver azure --azure-subscription-id <subscription-id> --azure-size Standard_A1_v2 manager3;

# create worker machines
echo "======> Creating 3 worker machines ...";
docker-machine create -d virtualbox worker1;
docker-machine create --driver azure --azure-subscription-id <subscription-id> --azure-size Standard_A1_v2 worker2;
docker-machine create --driver azure --azure-subscription-id <subscription-id> --azure-size Standard_A1_v2 worker3;

# list all machines
docker-machine ls
