# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME=powerlevel10k/powerlevel10k # https://github.com/romkatv/powerlevel10k
POWERLEVEL9K_MODE="nerdfont-complete" # https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack/Regular/complete

# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" _ "
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="  "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" ❯ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_TRANSIENT_PROMPT=always

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(     
    os_icon             # Your OS logo (apple for macOS, swirl for debian, etc.).
    status              # Exit code of the last command.
    root_indicator      # An indicator if the user has superuser status.
    ssh                 # Indicates whether or not you are in an SSH session.
    dir_writable        # Displays a lock icon, if you do not have write permissions on the current folder.
    dir                 # Your current working directory.
    vcs                 # Git repository status.
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    background_jobs         # Presence of background jobs.
    command_execution_time  # Duration (wall time) of the last command.
    battery                 # Internal battery state and charge level (yep, batteries literally included).
)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    colored-man-pages
    colorize
    git
    ng
    npm
    sudo
    web-search
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# @German: lista de aliases personales.
alias nf="neofetch"

alias ls="lsd --all --icon-theme fancy --color always --group-dirs first"
alias lsx="lsd --all --long --icon-theme fancy --total-size --color always --group-dirs first"

alias dotfiles-init="git init --bare $HOME/.dotfiles"
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# @German: ésto evita que tilix arroje un error al inicio. Más info en: https://github.com/gnunn1/tilix/wiki/VTE-Configuration-Issue
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# @German: requerido para nvm.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# @German: requerido para Starship Cross-Shell Prompt.
# eval "$(starship init zsh)"

# @German: Nord theme dircolors.
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)