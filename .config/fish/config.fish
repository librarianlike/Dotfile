starship init fish | source

# rbenv
set -x PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)

# npm
set -gx PATH $PATH ~/.npm-global/bin/
