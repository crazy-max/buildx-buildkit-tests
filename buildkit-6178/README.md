| #  | BuildKit    | Buildx      | Context                     | BUILDKIT_SYNTAX                 | Outcome |
|----|-------------|-------------|-----------------------------|---------------------------------|---------|
| 1  | v0.24.0-dev | v0.27.0     | #:buildkit-6178             |                                 | ✅       |
| 2  | v0.24.0-dev | v0.27.0     | ?subdir=buildkit-6178       |                                 | ✅       |
| 3  | v0.24.0-dev | v0.27.0     | #:buildkit-6178/df117       |                                 | ✅       |
| 4  | v0.24.0-dev | v0.27.0     | ?subdir=buildkit-6178/df117 |                                 | ❌       |
| 5  | v0.24.0-dev | v0.28.0-dev | #:buildkit-6178             |                                 | ✅       |
| 6  | v0.24.0-dev | v0.28.0-dev | ?subdir=buildkit-6178       |                                 | ✅       |
| 7  | v0.24.0-dev | v0.28.0-dev | #:buildkit-6178/df117       |                                 | ✅       |
| 8  | v0.24.0-dev | v0.28.0-dev | ?subdir=buildkit-6178/df117 |                                 | ⚠️      |
| 9  | v0.23.2     | v0.27.0     | #:buildkit-6178             |                                 | ✅       |
| 10 | v0.23.2     | v0.27.0     | ?subdir=buildkit-6178       |                                 | ❌       |
| 11 | v0.23.2     | v0.27.0     | #:buildkit-6178/df117       |                                 | ✅       |
| 12 | v0.23.2     | v0.27.0     | ?subdir=buildkit-6178/df117 |                                 | ❌       |
| 13 | v0.23.2     | v0.28.0-dev | #:buildkit-6178             |                                 | ✅       |
| 14 | v0.23.2     | v0.28.0-dev | ?subdir=buildkit-6178       |                                 | ⚠️      |
| 15 | v0.23.2     | v0.28.0-dev | #:buildkit-6178/df117       |                                 | ✅       |
| 16 | v0.23.2     | v0.28.0-dev | ?subdir=buildkit-6178/df117 |                                 | ⚠️      |
| 17 | v0.23.2     | v0.28.0-dev | #:buildkit-6178/df117       | dockerfile-upstream:v1.18.0-dev | ✅       |
| 18 | v0.23.2     | v0.28.0-dev | ?subdir=buildkit-6178/df117 | dockerfile-upstream:v1.18.0-dev | ✅       |
| 19 | v0.24.0-dev | v0.27.0     | #:buildkit-6178/df117       | dockerfile-upstream:v1.18.0-dev | ✅       |
| 20 | v0.24.0-dev | v0.27.0     | ?subdir=buildkit-6178/df117 | dockerfile-upstream:v1.18.0-dev | ✅       |
| 21 | v0.24.0-dev | v0.28.0-dev | #:buildkit-6178/df117       | dockerfile-upstream:v1.18.0-dev | ✅       |
| 22 | v0.24.0-dev | v0.28.0-dev | ?subdir=buildkit-6178/df117 | dockerfile-upstream:v1.18.0-dev | ✅       |
| 23 | v0.23.2     | v0.27.0     | #:buildkit-6178/df117       | dockerfile-upstream:v1.18.0-dev | ✅       |
| 24 | v0.23.2     | v0.27.0     | ?subdir=buildkit-6178/df117 | dockerfile-upstream:v1.18.0-dev | ❌❌      |
| 25 | v0.23.2     | v0.28.0-dev | #:buildkit-6178/df117       | dockerfile-upstream:v1.18.0-dev | ✅       |
| 26 | v0.23.2     | v0.28.0-dev | ?subdir=buildkit-6178/df117 | dockerfile-upstream:v1.18.0-dev | ✅       |

### 4

https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17429456565/job/49484195241#step:3:179

