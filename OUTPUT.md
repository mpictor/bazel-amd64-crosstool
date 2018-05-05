$ `bazel version`
```nohighlight
Build label: 0.13.0- (@non-git)
Build target: bazel-out/k8-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Wed May 2 20:27:37 2018 (1525292857)
Build timestamp: 1525292857
Build timestamp as int: 1525292857
```

----

$ `./run.sh`

```nohighlight
INFO: Analysed target //:hello (9 packages loaded).
INFO: Found 1 target...
Target //:hello up-to-date:
  bazel-bin/hello
INFO: Elapsed time: 37.932s, Critical Path: 0.96s
INFO: 3 processes: 2 linux-sandbox, 1 local.
INFO: Build completed successfully, 6 total actions
```
