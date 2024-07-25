
# bashrc

# Write the following line near the top of .bashrc
[[ $- == *i* ]] &&
  source "$HOME/.local/share/blesh/ble.sh" --rcfile "$HOME/.blerc"


# Write the following line at the bottom of .bashrc
[[ ${BLE_VERSION-} ]] && ble-attach
source ~/.local/share/blesh/ble.sh
eval "$(starship init bash)"
. "$HOME/.cargo/env"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"

# Created by `pipx` on 2024-07-15 13:40:50
export PATH="$PATH:/home/konbor/.local/bin"
