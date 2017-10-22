fbmenugen
================

Fluxbox menu generator (with support for icons)

```
usage: fbmenugen [options]

menu:
    -g  : generate a new menu
    -i  : include icons
    -p  : pipe menu (prints to STDOUT)

other:
    -S <file>  : path to the schema.pl file
    -C <file>  : path to the config.pl file
    -o <file>  : menu file (default: ~/.fluxbox/menu)
    -u         : update the config file
    -d         : regenerate the cache DB
    -r         : regenerate the config file
    -h         : print this message and exit
    -v         : print version and exit

example:
    fbmenugen -g -i           # generates a menu with icons

=> Config file: ~/.config/fbmenugen/config.pl
=> Schema file: ~/.config/fbmenugen/schema.pl
```

Installation: [INSTALL.md](INSTALL.md)
