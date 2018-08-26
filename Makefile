clean:
	rm -rf target

debug:
	cargo run

dev:
	cargo build

release:
	cargo build --release
