#!/bin/python3

import argparse
import json
from random import choice

from core.utils import *
from pyfiglet import figlet_format

CHOICE = ['java', 'python', 'nc', 'ruby',
          'bash', 'perl', 'php', 'telnet',
          "powershell", "awk", "node", "tclsh"
          ]

COLORS = [91,92,93,94,95,96]

def options():
    parser = argparse.ArgumentParser()
    parser.add_argument("lhost", help='Specify local host ip')
    parser.add_argument("lport", default=8080, help="Specify a local port")
    parser.add_argument('-sh', help="Specify the language to generate the reverse shell",
                        default='bash')

    args = parser.parse_args()

    return args


def getcmd(shell, lhost, lport):
    with open("core/shell.json", 'r') as f:
        data = json.load(f)
    for sh in data[shell]:
        cmd = sh.replace("[IPADDR]", lhost)
        cmd = cmd.replace("[PORT]", lport)
        colors("\n[+] {}".format(cmd), choice(COLORS))


def main(args):
    lhost = args.lhost
    lport = args.lport
    shell = args.sh

    if validateIP(lhost):
        if validatePort(lport):
            colors("\n[~] Generating {SH} Shell for {IP}{PORT}".format(SH=shell, IP=lhost, PORT=lport), 93)
        else:
            colors('[!] Port must be in range 1-65535', 91)
            sys.exit(0)
    else:
        colors('[!] Invalid IP given', 91)
        sys.exit(0)

    if shell in CHOICE:
        getcmd(shell, lhost, lport)
    else:
        print("\nChoose from: \n")
        colors("\n".join(CHOICE), 94)


if __name__ == "__main__":
    colors(figlet_format('\t$ rsh', font='big'), 92)
    args = options()
    main(args)
