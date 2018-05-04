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
        ":cc-compiler-amd64",
        #":cc-compiler-k8",
        #":bootlin_linux_all_files",
        ":unknown_gcc_linux_all",
        "@x86_64_unknown_linux_gnu_gcc_730//:compiler_components",
        #"@com_bootlin_toolchains_gcc_7_3_0//:compiler_components",
    ],
)

filegroup(
    name = "bootlin_srcs",
    srcs = glob(["**"]) + [
        "//tools/amd64_compiler/bootlin_linux_gcc:srcs",
    ],
    visibility = ["//:__pkg__"],
)
filegroup(
    name = "gsys_srcs",
    srcs = glob(["**"]) + [
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:srcs",
    ],
    visibility = ["//:__pkg__"],
)

cc_toolchain_suite(
    name = "toolchain",
    # target_cpu | compiler
    toolchains = {
        "amd64|gcc": "cc-compiler-amd64",
        "amd64_bootlin|gcc": "cc-compiler-amd64-bootlin",
        "k8|compiler": "cc-compiler-k8",
    },
)

filegroup(
    name = "gsys_linux_all_files",
    srcs = [
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:tool-wrappers",
        "@x86_64_unknown_linux_gnu_gcc_730//:compiler_pieces",
    ],
)

filegroup(
    name = "gsys_linux_linker_files",
    srcs = [
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:ar",
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:gcc",
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:ld",
        "@x86_64_unknown_linux_gnu_gcc_730//:compiler_pieces",
    ],
)

filegroup(
    name = "gsys_linux_compiler_files",
    srcs = [
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:as",
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:gcc",
        "//tools/amd64_compiler/x86_64-unknown-linux-gnu:ld",
    ],
)

filegroup(
    name = "bootlin_linux_all_files",
    srcs = [
        "//tools/amd64_compiler/bootlin_linux_gcc:tool-wrappers",
        "@com_bootlin_toolchains_gcc_7_3_0//:compiler_pieces",
    ],
)

filegroup(
    name = "bootlin_linux_linker_files",
    srcs = [
        "//tools/amd64_compiler/bootlin_linux_gcc:ar",
        "//tools/amd64_compiler/bootlin_linux_gcc:gcc",
        "//tools/amd64_compiler/bootlin_linux_gcc:ld",
        "@com_bootlin_toolchains_gcc_7_3_0//:compiler_pieces",
    ],
)

filegroup(
    name = "bootlin_linux_compiler_files",
    srcs = [
        "//tools/amd64_compiler/bootlin_linux_gcc:as",
        "//tools/amd64_compiler/bootlin_linux_gcc:gcc",
        "//tools/amd64_compiler/bootlin_linux_gcc:ld",
    ],
)

filegroup(
    name = "empty",
    srcs = [],
)

cc_toolchain(
    name = "cc-compiler-amd64",
    all_files = ":gsys_linux_all_files",
    ar_files = "//tools/amd64_compiler/x86_64-unknown-linux-gnu:ar",
    as_files = "//tools/amd64_compiler/x86_64-unknown-linux-gnu:as",
    compiler_files = ":gsys_linux_compiler_files",
    cpu = "amd64",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":gsys_linux_linker_files",
    objcopy_files = "//tools/amd64_compiler/x86_64-unknown-linux-gnu:objcopy",
    static_runtime_libs = [":empty"],
    strip_files = "//tools/amd64_compiler/x86_64-unknown-linux-gnu:strip",
    supports_param_files = 1,
    visibility = ["//visibility:public"],
)
cc_toolchain(
    name = "cc-compiler-amd64-bootlin",
    all_files = ":bootlin_linux_all_files",
    ar_files = "//tools/amd64_compiler/bootlin_linux_gcc:ar",
    as_files = "//tools/amd64_compiler/bootlin_linux_gcc:as",
    compiler_files = ":bootlin_linux_compiler_files",
    cpu = "amd64",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":bootlin_linux_linker_files",
    objcopy_files = "//tools/amd64_compiler/bootlin_linux_gcc:objcopy",
    static_runtime_libs = [":empty"],
    strip_files = "//tools/amd64_compiler/bootlin_linux_gcc:strip",
    supports_param_files = 1,
    visibility = ["//visibility:public"],
)

cc_toolchain(
    name = "cc-compiler-k8",
    all_files = ":empty",
    ar_files = ":empty",
    as_files = ":empty",
    compiler_files = ":empty",
    cpu = "local",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":empty",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 1,
)
