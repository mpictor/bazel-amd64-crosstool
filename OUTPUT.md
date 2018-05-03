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
INFO: Analysed target //:hello (3 packages loaded).
INFO: Found 1 target...
ERROR: /home/mark/experiments/bazel-amd64-crosstool/BUILD:7:1: Linking of rule '//:hello' failed (Exit 1): x86_64-linux-gcc failed: error executing command
  (cd /home/mark/.cache/bazel/_bazel_mark/66ce7c19ef12345e0ebae28e4b0e335a/execroot/__main__ && \
  exec env - \
    PWD=/proc/self/cwd \
  tools/amd64_compiler/bootlin_linux_gcc/x86_64-linux-gcc -o bazel-out/amd64-fastbuild/bin/hello '--sysroot=external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/sysroot' -Lexternal/com_bootlin_toolchains_gcc_7_3_0/libexec/gcc/x86_64-buildroot-linux-gnu/7.3.0/ -Lexternal/com_bootlin_toolchains_gcc_7_3_0/lib -Lexternal/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/sysroot/lib -Lexternal/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/sysroot/usr/lib -Bexternal/com_bootlin_toolchains_gcc_7_3_0/bin '-fuse-ld=gold' -Wl,-no-as-needed -Wl,-z,relro,-z,now -no-canonical-prefixes -pie -Wl,-z,relro,-z,now -Wl,-S -Wl,@bazel-out/amd64-fastbuild/bin/hello-2.params)

Use --sandbox_debug to see verbose messages from the sandbox
x86_64-buildroot-linux-gnu-gcc: fatal error: -fuse-linker-plugin, but liblto_plugin.so not found
compilation terminated.
Target //:hello failed to build
INFO: Elapsed time: 1.951s, Critical Path: 1.18s
INFO: 1 process, linux-sandbox.
FAILED: Build did NOT complete successfully
```
