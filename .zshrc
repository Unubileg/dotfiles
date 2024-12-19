# Set the path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set the theme for oh-my-zsh
ZSH_THEME="robbyrussell"

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load zoxide (https://github.com/ajeetdsouza/zoxide)
eval "$(zoxide init zsh)"

# Define aliases for zoxide directory navigation
z() {
    local result
    if [[ "$#" -eq 0 ]]; then
        cd ~
    else
        result="$(command zoxide query --exclude "$(pwd)" -- "$@")"
        [[ -n "$result" ]] && cd "$result"
    fi
}

zi() {
    local result
    result="$(command zoxide query --interactive -- "$@")"
    [[ -n "$result" ]] && cd "$result"
}

# Load NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Load nvm bash_completion

# Load Starship prompt (https://starship.rs/)
eval "$(starship init zsh)"

