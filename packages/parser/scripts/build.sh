if [ "$(uname)" == "Darwin" ]; then
    wasm-pack build --release
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    source $PWD/.cargo/env

    wasm-pack build --release
fi
