## Installation of fbmenugen

* Required dependencies:

    - perl>=5.14.0
    - gtk2-perl ([Gtk2](https://metacpan.org/pod/Gtk2))
    - perl-data-dump ([Data::Dump](https://metacpan.org/pod/Data::Dump))
    - perl-linux-desktopfiles>=0.09 ([Linux::DesktopFiles](https://metacpan.org/pod/Linux::DesktopFiles))

### Installation process:

- place the `fbmenugen` file inside your PATH
- place the `schema.pl` file inside `~/.config/fbmenugen/`

### Running:

- to generate a menu with icons, execute: `fbmenugen -i`
- to generate a menu without icons, execute: `fbmenugen`

### Customizing:

- the `schema.pl` file provides a direct customization access to the menu that will be generated.
- adding or removing a given entry from the `schema.pl` file, is reflected inside the generated menu.

### Availability:

- [Arch Linux](https://aur.archlinux.org/packages/fbmenugen/)
