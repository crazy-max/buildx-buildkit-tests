```console
docker buildx bake --metadata-file metadata.json --set app.tags=user/app:latest --set app.output=type=cacheonly app
```
