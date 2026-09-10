#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vim='nvim'
alias clear='clear && source ~/.bashrc'
alias vpn='sudo openconnect https://v340352.hosted-by-vdsina.com:8443'
alias ls='ls --color=auto'
alias home='cd ~' 
alias dockerstart="sudo systemctl start --now docker"
# alias lyq='cd ~/Документы/Dev/lyq/src/'
alias lyqback='dotnet run --project ~/Документы/Dev/lyq/src/LYQ.BackOffice/'
alias lyqscheduler='dotnet run --project ~/Документы/Dev/lyq/src/LYQ.Scheduler/ -- --environment Development'
alias lyqmigration='dotnet run --project ~/Документы/Dev/lyq/src/LYQ.Migrator/'
alias lyqfront='cd ~/Документы/Dev/lyq/src/LYQ.BackOffice/ClientApp/ && npm run vite'
alias grep='grep --color=auto'
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
fastfetch

PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;35m\] ❯\[\033[00m\] '

eval "$(zoxide init --cmd cd bash)"
