# drools-wb-rest
drools workbench with REST API.

## Preparation

```sh
git submodule update --init --recursive
```

## Build

```sh
mvn clean install -DskipTests
```

## Start server

```sh
sh ./start-server.sh
```

After that, open `localhost:8080` on your web browser. You can see
login page for drools workbench.
