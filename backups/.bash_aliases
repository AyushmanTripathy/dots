# ALIAS
alias vim='nvim'
alias du='du -h'
alias lsc='ls -1 | wc -l'
alias scss='scss --no-cache'
alias src='source ~/.bashrc'
alias mysql='mysql -u root -p'
alias xclip="xclip -sel clip"
alias svelte-init='npm init svelte@next'
alias live-server='live-server --no-browser'
alias nodemon='nodemon -I'
alias quote='printf "\n$(sort -R ~/quotes.txt | head -n1)\n"'

alias edex="$HOME/.local/share/edex/AppRun"
alias mocp="mocp -M $XDG_CONFIG_HOME/moc"
alias startx="startx $XDG_CONFIG_HOME/X11/xinitrc"

# cd command
alias ..='cd ..'
alias cdb='cd ~/.local/bin'
alias cdc='cd ~/.config'
alias cdl='cd ~/.local'
alias cdls='cd ~/.local/src'
alias cdcn='cd ~/.config/nvim'
alias cdt='cd ~/tmp'
alias cdm='cd ~/music'
alias cdd="cd ~/Downloads"

alias reboot='echo "sure you wanna do that?" && read $NULL && reboot' 
alias shutdown='echo "sure you wanna do that?" && read $NULL && shutdown now'
alias poweroff='echo "sure you wanna do that?" && read $NULL && systemctl poweroff'

alias emoji='emoji=$(cat ~/.config/emojis.txt | fzf | cut -f1); \
echo $emoji | xclip -sel clip; echo $emoji;'
alias rm-tmp="rm -rf $HOME/tmp; mkdir $HOME/tmp"
