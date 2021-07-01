
# Custom runners

Build base image:
```
docker build --tag gh-runner:base .
```

Build specific image (Maven):
```
docker build --tag gh-runner:maven -f maven-runner.Dockerfile .
```

Launch 1 runner
```
  docker run -d \
    --env REPO=<USER>/<REPO> \
    --env TOKEN=<TOKEN> \
    --env LABELS=<LABEL1,LABEL2> \
    --name maven-runner \
    gh-runner:maven
```

Scale runners vertically with Docker Compose
```
docker-compose up --scale runner=2 -d
```