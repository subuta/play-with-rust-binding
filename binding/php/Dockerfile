# Minimum version 'ext-php-rs' supports.
FROM php:8.0-cli-bullseye

# SEE: [linux - When installing Rust toolchain in Docker, Bash `source` command doesn't work - Stack Overflow](https://stackoverflow.com/a/58169817/9998350)
# Update default packages
RUN apt-get -qq update

# Get Ubuntu packages
RUN apt-get install -y -q \
    build-essential \
    software-properties-common \
    curl \
    wget \
    gnupg

# SEE: [LLVM Debian/Ubuntu packages](https://apt.llvm.org/)
# SEE: https://gist.github.com/Ouroboros/0beec448f61c9926023633ca532184dc
# Add repostiry for clang
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key| apt-key add - && \
    add-apt-repository "deb http://apt.llvm.org/bullseye/ llvm-toolchain-bullseye-14 main" && \
    apt-get -qq update

# Install clang
RUN apt-get install -y -q \
    clang-14  \
    lldb-14  \
    lld-14

# Install "rust" runtime for build language binding.
# Get Rust; NOTE: using sh for better compatibility with other base images
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

# Add .cargo/bin to PATH
ENV PATH="/root/.cargo/bin:${PATH}"

# Install cargo-php
RUN cargo install cargo-php

WORKDIR /myapp

COPY ./binding/php /myapp
COPY ./shared /myapp/src/shared

# Create "php.ini" in container for module installation.
COPY ./binding/php/php-development.ini /usr/local/etc/php/php.ini

# Install php extension to "php.ini"
RUN cargo php install --release --yes