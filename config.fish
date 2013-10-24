set -x PATH /usr/local/bin $PATH
set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.rbenv/shims 
set -x PATH $HOME/repo/go/bin $PATH
set -x GOPATH $HOME/repo/go
rbenv rehash >/dev/null ^&1
