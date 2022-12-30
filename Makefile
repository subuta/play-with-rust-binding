# Ruby commands
.PHONY: build_ruby
build_ruby:
	docker build -t play-with-rust-binding-ruby -f ./binding/ruby/Dockerfile .

.PHONY: bash_ruby
bash_ruby:
	docker run --rm -it -v ${PWD}/binding/ruby:/myapp -v ${PWD}/shared:/myapp/src/shared --entrypoint /bin/bash play-with-rust-binding-ruby

.PHONY: run_ruby
run_ruby:
	docker run --rm -t -v ${PWD}/binding/ruby:/myapp -v ${PWD}/shared:/myapp/src/shared play-with-rust-binding-ruby rake test

# PHP commands
.PHONY: build_php
build_php:
	docker build -t play-with-rust-binding-php -f ./binding/php/Dockerfile .

.PHONY: bash_php
bash_php:
	docker run --rm -it -v ${PWD}/binding/php:/myapp -v ${PWD}/shared:/myapp/src/shared --entrypoint /bin/bash play-with-rust-binding-php

.PHONY: run_php
run_php:
	docker run --rm -t -v ${PWD}/binding/php:/myapp -v ${PWD}/shared:/myapp/src/shared play-with-rust-binding-php php run.php

# Python commands
.PHONY: build_python
build_python:
	docker build -t play-with-rust-binding-python -f ./binding/python/Dockerfile .

.PHONY: bash_python
bash_python:
	docker run --rm -it -v ${PWD}/binding/python:/myapp -v ${PWD}/shared:/myapp/src/shared --entrypoint /bin/bash play-with-rust-binding-python

.PHONY: run_python
run_python:
	docker run --rm -t -v ${PWD}/binding/python:/myapp -v ${PWD}/shared:/myapp/src/shared play-with-rust-binding-python python run.py

# JS commands
.PHONY: build_js
build_js:
	docker build -t play-with-rust-binding-js -f ./binding/js/Dockerfile .

.PHONY: bash_js
bash_js:
	docker run --rm -it -v ${PWD}/binding/js:/myapp -v ${PWD}/shared:/myapp/src/shared -p 127.0.0.1:8080:8080 --entrypoint /bin/bash play-with-rust-binding-js

.PHONY: run_js
run_js:
	docker run --rm -t -v ${PWD}/binding/js:/myapp -v ${PWD}/shared:/myapp/src/shared -p 127.0.0.1:8080:8080 play-with-rust-binding-js npm run node

.PHONY: run_browser_js
run_browser_js:
	docker run --rm -t -i -v ${PWD}/binding/js:/myapp -v ${PWD}/shared:/myapp/src/shared -p 127.0.0.1:8080:8080 play-with-rust-binding-js npm run serve