```
/usr/bin/docker buildx build --iidfile /home/runner/work/_temp/docker-actions-toolkit-FhIKVy/build-iidfile-326e7420c5.txt --metadata-file /home/runner/work/_temp/docker-actions-toolkit-FhIKVy/build-metadata-998f8384e9.json https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117
#0 building with "builder-c5f7d7f4-5a96-42bc-9e33-1da9d372b28b" instance using docker-container driver

#1 [internal] load git source https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117
#1 0.016 Initialized empty Git repository in /var/lib/buildkit/runc-overlayfs/snapshots/snapshots/1/fs/
#1 0.215 ref: refs/heads/main	HEAD
#1 0.218 e20bd9efa7740066c36405136f3851b505649d4b	HEAD
#1 0.381 e20bd9efa7740066c36405136f3851b505649d4b	refs/heads/main
#1 0.173 ref: refs/heads/main	HEAD
#1 0.175 e20bd9efa7740066c36405136f3851b505649d4b	HEAD
#1 0.523 From https://github.com/crazy-max/buildx-buildkit-tests
#1 0.523  * [new branch]      main       -> main
#1 0.523  * [new branch]      main       -> origin/main
#1 DONE 0.9s

#2 [auth] docker/dockerfile:pull token for registry-1.docker.io
#2 DONE 0.0s

#3 resolve image config for docker-image://docker.io/docker/dockerfile:1.17
#3 DONE 0.7s

#4 docker-image://docker.io/docker/dockerfile:1.17@sha256:38387523653efa0039f8e1c89bb74a30504e76ee9f565e25c9a09841f9427b05
#4 resolve docker.io/docker/dockerfile:1.17@sha256:38387523653efa0039f8e1c89bb74a30504e76ee9f565e25c9a09841f9427b05 done
#4 sha256:fdbb657bc4fdee228c0c20080da3a4cc193ef22c6637ae12109c8feba99debea 1.05MB / 14.09MB 0.2s
#4 sha256:fdbb657bc4fdee228c0c20080da3a4cc193ef22c6637ae12109c8feba99debea 14.09MB / 14.09MB 0.3s done
#4 extracting sha256:fdbb657bc4fdee228c0c20080da3a4cc193ef22c6637ae12109c8feba99debea 0.1s done
#4 DONE 0.4s

#5 [internal] load git source https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117
#5 0.009 Initialized empty Git repository in /var/lib/buildkit/runc-overlayfs/snapshots/snapshots/5/fs/
#5 0.618 warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
#5 0.618 fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
#5 ERROR: error fetching default branch for repository https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117: git stderr:
warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
: exit status 128
------
 > [internal] load git source https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117:
0.009 Initialized empty Git repository in /var/lib/buildkit/runc-overlayfs/snapshots/snapshots/5/fs/
0.618 warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
0.618 fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
------
WARNING: No output specified with docker-container driver. Build result will only remain in the build cache. To push result image into registry use --push or to load image into docker use --load
Dockerfile:1
--------------------
   1 | >>> # syntax=docker/dockerfile:1.17
   2 |     FROM busybox
   3 |     RUN echo "hello world"
--------------------
ERROR: failed to build: failed to solve: failed to load cache key: error fetching default branch for repository https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117: git stderr:
warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
: exit status 128
```

This is expected and similar to what has been reported in https://github.com/moby/buildkit/issues/6178

### 8

https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17429456565/job/49484195235#step:3:179

