if [ "$(uname)" == "Darwin" ]; then
  export CARGO_HOME=$HOME/.cargo

  wasm-pack build --release
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  export CARGO_HOME=$PWD/.cargo

  wasm-pack build --release
fi
