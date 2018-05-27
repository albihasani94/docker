# Docker Swarm (Multinode)

1. Test drive docker-machine

    ```docker-machine create -d hyperv mymachine```

    I had to downgrade docker-machine to v0.13 due to a bug with hyperv on v0.14

2. Show all the machines, only the newly one being created

    ```docker-machine ls```

3. Remove the newly created machine

   ```docker-machine rm mymachine```

4. Run the script swarm-machines

    ```./swarm-machines.sh

5. Show list of docker machines as in **Step 4**

