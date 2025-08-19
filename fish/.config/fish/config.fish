if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PATH $HOME/.asdf/bin $PATH
set -x PATH $HOME/.asdf/shims $PATH
source ~/.asdf/asdf.fish
set -gx PATH $HOME/.cargo/bin $PATH

# vim mode
function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in
    fish_default_key_bindings -M insert

    # Then execute the vi-bindings so they take precedence when there's a conflict.
    # Without --no-erase fish_vi_key_bindings will default to
    # resetting all bindings.
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings --no-erase insert
end

# aliases
#alias code='flatpak run com.visualstudio.code'
alias cat="bat --style=auto"
alias ls="exa -l --icons"
alias hibernate='echo "Hibernating..."; gnome-screensaver-command -l; sudo systemctl hibernate;'
alias go-reshim='asdf reshim golang && export GOROOT="$(asdf where golang)/go/"'

export VISUAL=nvim
export EDITOR=nvim

set -gx WLR_NO_HARDWARE_CURSORS 1

fish_add_path /home/quiron/.local/bin
fish_add_path /opt/bin
fish_add_path ~/go/bin
fish_add_path ~/.asdf/installs/rust/1.75.0/bin
fish_add_path /home/quiron/.asdf/installs/golang/1.22.4/packages/bin


#goidc local
set -gx TELEMETRY_RETRY_INITIAL_INTERVAL 1000
set -gx TELEMETRY_SERVICE_NAME goidc
set -gx TELEMETRY_RETRY_ENABLED true
set -gx TELEMETRY_RETRY_MAX_ELAPSED_TIME 10000
set -gx MEMCACHE_POLLING_DURATION 0
# set -gx GOOGLE_APPLICATION_CREDENTIALS ./resources/gglobo-gid-authn-qa-hdg-dev.json
set -gx DBAAS_MONGODB_NAME goidc
set -gx TELEMETRY_SAMPLING_RATE 1
set -gx TELEMETRY_ENDPOINT localhost:4318
set -gx DBAAS_MONGODB_ENDPOINT mongodb://goidc_user:goidc_pass@localhost:27017/
set -gx MEMCACHE_TIMEOUT 5
set -gx MEMCACHE_HOST localhost:11211
set -gx TELEMETRY_RETRY_MAX_INTERVAL 5000
set -gx GOPRIVATE gitlab.globoi.com 
set -gx GOINSECURE "gitlab.globoi.com/*"

# password on electron apps using gnome keyring
set -gx XDG_CURRENT_DESKTOP "GNOME"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-cli/path.fish.inc' ]; . '/opt/google-cloud-cli/path.fish.inc'; end
