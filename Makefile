# Ruby commands
.PHONY: build_ruby
build_ruby:
	cd ./binding/ruby && docker build -t play-with-rust-binding-ruby .

.PHONY: bash_ruby
bash_ruby:
	docker run --rm -it -v ${PWD}/binding/ruby:/myapp --entrypoint /bin/bash play-with-rust-binding-ruby

.PHONY: run_ruby
run_ruby:
	docker run --rm -t -v ${PWD}/binding/ruby:/myapp play-with-rust-binding-ruby rake test

# PHP commands
.PHONY: build_php
build_php:
	cd ./binding/php && docker build -t play-with-rust-binding-php .

.PHONY: bash_php
bash_php:
	docker run --rm -it -v ${PWD}/binding/php:/myapp --entrypoint /bin/bash play-with-rust-binding-php

.PHONY: run_php
run_php:
	docker run --rm -t -v ${PWD}/binding/php:/myapp play-with-rust-binding-php php run.php