
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export PATH=$HOME/.cargo/bin:$HOME/bin:$HOME/bin/ccache:$HOME/.node_modules/bin:$HOME/opt/jlink:/home/$HOME/public/clojurescript/bin:/usr/share/java/apache-ant/bin:/opt/android-ndk/:~/bin/:/home/$HOME/public/clojurescript/bin:/usr/share/java/apache-ant/bin:/opt/android-ndk/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/android-ndk:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:/opt/vmware/bin:/opt/qcom/qik/bin:/opt/qcom/qpm/bin:$PATH

unalias cp
unalias rm
unalias mv

alias date='/usr/bin/date --rfc-3339=seconds'
alias -s xml=vim
alias -s c=vim
alias -s h=vim
alias -s py=python2
alias -s conf=vim
alias grep='grep --color=auto --perl-regexp'
alias rgrep='grep --recursive --exclude="cscope.*"'
alias fgrep='fgrep --color=auto'

alias ssh='TERM=xterm-256color ssh'

alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias cat='bat'
alias ping='prettyping --nolegend'
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias help='tldr'
export EDITOR="nvim"
export GIT_EDITOR="nvim"

export HISTSIZE=10000
export SAVEHIST=10000
export HIST_IGNORE_SPACE=1

export GLOG_logtostderr="1"

export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

export LESSOPEN="| source-highlight-esc.sh %s"
export LESS='-R '

export QT_QPA_PLATFORMTHEME="qt5ct"

unset GREP_OPTIONS

export KISYSMOD="/usr/share/kicad/footprints"
export KISYS3DMOD="/usr/share/kicad/modules/packages3d"

export PYTHONPATH="/home/$HOME/pub/PyCortexMDebug:${PYTHONPATH}"
export PYTHONIOENCODING=utf8

export ANDROID_HOME=$HOME/Android/Sdk

export NDK_HOST_SED=/usr/bin/sed
export GROFF_NO_SGR=1

eval $(dircolors ~/.dir_colors)

export MENUCONFIG_COLOR=blackbg

export GNUTERM=x11

export NIXPKGS=/home/$HOME/nixpkgs
export NIXDIR=/home/$HOME/nixpkgs

export GOPATH=$HOME/go
export GOROOT=/usr/lib/go

export XKB_DEFAULT_OPTIONS=ctrl:nocaps

source $HOME/.profile

[ -f ~/.skim.zsh ] && source ~/.skim.zsh
export SKIM_DEFAULT_COMMAND="git ls-tree -r --name-only HEAD || rg --files || find ."

alias ls="exa"
alias ll="exa --long --git --color-scale --sort modified -g -m -h --time-style long-iso --extended"
alias lls="exa --long --git --color-scale --sort size -g -m -h --time-style long-iso --extended"
alias lla="exa --all --long --git --color-scale --sort size -g -m -h --time-style long-iso --extended"
alias llt="exa --long --git --color-scale --sort size -g -m -h --time-style long-iso --extended --tree"
alias lln="exa --long --git --color-scale -g -m -h --time-style long-iso --extended"

export npm_config_prefix=~/.node_modules

export PATH="/opt/osxcross/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"

set +o noclobber

eval "$(direnv hook zsh)"
eval $(starship init zsh)

