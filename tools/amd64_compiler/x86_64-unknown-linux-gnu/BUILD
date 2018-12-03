package(default_visibility = ["//tools/amd64_compiler:__pkg__"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
)

filegroup(
    name = "gcc",
    srcs = [
        "x86_64-unknown-linux-gnu-gcc",
        "@x86_64_unknown_linux_gnu_gcc_730//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "x86_64-unknown-linux-gnu-ar",
        "@x86_64_unknown_linux_gnu_gcc_730//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "x86_64-unknown-linux-gnu-ld.bfd",
        "x86_64-unknown-linux-gnu-ld.gold",
        "@x86_64_unknown_linux_gnu_gcc_730//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "x86_64-unknown-linux-gnu-nm",
        "@x86_64_unknown_linux_gnu_gcc_730//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "x86_64-unknown-linux-gnu-objcopy",
        "@x86_64_unknown_linux_gnu_gcc_730//:objcopy",
    ],
)

filegroup(
    name = "objdump",
    srcs = [
        "x86_64-unknown-linux-gnu-objdump",
        "@x86_64_unknown_linux_gnu_gcc_730//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "x86_64-unknown-linux-gnu-strip",
        "@x86_64_unknown_linux_gnu_gcc_730//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "x86_64-unknown-linux-gnu-as",
        "@x86_64_unknown_linux_gnu_gcc_730//:as",
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
