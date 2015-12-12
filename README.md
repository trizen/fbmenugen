# fbmenugen

Fluxbox menu generator (with support for icons)

```
usage: fbmenugen [options]

Options :
    -i  : use icons in menus
    -p  : pipe menu (prints to the STDOUT)

Other:
    -S <file>  : path to the schema.pl file
    -C <file>  : path to the config.pl file
    -o <file>  : menu file (default: ~/.fluxbox/menu)
    -u         : update the config file
    -d         : regenerate icons.db
    -r         : regenerate the config file

Help:
    -h  : print this message
    -v  : print the version number
    -H  : print help message for config files

Example:
    ** Generate a simple menu
        fbmenugen

    ** Generate a menu with icons
        fbmenugen -i

** Config file: ~/.config/fbmenugen/config.pl
** Schema file: ~/.config/fbmenugen/schema.pl
```
