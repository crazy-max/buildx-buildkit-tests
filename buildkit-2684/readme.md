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

```
