# ALIAS
alias vim='nvim'
alias lsc='ls -1 | wc -l'
alias src='source ~/.bashrc'
alias quote='printf "\n$(sort -R ~/quotes.txt | head -n1)\n"'
alias gitlog='git log --all --decorate --graph --oneline'
alias tree='tree --gitignore'

alias open="xdg-open"
alias du='du -h'
alias df='df -h'
alias progress='progress -m'
alias scss='scss --no-cache'
alias mysql='mysql -u root -p'
alias nodemon='nodemon -I'
alias live-server='live-server --no-browser'
alias xclip="xclip -sel clip"
alias hist="history | tac | dmenu -l 20 | cut -b 8- | xclip -sel c"
alias edex="$HOME/.local/share/edex/AppRun"
alias mocp="mocp -M $XDG_CONFIG_HOME/moc"
alias clang-format="clang-format -i --style=Google"
alias startx="startx $XDG_CONFIG_HOME/X11/xinitrc"
alias rename-seq='ls -v | cat -n | while read n f; do mv -n "$f" "$n"; done'

# cd command
alias ..='cd ..'
alias cdp='cd ~/projects'
alias cdpp='cd ~/projects && cd $(find . -maxdepth 1 -type d | fzf)'
alias cdb='cd ~/.local/bin'
alias cdl='cd ~/.local'
alias cdls='cd ~/.local/src'
alias cdld="cd $XDG_DATA_HOME"
alias cdldh="cd $XDG_DATA_HOME/help"
alias cdc="cd $XDG_CONFIG_HOME"
alias cdcn="cd $XDG_CONFIG_HOME/nvim"
alias cdt='cd ~/tmp'
alias cdm="cd $HOME/music"
alias cdn="cd $HOME/notes"
alias cdnc="cd $HOME/notes/cs"
alias cdnd="cd $HOME/notes/dsa"
alias cdnn="cd $HOME/notes/networks"
alias cdnl="cd $HOME/notes/linux"
alias cdd="cd $HOME/dl"

alias reboot='echo "sure you wanna do that?" && read $NULL && reboot' 
alias shutdown='echo "sure you wanna do that?" && read $NULL && shutdown now'
alias poweroff='echo "sure you wanna do that?" && read $NULL && systemctl poweroff'
alias rm-swp="rm $HOME/.local/state/nvim/swap/*"
alias rm-tmp="rm -rf $HOME/tmp; mkdir $HOME/tmp"
