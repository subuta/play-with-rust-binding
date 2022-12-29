.PHONY: build_ruby
build_ruby:
	cd ./binding/ruby && docker build -t play-with-rust-binding-ruby .

.PHONY: bash_ruby
bash_ruby:
	docker run --rm -it -v ${PWD}/binding/ruby:/myapp --entrypoint /bin/bash play-with-rust-binding-ruby

.PHONY: run_ruby
run_ruby:
	docker run --rm -t -v ${PWD}/binding/ruby:/myapp play-with-rust-binding-ruby rake test