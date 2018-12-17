#!/bin/bash

# bazel-missing.sh: helper for when you have missing headers
# use: bazel-missing.sh <tgt-to-build>


# TODO different way to do this faster?
echo "running with -j 1, may be slow..."
output=$(bazel build -j 1 --sandbox_debug $1 2>&1)

missing=$(grep 'No such file or directory' <<<"$output" |\
  cut -d: -f5 |\
  sed 's/\x1b\[.\{0,2\}m//g;s/\x1b(.//g;') #removes ansi control sequences
if [[ -z "$missing" ]]; then
  echo "error locating missing file error"
  echo $missing
  tail -n20 <<<$output
  exit 1
fi

#assumes you're using `--experimental_sandbox_base=/dev/shm/`
sdbx=$(grep -e '/dev/shm.*linux-sandbox' <<<$output | tail -n1 | cut -d: -f4-)
if [[ -z "$sdbx" ]]; then
  echo "error locating sandbox dir"
  tail -n20 <<<$output
  exit 1
fi
if [[ ! -d $sdbx ]]; then
  echo "$sdbx does not exist"
  tail -n20 <<<$output
  exit 1
fi

rule=$(grep 'compilation of rule' <<<$output | tail -n1 | sed -n "s/.*compilation of rule '\([^']*\)'.*/\1/p")

if [[ -z "$rule" ]]; then
  echo "error locating rule"
  echo "$output"
  exit 1
fi

cmd=$(grep embedded_binaries/linux-sandbox <<<$output | tail -n 1)
if [[ -z "$cmd" ]]; then
  echo "error locating cmd"
  echo "$output"
  exit 1
fi

#extract -isystem -iquote -I
idirs=$(tr -d "'" <<<$cmd |sed 's/ -/\n-/g'| grep '^-[iI]')

echo "COMMAND $(tput setaf 2)$cmd$(tput sgr0)"

echo -e "INCLUDE FLAGS\n$(tput setaf 6)$idirs$(tput sgr0)"

echo "$(tput setab 3)RULE: $rule$(tput sgr0)"
echo "$(tput setaf 5)MISSING: $missing$(tput sgr0)"

echo "$(tput setaf 1)SANDBOX: $sdbx$(tput sgr0)"
echo "$(tput setab 4)find -L $sdbx -name $(basename $missing)$(tput sgr0)"
#doesn't always seem to work, not sure why :/
find -L $sdbx -name $(basename $missing)

# src/main/tools/linux-sandbox-pid1.cc:265: remount rw: /dev/shm/bazel-sandbox.b21a13b4989dee6063283824e842580a/linux-sandbox/4/execroot/system
# src/main/tools/process-tools.cc:118: sigaction(32, &sa, nullptr) failed
# src/main/tools/process-tools.cc:118: sigaction(33, &sa, nullptr) failed
# pub/dists/openssl/ssl/d1_srtp.c:120:10: fatal error: srtp.h: No such file or directory
#  #include "srtp.h"
#           ^~~~~~~~
# compilation terminated.
