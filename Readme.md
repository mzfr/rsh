<h1 align="center">rsh</h1>

<!--- See for dropping Python 3.5 support https://devguide.python.org/#status-of-python-branches -->
[![Python Versions](https://img.shields.io/badge/python-3.5|3.6|3.7|3.8-blue.svg)](https://www.python.org/downloads/)
[![PEP8](https://img.shields.io/badge/code%20style-pep8-orange.svg)](https://www.python.org/dev/peps/pep-0008/)
[![Contributors](https://img.shields.io/github/contributors/mzfr/rsh.svg)](https://github.com/mzfr/rsh/graphs/contributors)
[![Issues](https://img.shields.io/github/issues/mzfr/rsh.svg)](https://github.com/mzfr/rsh/issues)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/mzfr/rsh/graphs/commit-activity)

![rsh in action](images/rsh.png)

<p align="center">
  <a href="#features">Introduction</a> •
  <a href="#usage">Usage</a> •
  <a href="#installation">Installation</a> •
  <a href="#gallery">Gallery</a>
</p>

rsh is a tool purely written in Python 3 to easily a generate reverse shell command for Linux as well as Windows.

### Features

This tools makes it easy for you to quickly generate reverse shell commands supported in both Linux and Windows, in the following languages:

* bash
    - Bash reverse shell
    - netcat
    - netcat OpenBSD
    - nc.traditional
* Python
    - IPv4
    - IPv6
* Ruby
* Perl
* PHP
* Powershell
* Node.JS
* TCLSH
* Awk
* Java

### Usage

```
usage: rsh [-h] [-sh SH] [-listen] lhost lport

positional arguments:
  lhost       Specify local host ip
  lport       Specify a local port

optional arguments:
  -h, --help  show this help message and exit
  -sh SH      Specify the language to generate the reverse shell
  -listen     Spawn a netcat listener for this shell.
```

Using rsh is very simple. All you need to do is provide an IP and port and the type of shell that is to be generated:

* `./rsh 192.168.56.1 4444 -sh bash`
* `./rsh 192.168.56.1 4444 -sh php`
* `./rsh 192.168.56.1 4444 -sh powershell`

You can also automatically catch the reverse shell by starting a listener when you are done. This uses netcat and listens on the port you specified for your reverse shell
* `./rsh 192.168.56.1 4444 -sh powershell -listen`

### Installation

You need to have Python 3.5 or greater installed to run rsh. Both Linux and Windows are supported.
Along with that rsh uses [pyfiglet](https://pypi.org/project/pyfiglet/) which you can install by running:

```
pip install -r requirements.txt
```

### Gallery

* __Getting bash command__

![](images/rsh.png)

* __Options__

![](images/options.png)

* __Wrong IP__ :smile:

![](images/ip-err.png)

* __Wrong PORT__ :smile:

![](images/port-err.png)

### Contribution

* Report a bug
* Fix something and open a pull request
* Add more reverse shells

In any case feel free to open an issue

## Credits

All the shell command are taken from [pentestmonkey](http://pentestmonkey.net/)

## License

This project is licensed under the GPLv3 License - see the [LICENSE](LICENSE) file for details

## Support

If you'd like you can buy me some coffee:

<a href="https://www.buymeacoffee.com/mzfr" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>
