# Jupyter Lab for Deep Learning 

_All required Python Libraries for roof material classification using aerial imagery._

## How to build

```sh
docker build -t lab .
```

## Run

```sh
PORT=8999
docker run --rm -v $HOME/notebooks:/data:rw -p $PORT:8080 -e EXTERNAL_PORT=$PORT lab
```