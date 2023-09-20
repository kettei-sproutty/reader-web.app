if [ "$(uname)" == "Darwin" ]; then
    wasm-pack build --release
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo $CARGO_HOME
    export CARGO_HOME=/vercel/path0/.cargo
    echo $CARGO_HOME
    source $CARGO_HOME/env

    wasm-pack build --release
fi
