# This is the entry point for --crosstool_top.  Toolchains are found
# by lopping off the name of --crosstool_top and searching for
# 'cc-compiler-${CPU}' in this BUILD file, where CPU is the target CPU
# specified in --cpu.
#
# This file group should include
#   * all cc_toolchain targets supported
#   * all file groups that said cc_toolchain might refer to,
# including the default_grte_top setting in the CROSSTOOL
# protobuf.
filegroup(
    name = "toolchain_fg",
    srcs = [
        ":cc-compiler-k8",
        "@x86_64_unknown_linux_gnu_gcc_730//:compiler_components",
    ],
)

filegroup(
    name = "gcc_srcs",
    srcs = glob(["**"]) + [
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:srcs",
    ],
    visibility = ["//:__pkg__"],
)

cc_toolchain_suite(
    name = "toolchain",
    # target_cpu | compiler
    toolchains = {
        "k8|gcc": "cc-compiler-k8",
        "k8": "cc-compiler-k8",
        "amd64|gcc": "cc-compiler-k8",
    },
    visibility = ["//visibility:public"],
)

filegroup(
    name = "gcc_linux_all_files",
    srcs = [
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:tool-wrappers",
        "@x86_64_unknown_linux_gnu_gcc_730//:compiler_pieces",
    ],
)

filegroup(
    name = "gcc_linux_linker_files",
    srcs = [
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:ar",
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:gcc",
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:ld",
        "@x86_64_unknown_linux_gnu_gcc_730//:compiler_pieces",
    ],
)

filegroup(
    name = "gcc_linux_compiler_files",
    srcs = [
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:as",
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:gcc",
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:ld",
    ],
)

filegroup(
    name = "empty",
    srcs = [],
)

cc_toolchain(
    name = "cc-compiler-k8",
    all_files = ":gcc_linux_all_files",
    ar_files = "//tools/amd64_compiler/x86_64-unknown-linux-gnu:ar",
    as_files = "//tools/amd64_compiler/x86_64-unknown-linux-gnu:as",
    compiler_files = ":gcc_linux_compiler_files",
    cpu = "k8",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":gcc_linux_linker_files",
    objcopy_files = "//tools/amd64_compiler/x86_64-unknown-linux-gnu:objcopy",
    static_runtime_libs = [":empty"],
    strip_files = "//tools/amd64_compiler/x86_64-unknown-linux-gnu:strip",
    supports_param_files = 1,
    visibility = ["//visibility:public"],
)
