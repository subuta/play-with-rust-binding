FROM node:18.12.1-bullseye

# SEE: [linux - When installing Rust toolchain in Docker, Bash `source` command doesn't work - Stack Overflow](https://stackoverflow.com/a/58169817/9998350)
# Update default packages
RUN apt-get -qq update

# Get Ubuntu packages
RUN apt-get install -y -q \
    build-essential \
    curl

# Install "rust" runtime for build language binding.
# Get Rust; NOTE: using sh for better compatibility with other base images
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

# Add .cargo/bin to PATH
ENV PATH="/root/.cargo/bin:${PATH}"

# Install "wasm-pack"
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

WORKDIR /myapp

COPY ./binding/js /myapp
COPY ./shared /myapp/src/shared

RUN npm i