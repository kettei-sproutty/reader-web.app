set +e

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    ls $HOME
    source $HOME/.bashrc

    source $CARGO_HOME/env
fi
