
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="/Users/ethan/.local/share/solana/install/active_release/bin:$PATH"
. "$HOME/.cargo/env"

. "$HOME/.local/bin/env"
