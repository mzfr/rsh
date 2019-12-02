[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/mzfr/liffy/graphs/commit-activity)


<h1 align="center">rsh</h1>

![rsh in action](images/rsh.png)

<p align="center">
  <a href="#features">Introduction</a> •
  <a href="#usage">Usage</a> •
  <a href="#installation">Installation</a> •
  <a href="#gallery">Gallery</a>
</p>

rsh is a tool purely written in python to easily generate reverse shell command for linux as well as windows.

### Features

This tools makes it easy for you to generate reverse shell command supported in both linux and windows, in the following languages:

* bash
    - netcat
    - netcat OpenBSD
    - nc.traditional
* Python
    - IPv4
    - IPv6
* Ruby
* Perl
* PHP
* PowerShell
* Node.JS
* TCLSH
* AWK
* JAVA

### Usage

```
usage: revsh.py [-h] [-sh SH] lhost lport

positional arguments:
  lhost       Specify local host ip
  lport       Specify a local port

optional arguments:
  -h, --help  show this help message and exit
  -sh SH      Specify the language to generate the reverse shell
```

Using rsh is very simple. All you need to do is provide IP and Port and the type of shell that is to be generated.
EX:

* `./rsh 192.168.56.1 4444 -sh bash`
* `./rsh 192.168.56.1 4444 -sh php`
* `./rsh 192.168.56.1 4444 -sh powershell`

### Installation

You need python 3.5 or greater. Along with that rsh uses [pyfiglet] which you can install by running:

```
pip install pyfiglet
```

Nothing else is required to run rsh.

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
* Add more reverse shell

In any case feel free to open an issue

## Credits

All the shell command are taken from [pentestmonkey](http://pentestmonkey.net/)

## License

This project is licensed under the GPLv3 License - see the [LICENSE](LICENSE) file for details

## Support

If you'd like you can buy me some coffee:

<a href="https://www.buymeacoffee.com/mzfr" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>
