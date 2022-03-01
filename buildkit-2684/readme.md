https://github.com/moby/buildkit/pull/2684

```console
docker buildx bake --metadata-file metadata.json --set *.args.foo=bar --set *.args.bar=foo app
cat metadata.json | jq
```
