# How to run

First, build the image:

```bash
  docker image build -t python-hello-world .
```

> This will build the image with the 'latest' tag

Then, run the image:

```bash
  docker run -p 5001:5000 -d python-hello-world
```

## Build an 'ugly' image version

`docker image build -t albihasani94/python-hello-world:ugly .`

## Build a 'beautiful' image version

`docker image build -t albihasani94/python-hello-world:beautiful .`

## Tag the 'beautiful' as 'latest'

`docker image tag albihasani94/python-hello-world:beautiful albihasani94/python-hello-world:latest`

## Push the different image versions

```bash
docker image push albihasani94/python-hello-world:ugly
docker image push albihasani94/python-hello-world:beautiful
docker image push albihasani94/python-hello-world:latest
```