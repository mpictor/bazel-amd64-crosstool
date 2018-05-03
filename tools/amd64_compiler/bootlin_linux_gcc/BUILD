package(default_visibility = ["//tools/amd64_compiler:__pkg__"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    #visibility = ["//src/test/shell/bazel/testdata/bazel_toolchain_test_data/tools/amd64_compiler:__pkg__"],
)

filegroup(
    name = "gcc",
    srcs = [
        "x86_64-linux-gcc",
        "@com_bootlin_toolchains_gcc_7_3_0//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "x86_64-linux-ar",
        "@com_bootlin_toolchains_gcc_7_3_0//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "x86_64-linux-ld",
        "@com_bootlin_toolchains_gcc_7_3_0//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "x86_64-linux-nm",
        "@com_bootlin_toolchains_gcc_7_3_0//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "x86_64-linux-objcopy",
        "@com_bootlin_toolchains_gcc_7_3_0//:objcopy",
    ],
)

filegroup(
    name = "objdump",
    srcs = [
        "x86_64-linux-objdump",
        "@com_bootlin_toolchains_gcc_7_3_0//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "x86_64-linux-strip",
        "@com_bootlin_toolchains_gcc_7_3_0//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "x86_64-linux-as",
        "@com_bootlin_toolchains_gcc_7_3_0//:as",
    ],
)

filegroup(
    name = "tool-wrappers",
    srcs = [
        ":ar",
        ":as",
        ":gcc",
        ":ld",
        ":nm",
        ":objcopy",
        ":objdump",
        ":strip",
    ],
)
