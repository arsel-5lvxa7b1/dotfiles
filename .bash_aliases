alias sudo='sudo '
alias ll='ls -alFh'
alias ports='sudo ss -plunt | zebra'
alias n='nnn -c'
alias ufws='sudo ufw status verbose'
alias rsyncp='rsync -ah --partial --info=progress2'
alias rsyncw='rsync -avh --whole-file'
alias bat='batcat'

# apt
alias apti='sudo apt install'
alias aptr='sudo apt remove'
alias aptp='sudo apt purge'
alias aptu='sudo apt update'
alias aptuu='sudo apt update && sudo apt upgrade'
alias apts='apt search'
alias aptar='sudo apt autoremove'
alias aptac='sudo apt autoclean'
alias aptli='apt list --installed'
alias aptlu='apt list --upgradable'

# Systemd
alias sctl='sudo systemctl'
alias jctl='journalctl'
alias sctlup='sudo systemctl start'
alias sctldown='sudo systemctl stop'
alias sctlstat='sudo systemctl status'
alias sctlrst='sudo systemctl restart'
alias sctlrld='sudo systemctl reload'

# Minecraft
alias mcrun='sudo systemctl start minecraft'
alias mcstop='sudo systemctl stop minecraft'
alias mclog='journalctl -u minecraft -o cat -e'
alias mclogf='journalctl -f -u minecraft -o cat'
alias mcstatus='systemctl status minecraft'
alias mceditprops='vi /home/arsel/mc/server/server.properties'

# Docker
alias d='sudo docker'
alias dc='sudo docker compose'
