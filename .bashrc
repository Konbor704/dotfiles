
# bashrc

# Write the following line near the top of .bashrc
[[ $- == *i* ]] &&
  source "$HOME/.local/share/blesh/ble.sh" --rcfile "$HOME/.blerc"


# Write the following line at the bottom of .bashrc
[[ ${BLE_VERSION-} ]] && ble-attach
source ~/.local/share/blesh/ble.sh
eval "$(starship init bash)"
. "$HOME/.cargo/env"
