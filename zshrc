# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Hide the user@hostname info when you’re logged in as yourself on your local machine.
DEFAULT_USER="oleksandrshtykhno"
prompt_context(){}

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git scala sbt kubectl fzf
)

source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="vim"
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

#
# Aliases
#
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias scala="scala -Dscala.color=true"
alias dkrm='docker rm $(docker ps -a -q)'
alias dkrmi='docker rmi $(docker images -q)'
alias dkkill='docker kill $(docker ps -q)'
alias dka='docker ps -a'
alias dkc='dkkill;dkrm'

#
# JAVA
#
export JAVA_HOME=`/usr/libexec/java_home -v '11'`

#
# History
#
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks   # remove superfluous blanks from history items
setopt inc_append_history   # save history entries as soon as they are entered
setopt share_history        # share history between different instances of the shell
setopt auto_cd              # cd by typing directory name if it's not a command
setopt correct_all          # autocorrect commands
setopt auto_list            # automatically list choices on ambiguous completion
setopt auto_menu            # automatically use menu completion
setopt always_to_end        # move cursor to end if word had one match

#
# FZF
#
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

#
# Syntax
#
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
