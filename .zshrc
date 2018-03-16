echo "\n💾  Loading Common ZSH Script \n"

# echo "\n💾  Loading ENV vars"
# [[ -s "$DOTFILES_PATH/.env" ]] && source "$DOTFILES_PATH/.env"
# echo "✔️ Done. \n"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# if [ -z "$ZSH" ]; then
#     export ZSH=/Shared/tref/.oh-my-zsh
#     # exit 1
# fi  

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  colorize
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='subl'
else
  export EDITOR='subl'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


if [[ -s "$NVM_DIR/nvm.sh" ]]; then
  echo "\n💾  Loading RVM from $HOME/.nvm"
  # This loads nvm
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  # This loads nvm bash_completion
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  
  echo "✔️ Done."
else
  echo "Can't find RVM loading script at $NVM_DIR/nvm.sh"
fi

echo "\n"

# if [[ -s "$ZSH_CONFIG_USER" ]]; then
#   echo "\n💾  Loading User Config $ZSH_CONFIG_USER"
#   source "$ZSH_CONFIG_USER"
#   echo "✔️ Done."
# else 
#   echo "User specific zsh config not found"
# fi

echo "\n"

if [[ -s "$USER_ALIASES" ]]; then
  echo "\n💾  Loading User Aliases"
  source "$USER_ALIASES" 
  echo "✔️ Done."
else
  echo "User aliases not loaded"
fi

echo "\n"

if [[ -s "$DOTFILES_PATH/iTerm/iTerm2colors.sh" ]]; then
  echo "\n💾  Loading iTerm Colors"
  source "$DOTFILES_PATH/iTerm/iTerm2colors.sh"
  echo "✔️ Done."
else
  echo "❌ iTerm colors not loaded"
fi

echo "\n🎸 🎸 🎸 🎸 READYTOROCK 🔥 🔥 🔥 🔥 \n"
