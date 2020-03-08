# OpenRS2 Docker Image

## Building

```
docker build -t registry.openrs2.dev/openrs2-dev .
```

## Deploying

Pushes must be made via a different hostname to work around the registry's
[compatibility with nginx authentication][registry-auth-bug].

```
docker login registry-admin.openrs2.dev
docker tag registry{-admin,}.openrs2.dev/openrs2-dev
docker push registry-admin.openrs2.dev/openrs2-dev
```

## License

OpenRS2 is available under the terms of the [ISC license][isc], which is
similar to the 2-clause BSD license. The full copyright notice and terms are
available in the `LICENSE` file.

[registry-auth-bug]: https://github.com/docker/distribution/issues/1028
[isc]: https://opensource.org/licenses/ISC
