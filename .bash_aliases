# ssh aliases
alias devbox="ssh -A toms@dev-toms.aws.devicp.eu"
alias personal="ssh -A tom@thomasjstevens.com"

# force tmux to assume 256color
alias tmux="tmux -2"

# alias to fix ssh agent issue with tmux
alias fixssh="export $(tmux showenv SSH_AUTH_SOCK)"

# start work vpn
alias start-vpn="sudo openvpn --config /home/tom/.openvpn/client.ovpn --auth-user-pass /home/tom/.openvpn/credentials.txt --daemon incopro-vpn"
