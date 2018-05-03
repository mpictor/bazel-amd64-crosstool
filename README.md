Example using bazel with a non-system compiler and crosstool

**Note that this does not (yet) work.**

I copied from bazel's [bazel_toolchain_test_data](https://github.com/bazelbuild/bazel/tree/master/src/test/shell/bazel/testdata/bazel_toolchain_test_data), which uses a linaro arm compiler, and substituted an amd64 compiler from bootlin.

