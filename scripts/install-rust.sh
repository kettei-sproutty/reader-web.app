if ! command -v rustc &> /dev/null
then
    echo "rustc could not be found"
    amazon-linux-extras install rust1
    echo "Done"
fi

if ! command -v wasm-pack &> /dev/null
then
    echo "wasm-pack could not be found"
    curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
    echo "Done"
fi
