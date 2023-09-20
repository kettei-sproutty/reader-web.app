set +e

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    ls $HOME/path0

    source $CARGO_HOME/env
fi
