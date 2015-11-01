eval "$(rbenv init -)"
export PATH=$PATH:~/bin
SOURCE_DIR=~/env/zsh/
source "$SOURCE_DIR/checks.zsh"
source "$SOURCE_DIR/colors.zsh"
source "$SOURCE_DIR/setopt.zsh"
source "$SOURCE_DIR/exports.zsh"
source "$SOURCE_DIR/completion.zsh"
source "$SOURCE_DIR/prompt.zsh"
source "$SOURCE_DIR/aliases.zsh"
source "$SOURCE_DIR/functions.zsh"
source "$SOURCE_DIR/history.zsh"
source "$SOURCE_DIR/zsh_hooks.zsh"
source "$SOURCE_DIR/zsh_hooks.zsh"
source "$SOURCE_DIR/docker.zsh"

#eval "$(boot2docker shellinit)"

#. ~/env/z/z.sh