```
/usr/bin/docker buildx build --iidfile /home/runner/work/_temp/docker-actions-toolkit-tlWHBE/build-iidfile-91f4ab7cdb.txt --metadata-file /home/runner/work/_temp/docker-actions-toolkit-tlWHBE/build-metadata-8fa0b9e7e0.json https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117
#0 building with "builder-363639ef-0c1d-47b3-a59d-894bdc818133" instance using docker-container driver

#1 [internal] load git source https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117
#1 0.015 Initialized empty Git repository in /var/lib/buildkit/runc-overlayfs/snapshots/snapshots/1/fs/
#1 0.148 ref: refs/heads/main	HEAD
#1 0.151 e20bd9efa7740066c36405136f3851b505649d4b	HEAD
#1 0.278 e20bd9efa7740066c36405136f3851b505649d4b	refs/heads/main
#1 0.122 ref: refs/heads/main	HEAD
#1 0.125 e20bd9efa7740066c36405136f3851b505649d4b	HEAD
#1 0.365 From https://github.com/crazy-max/buildx-buildkit-tests
#1 0.365  * [new branch]      main       -> main
#1 0.365  * [new branch]      main       -> origin/main
#1 DONE 0.7s

#2 [auth] docker/dockerfile:pull token for registry-1.docker.io
#2 DONE 0.0s

#3 resolve image config for docker-image://docker.io/docker/dockerfile:1.17
#3 DONE 0.5s

#4 docker-image://docker.io/docker/dockerfile:1.17@sha256:38387523653efa0039f8e1c89bb74a30504e76ee9f565e25c9a09841f9427b05
#4 resolve docker.io/docker/dockerfile:1.17@sha256:38387523653efa0039f8e1c89bb74a30504e76ee9f565e25c9a09841f9427b05 done
#4 sha256:fdbb657bc4fdee228c0c20080da3a4cc193ef22c6637ae12109c8feba99debea 14.09MB / 14.09MB 0.1s done
#4 extracting sha256:fdbb657bc4fdee228c0c20080da3a4cc193ef22c6637ae12109c8feba99debea 0.1s done
#4 DONE 0.3s
WARNING: No output specified with docker-container driver. Build result will only remain in the build cache. To push result image into registry use --push or to load image into docker use --load
Dockerfile:1
--------------------
   1 | >>> # syntax=docker/dockerfile:1.17
   2 |     FROM busybox
   3 |     RUN echo "hello world"
--------------------
ERROR: failed to build: current frontend does not support Git URLs with query string components. Git URLs with query string are supported since Dockerfile v1.18 and BuildKit v0.24. Use BUILDKIT_SYNTAX build-arg, #syntax directive in Dockerfile or update to latest BuildKit.
```

Custom error message wrapped as expected.

### 10

https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17429456565/job/49484195217#step:3:179

```
/usr/bin/docker buildx build --iidfile /home/runner/work/_temp/docker-actions-toolkit-fXr1bd/build-iidfile-231e4502fa.txt --attest type=provenance,mode=max,builder-id=https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17429456565/attempts/1 --metadata-file /home/runner/work/_temp/docker-actions-toolkit-fXr1bd/build-metadata-6e2efde098.json https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178
#0 building with "builder-41537eec-db9d-41be-ba84-830494e466de" instance using docker-container driver

#1 [internal] load git source https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178
#1 0.013 Initialized empty Git repository in /var/lib/buildkit/runc-overlayfs/snapshots/snapshots/1/fs/
#1 0.630 warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/
#1 0.630 fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/info/refs not valid: is this a git repository?
#1 ERROR: error fetching default branch for repository https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178: git stderr:
warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/
fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/info/refs not valid: is this a git repository?
: exit status 128
------
 > [internal] load git source https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178:
0.013 Initialized empty Git repository in /var/lib/buildkit/runc-overlayfs/snapshots/snapshots/1/fs/
0.630 warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/
0.630 fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/info/refs not valid: is this a git repository?
------
WARNING: No output specified with docker-container driver. Build result will only remain in the build cache. To push result image into registry use --push or to load image into docker use --load
ERROR: failed to build: failed to solve: failed to read dockerfile: failed to load cache key: error fetching default branch for repository https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178: git stderr:
warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/
fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/info/refs not valid: is this a git repository?
: exit status 128
```

Expected with old buildkit that does not support Git query string.

### 12

https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17429456565/job/49484195238#step:3:179

```
/usr/bin/docker buildx build --iidfile /home/runner/work/_temp/docker-actions-toolkit-TeX3Tt/build-iidfile-e0a373daae.txt --attest type=provenance,mode=max,builder-id=https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17429456565/attempts/1 --metadata-file /home/runner/work/_temp/docker-actions-toolkit-TeX3Tt/build-metadata-ee3e934cd7.json https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117
#0 building with "builder-6a1a1a87-a2c5-48cc-aea4-95dd974c2198" instance using docker-container driver

#1 [internal] load git source https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117
#1 0.014 Initialized empty Git repository in /var/lib/buildkit/runc-overlayfs/snapshots/snapshots/1/fs/
#1 0.596 warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
#1 0.596 fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
#1 ERROR: error fetching default branch for repository https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117: git stderr:
warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
: exit status 128
------
 > [internal] load git source https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117:
0.014 Initialized empty Git repository in /var/lib/buildkit/runc-overlayfs/snapshots/snapshots/1/fs/
0.596 warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
0.596 fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
------
WARNING: No output specified with docker-container driver. Build result will only remain in the build cache. To push result image into registry use --push or to load image into docker use --load
ERROR: failed to build: failed to solve: failed to read dockerfile: failed to load cache key: error fetching default branch for repository https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117: git stderr:
warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
: exit status 128
```

