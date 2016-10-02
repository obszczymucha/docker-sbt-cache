# Cache container for SBT
This will create a container for SBT cache. Very handy in Australia, due to [this](https://groups.google.com/forum/#!topic/sbt-dev/e7q1E_jXjK8).

## How to run
Clone this repo and run:
```
docker build . -t sbt-cache-image
docker run --name sbt-cache sbt-cache-image
```

Then use `activator` script as you'd normally use activator, e.g.
```activator test```

The first time it'll pull SBT dependencies and cache them inside the container. Subsequent executions will be fast!