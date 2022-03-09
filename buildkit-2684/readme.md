https://github.com/moby/buildkit/pull/2684

```console
# meta1.json
docker buildx bake --metadata-file metadata.json --set *.args.foo=bar --set *.args.bar=foo app
cat metadata.json | jq

# meta2.json
docker buildx bake --metadata-file metadata.json --set *.platform=linux/amd64,linux/arm64 --set app.tags=user/app:latest --set app.output=type=cacheonly app
cat metadata.json | jq

# meta3.json
docker buildx bake --metadata-file metadata.json --set app.platform=linux/amd64,linux/arm64 --set app.tags=user/app:latest --set app.output=type=cacheonly app
cat metadata.json | jq

# meta4.json
docker buildx bake --metadata-file metadata.json --set base.platform=linux/amd64,linux/arm64 --set app.tags=user/app:latest --set app.output=type=cacheonly app
cat metadata.json | jq

# meta5.json
docker buildx build --metadata-file metadata.json --build-context baseapp=docker-image://alpine --platform linux/amd64,linux/arm64 .

# meta6.json
./hack/binaries
sudo ./bin/buildkitd
sudo ./bin/buildctl build --frontend dockerfile.v0 --local context=. --local dockerfile=. --opt platform=linux/amd64,linux/arm64 --opt context:baseapp::linux/amd64=docker-image://busybox --opt context:baseapp::linux/arm64=docker-image://alpine --metadata-file metadata.json --opt build-arg:foo=bar
```
