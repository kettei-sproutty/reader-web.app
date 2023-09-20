if ! command -v rustup &> /dev/null
then
    echo "rustup could not be found"
    amazon-linux-extras install rust1
    which rustup
    /usr/bin/cargo --help

    if ! command -v wasm-pack &> /dev/null
    then
        echo "wasm-pack could not be found"
        curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
        echo "Done"
    fi

    echo "Done"
fi

