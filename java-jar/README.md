# How to run

First, compile the java source:

```
  javac Application.java
```

Then, package the class in a jar:

```
  jar cfe ../target/myapp.jar Application Application.class
```

Build the image:

```
docker image build -t java-jar .
```

Then, run the docker image:

```
docker run -it --name java-jar java-jar
```