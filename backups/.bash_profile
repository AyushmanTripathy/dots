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

# package specific
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME/docker-machine"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"

# hist files
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history.sql"
export PYTHON_HISTORY="$XDG_DATA_HOME/python_history"
export LESSHISTFILE=-
export HISTFILE="$XDG_DATA_HOME/.bash_history"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"

export IS_THINKPAD=1

export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CLAUDE_CONFIG_DIR="$XDG_CONFIG_HOME/claude"
export GEMINI_CONFIG_DIR="$XDG_CONFIG_HOME/gemini"
export BUN_INSTALL="$XDG_DATA_HOME/bun"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npmrc"
export _JAVA_OPTIONS=-Djavafx.cachedir="$XDG_CACHE_HOME"/openjfx

#export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
#export XAUTHORITY="$XDG_CONFIG_HOME/X11/xauthority"
export PATH="$PATH:$HOME/.local/app_images:$HOME/.local/bin:$XDG_DATA_HOME/npm/bin/"
export PATH="$PATH:$HOME/bin"

# for kitty
[ -z "$KITTY_WINDOW_ID" ] && [[ -f ~/.bashrc ]] && . ~/.bashrc

#[ -f .deno/env ] && sh .deno/env
startx $XDG_CONFIG_HOME/X11/xinitrc
