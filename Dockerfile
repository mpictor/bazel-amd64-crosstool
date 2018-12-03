FROM debian:stretch

RUN apt-get update && apt-get install -y apt-transport-https curl software-properties-common git gcc gnupg2 g++ openjdk-8-jdk-headless python-dev zip wget vim

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

RUN apt-get update && apt-get install -y docker-ce

# updated from 0.14.1
RUN wget https://releases.bazel.build/0.17.1/release/bazel-0.17.1-installer-linux-x86_64.sh -O ./bazel-installer.sh && chmod 755 ./bazel-installer.sh

RUN ./bazel-installer.sh
