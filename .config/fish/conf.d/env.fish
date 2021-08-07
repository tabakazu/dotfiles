# EDITOR
set -x EDITOR vim

# PATH
set -x GOPATH $HOME/go
set -x PATH "$PATH:$GOPATH/bin"
set -x RUSTPATH $HOME/.cargo/
set -x PATH "$PATH:$RUSTPATH/bin"
