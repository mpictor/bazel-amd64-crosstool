Example using bazel with a non-system compiler and crosstool


I copied from bazel's [bazel_toolchain_test_data](https://github.com/bazelbuild/bazel/tree/master/src/test/shell/bazel/testdata/bazel_toolchain_test_data), which uses a linaro arm compiler, and substituted an amd64 compiler. I tried one from bootlin, but its gcc was named `gcc.br_real` which caused problems. Fixing the archive and re-creating may have fixed it, but I felt I'd have more luck building a toolchain with crosstool-ng (documented below).

https://groups.google.com/forum/#!topic/bazel-discuss/o0mTszeaJ5E


## Compiling the compiler ##

__Included for completeness.__ You should download the tarball from TODO instead.

The config file here works with crosstool-ng rev d7eed4ee52a793. I cannot guarantee that it will work with other versions.

```bash
# note that you will need to adjust paths if you do not run these commands starting in the bazel-amd64-crosstool dir!
git clone https://github.com/crosstool-ng/crosstool-ng
cd crosstool-ng
git checkout -b bazel-amd64-crosstool
git reset --hard d7eed4ee52a793
./bootstrap
./configure --enable-local
make
cp ../crosstoolng.config .config
./ct-ng build.`nproc`
# this will take a while

tar cJf ~/x-tools/x86_64-unknown-linux-gnu-gcc-730.tar.xz -C ~/x-tools/ x86_64-unknown-linux-gnu

```
