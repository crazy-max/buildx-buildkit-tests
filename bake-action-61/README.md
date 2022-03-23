* https://github.com/docker/bake-action/issues/61
* https://github.com/k3d-io/k3d/blob/enhancement/gh-actions/docker-bake.hcl

```console
$ docker --debug buildx bake -f docker-bake.hcl -f binary.hcl -f dind.hcl -f proxy.hcl binary --print
```
