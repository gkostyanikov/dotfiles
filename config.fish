set fish_greeting
set -x PATH /usr/local/bin $PATH
#set -x PATH $HOME/repo/go/bin $PATH
#set -x PATH $HOME/repos/golang/bin $PATH
#set -x PATH $HOME/.cargo/bin $PATH
#set -x PATH /usr/local/m-cli $PATH

#set -x GOPATH $HOME/repos/golang
set -x RUST_SRC_PATH $HOME/.rust/src


set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'

. /usr/local/opt/chruby/share/chruby/chruby.sh
. /usr/local/opt/chruby/share/chruby/auto.sh

set -gx DOCKER_TLS_VERIFY "1";
set -gx DOCKER_HOST "tcp://192.168.99.100:2376";
set -gx DOCKER_CERT_PATH "/Users/gkostyanikov/.docker/machine/machines/dev";
set -gx DOCKER_MACHINE_NAME "dev";

set -g fish_escape_delay_ms 100
