Computer documentation and configuration
=====================

This repository is used to store all configuration, installation profiles and documentation for laptops and workstations used on Stockholm Makerspace.

New Ubuntu 14.10 installation image for laptops and workstation
---------------------------------------------------------------

We are working on a new installation image that should be used on all general purpose Linux computers in the facility. This image could be written into the HDD from network boot. Instead of trying to keep all computers up-to-date, we will update the image on the server and install it on all computers.

* A Ubuntu 14.10 installation from mini.iso
* Language: English
* Disk size: 10 GB
* apt-get remove resolvconf
* apt-get install firefox
* apt-get install okular
* apt-get install libreoffice
* apt-get install freecad
* apt-get install wireshark
* apt-get install roxterm
* apt-get install htop
* apt-get install screen
* apt-get install cutecom
* apt-get install inkscape
* apt-get install gcc-arm-none-eabi gdb-arm-none-eabi openocd
* apt-get install gimp
* apt-get install openscad
* apt-get install kicad
* apt-get install tcsh
* apt-get install vlc

Todo:
* xserver, gpu drivers
* XFCE

* Cura
* Sound card oscilloscope + function generator
* Oscilloscope software?
* Zebra software
* Arduino IDE
* Salae
* SUMP

* x86 gnu toolchain
* Wine
* Octave


Content in this repository
--------------
* README.md - This file
* Configuration/
** sources.list - /etc/apt/sources.list for all computers with Debian testing (jessie)
* Scripts/
** hostname.sh DHCP Hostname (/etc/hostname + /etc/hosts)
  

Todo
--------------
* Scripts/hostname.sh should be updated so /etc/hosts is updated
* Roxterm configuration
* tcsh configuration
* SSH keys
* A script for cloning HDD's via network
* The installation should be done via network
* Setup scripts, configuration or whatever needed do to an (almost) auto installation via network from mini.iso

Hardware
--------

We have the following hardware in our facility:

| Device         | Model             | CPU                             | RAM    | HDD    | Screen    |
|----------------|-------------------|---------------------------------|--------|--------|-----------|
| Laptop 01      | ThinkPad T60      | Core 2 Duo T5600 1.83 GHz       |   2 GB |  80 GB | 1400x1050 |
| Laptop 02      | ThinkPad T60      | Core 2 Duo T5600 1.83 GHz       |   2 GB | 120 GB | 1440x1050 |
| Laptop 03      | ThinkPad T60      | Core 2 Duo T7200 2.0 Ghz        | 1.5 GB | 160 GB | 1440x1050 |
| Laptop 04      | ThinkPad T61      | Core 2 Duo T7300 2.0 GHz        |   4 GB | 160 GB | 1440x900  |
| Laptop 05      | ThinkPad T61      | Core 2 Duo T8100 2.1 GHz        |   4 GB | 120 GB | 1440x900  |
| Laptop 06      | ThinkPad T61      | Core 2 Duo T7300 2.0 GHz        |   4 GB | 120 GB | 1440x900  |
| Laptop 07      | ThinkPad T61      | Core 2 Duo T9300 2.5 GHz        |   2 GB |        |           |
| Laptop 08      | ThinkPad T61      | Core 2 Duo T8300 2.4 GHz        |   2 GB | 160 GB | 1680x1050 |
| Laptop 09      | ThinkPad T61      | Core 2 Duo T7250 2.0 GHz        |   2 GB | 120 GB | 1024x768  |
| Laptop 12      | ThinkPad T61      | Core 2 Duo T7250 2.0 GHz        |   2 GB | 120 GB | 1024x768  |
| Laptop 13      | ThinkPad T500     | Core 2 Duo T9400 2.53 GHz       |   2 GB | 160 GB | 1680x1050 |
| Workstation 01 | Ej installerad                                                                    |
| Workstation 02 | Dell OptiPlex 755 | Pentium Dual Core 2.0 GHz E2180 | 4*1 GB |  80 GB |           |
| Workstation 03 | Dell OptiPlex 745 | Pentium Dual Core 1.6 GHz E2140 | 4*1 GB |  80 GB |           |
| Workstation 04 | Dell OptiPlex 755 | Pentium Dual Core 2.0 GHz E2180 | 2*1 GB |  80 GB |           |
| Workstation 05 | Dell OptiPlex 760 | Pentium Dual Core 2.6 GHz E5300 | 4*2 GB |  80 GB |           |
| Workstation 06 | Dell OptiPlex     | Pentium Dual Core 2.0 GHz E2180 | 4*1 GB |  80 GB |           |


Known problems
--------------

| Device    | Problem                                                                                         |
|-----------|-------------------------------------------------------------------------------------------------|
| Laptop 02 | RF-kill switch blockerar? Bekräftat mjukvaroproblem. Fungerar i Ubuntu 14.10                    |
| Laptop 07 | Renderingsfel och hänger sig ibland. Ett snabbt test med memtest visar att minne verkar vara OK |
| Laptop 12 | Glappande skärm. Man ger den en lätt smäll när den krånglar så blir den bra igen.               |