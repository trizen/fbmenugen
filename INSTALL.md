## Installation of fbmenugen

* Required dependencies:

    - perl>=5.14.0
    - gtk2-perl ([Gtk2](https://metacpan.org/pod/Gtk2))
    - perl-data-dump ([Data::Dump](https://metacpan.org/pod/Data::Dump))
    - perl-linux-desktopfiles>=0.25 ([Linux::DesktopFiles](https://metacpan.org/pod/Linux::DesktopFiles))

* Optional dependencies:
    - perl-file-desktopentry ([File::DesktopEntry](https://metacpan.org/pod/File::DesktopEntry))

### Installation process:

- place the `fbmenugen` file inside your PATH
- place the `schema.pl` file inside `~/.config/fbmenugen/`

### Running:

- to generate a menu with icons, execute: `fbmenugen -i`
- to generate a menu without icons, execute: `fbmenugen`

### Locale support:

- If [File::DesktopEntry](https://metacpan.org/pod/File::DesktopEntry) is installed, `fbmenugen` will use it to provide locale support.

### Customizing:

- the `schema.pl` file provides a direct customization access to the menu that will be generated.
- adding or removing a given entry from the `schema.pl` file, is reflected inside the generated menu.

### Availability:

- [Arch Linux](https://aur.archlinux.org/packages/fbmenugen/)
