# ssh aliases
alias devbox="ssh -A toms@dev-toms.aws.devicp.eu"
alias personal="ssh -A tom@thomasjstevens.com"

# force tmux to assume 256color
alias tmux="tmux -2"

# start work vpn
alias start-vpn="sudo openvpn --config /home/tom/.openvpn/client.ovpn --auth-user-pass /home/tom/.openvpn/credentials.txt --daemon incopro-vpn"