Same as `10`.

### 14

https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17429456565/job/49484195269#step:3:179

```
/usr/bin/docker buildx build --iidfile /home/runner/work/_temp/docker-actions-toolkit-5DzpMm/build-iidfile-22da3177e6.txt --attest type=provenance,mode=max,builder-id=https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17429456565/attempts/1 --metadata-file /home/runner/work/_temp/docker-actions-toolkit-5DzpMm/build-metadata-a6db7ef089.json https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178
WARNING: No output specified with docker-container driver. Build result will only remain in the build cache. To push result image into registry use --push or to load image into docker use --load
ERROR: failed to build: current frontend does not support Git URLs with query string components. Git URLs with query string are supported since Dockerfile v1.18 and BuildKit v0.24. Use BUILDKIT_SYNTAX build-arg, #syntax directive in Dockerfile or update to latest BuildKit.
```

Fails right away with custom error message wrapped as expected.

### 16

https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17431862935/job/49491898950#step:3:179

```
/usr/bin/docker buildx build --iidfile /home/runner/work/_temp/docker-actions-toolkit-j2TaFW/build-iidfile-e39f28d796.txt --attest type=provenance,mode=max,builder-id=https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17431862935/attempts/1 --metadata-file /home/runner/work/_temp/docker-actions-toolkit-j2TaFW/build-metadata-519207ca4b.json https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178
WARNING: No output specified with docker-container driver. Build result will only remain in the build cache. To push result image into registry use --push or to load image into docker use --load
ERROR: failed to build: current frontend does not support Git URLs with query string components. Git URLs with query string are supported since Dockerfile v1.18 and BuildKit v0.24. Use BUILDKIT_SYNTAX build-arg, #syntax directive in Dockerfile or update to latest BuildKit.
```

Fails right away with custom error message wrapped as expected.

### 24

https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17431862935/job/49491899000#step:4:181

```
/usr/bin/docker buildx build --build-arg BUILDKIT_SYNTAX=docker.io/docker/dockerfile-upstream:master@sha256:858ceec87795a5f306e5e5afdd855d7c31fbab7373c96ca0f92000b5f0caee72 --iidfile /home/runner/work/_temp/docker-actions-toolkit-YS8q0J/build-iidfile-e6ddcda284.txt --attest type=provenance,mode=max,builder-id=https://github.com/crazy-max/buildx-buildkit-tests/actions/runs/17431862935/attempts/1 --metadata-file /home/runner/work/_temp/docker-actions-toolkit-YS8q0J/build-metadata-71517bd4bf.json https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117
#0 building with "builder-11e60d9b-003c-47b0-853d-50525891ed87" instance using docker-container driver

#1 [internal] load git source https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117
#1 0.016 Initialized empty Git repository in /var/lib/buildkit/runc-overlayfs/snapshots/snapshots/1/fs/
#1 0.763 warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
#1 0.763 fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
#1 ERROR: error fetching default branch for repository https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117: git stderr:
warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
: exit status 128
------
 > [internal] load git source https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117:
0.016 Initialized empty Git repository in /var/lib/buildkit/runc-overlayfs/snapshots/snapshots/1/fs/
0.763 warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
0.763 fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
------
WARNING: No output specified with docker-container driver. Build result will only remain in the build cache. To push result image into registry use --push or to load image into docker use --load
ERROR: failed to build: failed to solve: failed to read dockerfile: failed to load cache key: error fetching default branch for repository https://github.com/crazy-max/buildx-buildkit-tests.git?subdir=buildkit-6178/df117: git stderr:
warning: redirecting to https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/
fatal: https://github.com/crazy-max/buildx-buildkit-tests?subdir=buildkit-6178/df117/info/refs not valid: is this a git repository?
: exit status 128
```

Using latest frontend with capability still does not help with old buildx and buildkit which seems expected but `24` works with new buildx.
