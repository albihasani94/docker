# How to run

First, build the image:

```
  docker image build -t python-hello-world .
```

Then, run the image:

```
  docker run -p 5001:5000 -d python-hello-world
```