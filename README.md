# WireMock Docker Example

This repository demonstrates how to use WireMock with Docker to mock HTTP responses.

## Running WireMock in Docker

To start the WireMock server with the provided stubs, run the following command:

```shell
docker run -it --rm \
  -p 8080:8080 \
  -v $PWD/wiremock-docker/samples/hello/stubs:/home/wiremock \
  wiremock/wiremock:latest
```

This command will start a WireMock server accessible on port 8080 of your host machine. The stub mappings are loaded from the
`wiremock-docker/samples/hello/stubs` directory.

## Testing the Mock

Once the server is running, you can test the mock by sending a GET request to http://localhost:8080/hello.

```shell
curl http://localhost:8080/hello
```

You should receive the following response:

**Hello, WireMock!**


