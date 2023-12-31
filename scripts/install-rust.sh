# Check if we are on Linux or on macOS

if [ "$(uname)" == "Darwin" ]; then
    # Check if cargo is installed
    if ! command -v cargo &> /dev/null
    then
        # Install rust
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain none -y
        rustup toolchain install nightly --allow-downgrade --profile minimal
        # Add wasm32-unknown-unknown target
        rustup target add wasm32-unknown-unknown
    fi

    # Check if wasm-pack is installed
    if ! command -v wasm-pack &> /dev/null
    then
        # Install wasm-pack
        curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
    fi
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Set cargo home to CWD
    export CARGO_HOME=$PWD/.cargo
    # Check if cargo is installed
    if ! command -v cargo &> /dev/null
    then
        # Install rust
        curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path --default-toolchain none -y
    fi

    # Source rust
    source $CARGO_HOME/env

    # Install nightly
    rustup toolchain install nightly --allow-downgrade --profile minimal

    # Add wasm32-unknown-unknown target
    rustup target add wasm32-unknown-unknown

    # Check if wasm-pack is installed
    if ! command -v wasm-pack &> /dev/null
    then
        # Install wasm-pack
        curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
    fi
fi
