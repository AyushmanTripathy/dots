#
# ~/.bash_profile
#

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.local/cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export EDITOR="nvim"
export BROWSER="chromium"
export USERNAME="ayush"
export GITHUB_USERNAME="AyushmanTripathy"
export MUSICDB="$HOME/music"
export WALLPAPER="$XDG_DATA_HOME/wallpaper.txt"

# hist files
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history.sql"
export PYTHON_HISTORY="$XDG_DATA_HOME/python_history"
export LESSHISTFILE=-
export HISTFILE="$XDG_DATA_HOME/.bash_history"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"

export NVM_DIR="$XDG_DATA_HOME/nvm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npmrc"

#export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
#export XAUTHORITY="$XDG_CONFIG_HOME/X11/xauthority"

export PATH="$PATH:$HOME/.local/bin:$XDG_DATA_HOME/npm/bin/"
export PATH="$PATH:$HOME/bin"

# for kitty
[ -z "$KITTY_WINDOW_ID" ] && [[ -f ~/.bashrc ]] && . ~/.bashrc

[ -f .deno/env ] && sh .deno/env
startx $XDG_CONFIG_HOME/X11/xinitrc
