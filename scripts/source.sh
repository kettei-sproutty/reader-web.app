if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    source $CARGO_HOME/env
fi
