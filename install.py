import sys
import os
from subprocess import PIPE, run

list_pkg = ["dust", "floorp", "neovim", "helix"]

args = sys.argv[1]

if args == "arch":
    pkg_menager = "pacman -S"
else:
    print("not implemented")
