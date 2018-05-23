export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
NPM_PACKAGES="${HOME}/.npm"
export NODE_PATH=$NPM_PACKAGES/lib/node_modules:$NODE_PATH
export PATH=$PATH:$HOME/bin:/home/jenni/.gem/ruby/*/bin:/var/lib/snapd/snap/bin:$NPM_PACKAGES/bin
export MANPATH=$NPM_PACKAGES/share/man:$MANPATH
export SUDO_EDITOR=rvim
# Path to your oh-my-zsh installation.
export ZSH=/home/susw12/.oh-my-zsh


zsh_wifi_signal(){
         local signal=$(nmcli -t device wifi | grep '^*' | awk -F':' '{print $6}')
     local color="yellow"
     [[ $signal -gt 75 ]] && color="green"
     [[ $signal -lt 50 ]] && color="red"
     echo -n "%F{$color}\uf1eb" # \uf1eb is 
 }


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

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
COMPLETION_WAITING_DOTS="true"

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


autoload -U compinit && compinit

plugins=(git ssh zsh-completions)

term_emulator=$(ps -p $(ps -p $$ -o ppid=) -o args==)

plugins+=(zsh-autosuggestions)
  
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=" %% " #↳

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(docker_machine status root_indicator background_jobs time)

POWERLEVEL9K_TIME_FORMAT="%D{%T \uF017}" #  15:29:33
POWERLEVEL9K_TIME_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_TIME_BACKGROUND="$DEFAULT_BACKGROUND"

POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='105' #182

POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='027' #blue
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='015' #white 
POWERLEVEL9K_DIR_HOME_BACKGROUND='002' #green
POWERLEVEL9K_DIR_HOME_FOREGROUND=$POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='007' #007
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='027'

POWERLEVEL9K_VCS_GIT_GITHUB_ICON=""
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=""
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=""
POWERLEVEL9K_VCS_GIT_ICON=""

POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_EXECUTION_TIME_ICON="\u23F1"
 
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0

POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="$DEFAULT_FOREGROUND"

POWERLEVEL9K_USER_ICON="\uF415" # 
POWERLEVEL9K_USER_DEFAULT_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_USER_DEFAULT_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_USER_ROOT_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_USER_ROOT_BACKGROUND="$DEFAULT_BACKGROUND"

POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="magenta"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$(( $DEFAULT_BACKGROUND - 2 ))"
POWERLEVEL9K_ROOT_ICON=$'\uFF03' # ＃
POWERLEVEL9K_ROOT_ICON=$'\uF198'  # 

POWERLEVEL9K_SSH_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_SSH_FOREGROUND="yellow"
POWERLEVEL9K_SSH_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_SSH_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"
POWERLEVEL9K_SSH_BACKGROUND="$(( $DEFAULT_BACKGROUND - 2 ))"
POWERLEVEL9K_SSH_ICON="\uF489"  # 
POWERLEVEL9K_HOST_LOCAL_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_HOST_LOCAL_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_HOST_REMOTE_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_HOST_REMOTE_BACKGROUND="$DEFAULT_BACKGROUND"
 
POWERLEVEL9K_HOST_ICON_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_HOST_ICON_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_HOST_ICON="\uF109" # 
POWERLEVEL9K_OS_ICON_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_OS_ICON_BACKGROUND="$DEFAULT_BACKGROUND"


source $ZSH/oh-my-zsh.sh


OS_ICON='\uF300' #arch linux

if [[ "$term_emulator" == *gnome-terminal* ]]; then
  bindkey '^ ' autosuggest-accept
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'
fi

#if [ "$TERM" != "xterm-256color" ]; then 
#  PS1='%B%F{red}%(?..%?|)%f%b%B%F{magenta}%n%f%b@%m %B%40<..<%~%<< %b$(git_prompt_info)%# '
#fi


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

if type dircolors >/dev/null ; then
	# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
	LS_COLORS=
	if [[ -f ~/.dir_colors ]] ; then
		# If you have a custom file, chances are high that it's not the default.
		used_default_dircolors="no"
		eval "$(dircolors -b ~/.dir_colors)"
	elif [[ -f /etc/DIR_COLORS ]] ; then
		# People might have customized the system database.
		used_default_dircolors="maybe"
		eval "$(dircolors -b /etc/DIR_COLORS)"
	else
		used_default_dircolors="yes"
		eval "$(dircolors -b)"
	fi
	if [[ -n ${LS_COLORS:+set} ]] ; then
		use_color=true
	fi
	unset used_default_dircolors
fi


alias lsblk-m='lsblk -o NAME,TYPE,FSTYPE,SIZE,MODEL,LABEL,UUID,MOUNTPOINT,STATE'
alias think='fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat'
alias grep="grep --color"
alias fgrep="fgrep --color"

alias cp='cp -v'

mtenc() {
  
  local encrypted_dir="$HOME/Documents/.secure-encrypted"
  local access_dir="$HOME/Documents/Private"
  mkdir $access_dir
  
  if [ ! -z "$(ls -A $access_dir)" ]; then
    echo "$(tput setaf 1)$access_dir is already populated.$(tput sgr0)" >&2
    return 1
  fi
  
  alias lkenc="fusermount -u $access_dir && rmdir $access_dir && unalias lkenc"
  encfs $encrypted_dir $access_dir && printf "%s\n%s\n" "Mounted $encrypted_dir at $access_dir", "To unmount: $(tput bold)lkenc$(tput sgr0) (Exiting this shell will clear the alias)"
}
#if [[ "$term_emulator" == *gnome-terminal* ]] || [[ "$term_emulator" == *xfce4-terminal* ]]; then 
#OLD_LS_COLORS=$LS_COLORS
#LS_COLORS=$(ls_colors_generator)

#run_ls() {
#	ls-i --color=auto -w $(tput cols) "$@"
#}
#
#run_dir() {
#	dir-i --color=auto -w $(tput cols) "$@"
#}
#
#run_vdir() {
#	vdir-i --color=auto -w $(tput cols) "$@"
#}
#alias ls="run_ls"
#alias dir="run_dir"
#alias vdir="run_vdir"
#alias nls='LS_COLORS=$OLD_LS_COLORS ls'

#fi

alias wttr='curl wttr.in/New_York\?m'
