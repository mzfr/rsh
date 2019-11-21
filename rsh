#!/bin/python3

import argparse
import json
from random import choice

from core.utils import *
from pyfiglet import figlet_format

CHOICE = ['java', 'python', 'nc', 'ruby',
          'bash', 'perl', 'php', 'telnet',
          'powershell', 'awk', 'node', 'tclsh']

COLORS = [91, 92, 93, 94, 95, 96]

def options() -> argparse.Namespace:
    """Generate `rsh` options"""
    parser = argparse.ArgumentParser()

    parser.add_argument('lhost', help='Specify local host ip')
    parser.add_argument('lport', default=8080, help="Specify a local port")
    parser.add_argument('-sh', help='Specify the language to generate the reverse shell',
                        default='bash')

    args = parser.parse_args()

    return args


def getcmd(shell: str, lhost: str, lport: str) -> None:
    """Generate the requested reverse shell command"""
    with open('core/shell.json', 'r') as f:
        data = json.load(f)
        
    for sh in data[shell]:
        cmd = sh.replace('[IPADDR]', lhost)
        cmd = cmd.replace('[PORT]', lport)
        colors(f'\n[+] {cmd}', choice(COLORS))


def main(args):
    """`rsh` main"""
    # Fetch user arguments
    lhost = args.lhost
    lport = args.lport
    shell = args.sh

    # Assert that the used IP address is valid
    if not is_ip_valid(lhost):
        colors('[!] Invalid IP given', 91)
        sys.exit(0)

    # Assert that the used port is valid
    if not is_port_valid(lport):
        colors(f'[!] Port must be in range {MIN_ALLOWED_PORT}-{MAX_ALLOWED_PORT}', 91)
        sys.exit(0)

    # Generate the requested shellc command
    colors(f'\n[~] Generating {shell} Shell for {lhost}{lport}', 93)

    if shell in CHOICE:
        getcmd(shell, lhost, lport)
    else:
        print('\nChoose from: \n')
        colors('\n'.join(CHOICE), 94)


if __name__ == '__main__':
    """`rsh` entrypoint"""
    colors(figlet_format('\t$ rsh', font='big'), 92)
    args = options()
    main(args)
