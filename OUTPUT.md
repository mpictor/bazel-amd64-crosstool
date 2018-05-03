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
Starting local Bazel server and connecting to it...
..............................................................................
INFO: Analysed target //:hello (9 packages loaded).
INFO: Found 1 target...
ERROR: /home/mark/experiments/bazel-amd64-crosstool/BUILD:7:1: C++ compilation of rule '//:hello' failed (Exit 1): x86_64-linux-gcc failed: error executing command
  (cd /home/mark/.cache/bazel/_bazel_mark/66ce7c19ef12345e0ebae28e4b0e335a/execroot/__main__ && \
  exec env - \
    PWD=/proc/self/cwd \
  tools/amd64_compiler/bootlin_linux_gcc/x86_64-linux-gcc '--sysroot=external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/sysroot' -nostdinc -isystem external/com_bootlin_toolchains_gcc_7_3_0/lib/gcc/x86_64-buildroot-linux-gnu/7.3.0/include -isystem external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/sysroot/usr/include -isystem external/com_bootlin_toolchains_gcc_7_3_0/lib/gcc/x86_64-buildroot-linux-gnu/7.3.0/include-fixed -isystem external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/sysroot/usr/include -U_FORTIFY_SOURCE -fstack-protector -fPIE '-fdiagnostics-color=always' -Wall -Wunused-but-set-parameter -Wno-free-nonheap-object -fno-omit-frame-pointer '-std=gnu++14' -isystem external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/include/c++/7.3.0/x86_64-buildroot-linux-gnu -isystem external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/include/c++/7.3.0 -isystem external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/include/c++/7.3.0/x86_64-buildroot-linux-gnu -isystem external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/include/c++/7.3.0 -MD -MF bazel-out/amd64-fastbuild/bin/_objs/hello/hello.pic.d '-frandom-seed=bazel-out/amd64-fastbuild/bin/_objs/hello/hello.pic.o' -fPIC -iquote . -iquote bazel-out/amd64-fastbuild/genfiles -iquote external/bazel_tools -iquote bazel-out/amd64-fastbuild/genfiles/external/bazel_tools -no-canonical-prefixes -Wno-builtin-macro-redefined '-D__DATE__="redacted"' '-D__TIMESTAMP__="redacted"' '-D__TIME__="redacted"' -c hello.cc -o bazel-out/amd64-fastbuild/bin/_objs/hello/hello.pic.o)

Use --sandbox_debug to see verbose messages from the sandbox
In file included from hello.cc:15:0:
external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/include/c++/7.3.0/cmath:45:23: error: no include path in which to search for math.h
 #include_next <math.h>
                       ^
In file included from external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/include/c++/7.3.0/cmath:47:0,
                 from hello.cc:15:
external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/include/c++/7.3.0/bits/std_abs.h:38:25: error: no include path in which to search for stdlib.h
 #include_next <stdlib.h>
                         ^
In file included from hello.cc:16:0:
external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/include/c++/7.3.0/cstdlib:75:25: error: no include path in which to search for stdlib.h
 #include_next <stdlib.h>
                         ^
In file included from external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/include/c++/7.3.0/ctime:42:0,
                 from hello.cc:17:
external/com_bootlin_toolchains_gcc_7_3_0/x86_64-buildroot-linux-gnu/sysroot/usr/include/time.h:29:10: fatal error: stddef.h: No such file or directory
 #include <stddef.h>
          ^~~~~~~~~~
compilation terminated.
Target //:hello failed to build
INFO: Elapsed time: 37.956s, Critical Path: 0.29s
INFO: 0 processes.
FAILED: Build did NOT complete successfully
```
