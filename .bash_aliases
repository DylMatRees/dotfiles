# ssh aliases
alias devbox="ssh -A toms@dev-toms.aws.devicp.eu"
alias selenium="ssh -A toms@selenium-202.devicp.eu"
alias talisker="ssh -A toms@talisker.devicp.eu"
alias willie="ssh -A toms@willie.devicp.eu"
alias lagler="ssh -A toms@lagler.devicp.eu"
alias chita="ssh -A toms@chita.incop.ro"
alias admin="ssh -A toms@admin.icpacs.eu"

alias personal="ssh -A tom@thomasjstevens.com"

# force tmux to assume 256color
alias tmux="tmux -2"

# start work vpn
alias start-vpn="sudo openvpn --config ~/.openvpn/client.ovpn --auth-user-pass ~/.openvpn/credentials.txt --daemon incopro-vpn"
