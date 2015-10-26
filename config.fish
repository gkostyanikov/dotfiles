set fish_greeting
set -x PATH /usr/local/bin $PATH
set -x RBENV_ROOT /usr/local/var/rbenv
set -x PATH $HOME/repo/go/bin $PATH
set -x PATH $HOME/repos/golang/bin $PATH

set -x DOCKER_HOST tcp://boot2docker:2376
set -x DOCKER_CERT_PATH $HOME/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1

set -x GOPATH $HOME/repos/golang
set -x FZF_DEFAULT_COMMAND 'ag -l -g ""'
