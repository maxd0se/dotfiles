# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/charlesragland/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="powerlevel10k/powerlevel10k"
#POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=">"
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="↳ "
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_LEFT_PROMPt_ELEMENTS=(context dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
#POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='#000000'
#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='046'
#POWERLEVEL9K_DIR_HOME_BACKGROUND='black'
#POWERLEVEL9K_DIR_HOME_FOREGROUND='046'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='007'
#POWERLEVEL9K_TIME_BACKGROUND='black'
#POWERLEVEL9K_TIME_FOREGROUND='046'
#POWERLEVEL9K_STATUS_OK_BACKGROUND='black'
#POWERLEVEL9K_STATUS_OK_FOREGROUND='046'
#POWERLEVEL9K_STATUS_ERROR_BACKGROUND='001'
#POWERLEVEL9K_STATUS_ERROR_FOREGROUND='007'
#POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery)
POWERLEVEL9K_CONTEXT_TEMPLATE=$'\ue795 %n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='201'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='017'
POWERLEVEL9K_DIR_HOME_FOREGROUND='044'
POWERLEVEL9K_DIR_HOME_BACKGROUND='025'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='044'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='025'
POWERLEVEL9K_DIR_ETC_FOREGROUND='044'
POWERLEVEL9K_DIR_ETC_BACKGROUND='025'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='044'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='025'
POWERLEVEL9K_STATUS_OK_BACKGROUND='017'
POWERLEVEL9K_HISTORY_BACKGROUND='013'
POWERLEVEL9K_HISTORY_FOREGROUND='044'
POWERLEVEL9K_TIME_BACKGROUND='201'
POWERLEVEL9K_TIME_FOREGROUND='255'
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
ZSH_AUTOSUGGEST_STRATEGY="history"
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws python macos zsh-autosuggestions)

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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/charlesragland/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/charlesragland/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/charlesragland/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/charlesragland/google-cloud-sdk/completion.zsh.inc'; fi
