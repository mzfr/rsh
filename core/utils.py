# -*- coding: utf-8 -*-
# This file is part of rsh which can be found at https://github.com/mzfr/rsh
# See the file 'LICENSE' for copying permission.

from urllib.parse import quote_plus, urlencode

import socket
import sys

"""Maximum allowed value for the port of the provided IP"""
MAX_ALLOWED_PORT = 65536

"""Minimum allowed value for the port of the provided IP"""
MIN_ALLOWED_PORT = 1

def colors(string: str, color: str) -> None:
    """Make things colorfull

    Arguments:
        string {str} -- String to apply colors on
        color {int} -- value of color to apply
    """
    print(f"\033[{color}m{string}\033[0m")


def is_port_valid(port: str) -> bool:
    """Validate port number entered"""
    try:
        return MIN_ALLOWED_PORT < int(port) < MAX_ALLOWED_PORT
    except ValueError:
        return False


def url_encode(cmd) -> str:
    """url_encodes the cmd provided"""
    try:
        return urlencode(cmd, quote_via=quote_plus)
    except Exception as error:
        print(f'[x] Error:"{error}"')
        sys.exit(0)


def is_ip_valid(ip: str) -> bool:
    """validate ip provided"""
    try:
        if socket.inet_aton(ip):
            return True
    except socket.error:
        return False
