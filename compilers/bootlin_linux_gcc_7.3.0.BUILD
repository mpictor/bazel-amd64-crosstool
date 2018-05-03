package(default_visibility = ['//visibility:public'])

filegroup(
  name = 'gcc',
  srcs = [
    'bin/x86_64-buildroot-linux-gnu-gcc.br_real',
  ],
)

filegroup(
  name = 'ar',
  srcs = [
    'bin/x86_64-linux-ar',
  ],
)

filegroup(
  name = 'ld',
  srcs = [
    'bin/x86_64-linux-ld',
  ],
)

filegroup(
  name = 'nm',
  srcs = [
    'bin/x86_64-linux-nm',
  ],
)

filegroup(
  name = 'objcopy',
  srcs = [
    'bin/x86_64-linux-objcopy',
  ],
)

filegroup(
  name = 'objdump',
  srcs = [
    'bin/x86_64-linux-objdump',
  ],
)

filegroup(
  name = 'strip',
  srcs = [
    'bin/x86_64-linux-strip',
  ],
)

filegroup(
  name = 'as',
  srcs = [
    'bin/x86_64-linux-as',
  ],
)

filegroup(
  name = 'compiler_pieces',
  srcs = glob([
    'x86_64-buildroot-linux-gnu/**',
    'libexec/**',
    'lib/gcc/arm-linux-gnueabihf/**',
    'include/**',
    'bin/**',
    'lib/**',
  ]),
)

filegroup(
  name = 'compiler_components',
  srcs = [
    ':gcc',
    ':ar',
    ':ld',
    ':nm',
    ':objcopy',
    ':objdump',
    ':strip',
    ':as',
  ],
)
