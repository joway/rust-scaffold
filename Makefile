clean:
	rm -rf target

debug:
	cargo run

dev:
	cargo build

release:
	cargo build --release

image:
	docker build . -t rust-scaffold:v1
