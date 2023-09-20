if [ "$(uname)" == "Darwin" ]; then
    wasm-pack build --release
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    export CARGO_HOME=/vercel/path0/.cargo

    cargo install wasm-pack

    wasm-pack build --release
fi
