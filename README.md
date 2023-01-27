# mrs-compiler

[Docker Hub](https://hub.docker.com/repository/docker/rdw4harbinger/mrs-compiler)

This image requires the a bind mount, which will contain the source code to compile, as well as the destination for the output binary to go.

The bind mount should be at `/app` in the container, and should be a folder that contains a `code` subfolder, which is the source code to compile.

The compiled binary will be placed in `/app/dashboard`.

### Example:

This bind mounts the current folder into the container as `/app`, and will place the `dashboard` binary in the current working directory.

```
docker run --rm --mount type=bind,source="$(pwd)",target=/app rdw4harbinger/mrs-compiler
```
