# play-with-rust-binding
Example of rust-based shared library with language binding

## Bindings

- ruby: via [danielpclark/rutie: “The Tie Between Ruby and Rust.”](https://github.com/danielpclark/rutie)
- php: via [davidcole1340/ext-php-rs: Bindings for the Zend API to build PHP extensions natively in Rust.](https://github.com/davidcole1340/ext-php-rs)
- python: via [PyO3/pyo3: Rust bindings for the Python interpreter](https://github.com/PyO3/pyo3)
- js: via [rustwasm/wasm-bindgen: Facilitating high-level interactions between Wasm modules and JavaScript](https://github.com/rustwasm/wasm-bindgen)

## How to develop "ruby binding"

```bash
# Build ruby binding
make build_ruby

# Debug ruby binding docker image
make bash_ruby

# Run ruby binding
make run_ruby
```

## How to develop "php binding"

```bash
# Build php binding
make build_php

# Debug php binding docker image
make bash_php

# Run php binding
make run_php
```

## How to develop "python binding"

```bash
# Build python binding
make build_python

# Debug python binding docker image
make bash_python

# Run python binding
make run_python
```

## How to develop "js binding"

```bash
# Build js binding
make build_js

# Debug js binding docker image
make bash_js

# Run js binding
make run_js

# Run js binding(with "wasm") in the browser
make run_browser_js
open http://localhost:8080
```