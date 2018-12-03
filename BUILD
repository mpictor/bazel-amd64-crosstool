filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "hello",
    srcs = ["hello.cc"],
)


cc_library(
    name='lib',
    srcs=['lib.cc','lib.h'],
)
cc_binary(
    name='hellolib',
    srcs=['hellolib.cc'],
    deps=['//:lib'],
    #linkstatic=0,
)
