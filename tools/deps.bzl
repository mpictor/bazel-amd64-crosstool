
# inspired by go_rules_dependencies() at https://github.com/bazelbuild/rules_go/blob/master/go/private/repositories.bzl

def bazel_crosstool_deps():
    _maybe(
        native.new_http_archive,
        name = 'x86_64_unknown_linux_gnu_gcc_730',
        build_file = 'compilers/x86_64-unknown-linux-gnu-gcc-730.BUILD',
        urls = ['https://github.com/mpictor/bazel-amd64-crosstool/releases/download/v0.1/x86_64-unknown-linux-gnu-gcc-730.tar.xz',
                'file:///home/mark/x-tools/x86_64-unknown-linux-gnu-gcc-730.tar.xz'],
        strip_prefix = 'x86_64-unknown-linux-gnu',
        sha256 = 'e3cc07f5369f9c32df15a67ea684d4643746e756ba47fed68dc92b4a68c19b2c',
    )

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)
