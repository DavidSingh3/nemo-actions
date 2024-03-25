#!/home/david/miniforge3/envs/inspect-dflimg/bin/python

import sys
from pprint import pp
from colorama import Fore
from typing import Union
from DFLObjects import DFLIMG, DFLJPG

for path in sys.argv[1:]:
    dfl_img = DFLIMG.load(path)
    if dfl_img is None:
        print(f"{Fore.RED}Not a DFLIMG: {path}{Fore.RESET}")

    print(f"DFLIMG: {Fore.GREEN}{path}{Fore.RESET}\n")
    for k, v in dfl_img.dfl_dict.items():
        print(f"{Fore.BLUE}{k}{Fore.RESET}:")
        pp(v)
        print("\n")

    print("\n\n\n")
