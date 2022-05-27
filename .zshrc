# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/xiaochao.gong/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
  zsh-autosuggestions
  last-working-dir
  tmux
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
#

export PATH=$PATH:~/code/llvm/bin:~/code/cmodel/bazel-bin/app:~/code/cmodel/bazel-bin/app/debugger

export TERM=xterm-256color



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/xiaochao.gong/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/xiaochao.gong/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/xiaochao.gong/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/xiaochao.gong/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export LC_ALL=en_US.UTF-8 

export LANG=en_US.UTF-8

#############################################
#alias idfm="idf.py menuconfig"
#alias idfb="idf.py build"
#alias idff="idf.py flash"
#alias idffm="idf.py flash monitor"
#alias idft="idf.py monitor"
#alias idfc="idf.py clean"

#export PATH=$PATH:~/code/llvm/build/bin
#export PATH="$PATH:$HOME/code/esp/xtensa-esp32-elf/bin"
#export PATH="$PATH:$HOME/code/esp/xtensa-esp32s2-elf/bin"
#export PATH="$PATH:$HOME/code/esp/crosstool-NG/builds/xtensa-lx7_ai-elf/bin"
#export IDF_PATH="$HOME/code/esp/esp-idf"
##export IDF_PATH="$HOME/code/esp/esp32-s2beta-hmi/tools/esp-idf"
##export IDF_PATH="$HOME/code/esp/esps2-idf"
##export IDF_PATH="$HOME/code/esp/fpga_idf/esp-idf"
#export OPENOCD_PATH="/home/gongxiaochao/code/esp/openocd-esp32"

## added by Anaconda3 installer
#export PATH="/home/gongxiaochao/anaconda3/bin:$PATH"

#export PATH="/home/gongxiaochao/Downloads/pycharm-community-2018.2.1/bin:$PATH"
#export PATH="/home/gongxiaochao/code/esp/openocd-esp32/bin:$PATH"
#export PATH="$PATH:$IDF_PATH/tools"

##<<< for risc-v vp
#export PATH=$PATH:/home/gongxiaochao/code/riscv/riscv-gnu-toolchain-dist-rv32imac-ilp32/bin
#export PATH=$PATH:/home/gongxiaochao/code/riscv/riscv-vp/vp/build/bin
#export LD_LIBRARY_PATH=/opt/systemc/lib:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/home/gongxiaochao/code/nvdla/hw/outdir/nv_esp_256/cmod/release/lib:$LD_LIBRARY_PATH

##>>> for risc-v vp

#export PULP_RISCV_GCC_TOOLCHAIN=/home/gongxiaochao/riscv
#export VSIM_PATH=/home/gongxiaochao/code/pulp/pulp/sim

## <<< for protobuf
#export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/anaconda3/envs/tensorflow/include
#export LIBRARY_PATH=$LIBRARY_PATH:$HOME/anaconda3/envs/tensorflow/lib
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/anaconda3/envs/tensorflow/lib
## >>> for protobuf
#############################################
