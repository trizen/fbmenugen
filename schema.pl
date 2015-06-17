#!/usr/bin/perl

# fbmenugen - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    raw:       any valid Fluxbox menu entry               {raw => q(...)},
    begin_cat: begin of a category                  {begin_cat => ["name", "icon"]},
    end_cat:   end of a category                      {end_cat => undef},
    fbmenugen: generic menu settings                {fbmenugen => ["label", "icon"]},
    fluxbox:   the default Fluxbox config menu        {fluxbox => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/fbmenugen/config.pl";

our $SCHEMA = [
    #          COMMAND             LABEL                ICON
    {item => ['pcmanfm',       'File Manager',      'file-manager']},
    {item => ['xterm',         'Terminal',          'terminal']},
    {item => ['google-chrome', 'Web Browser',       'web-browser']},
    {item => ['fbrun',         'Run command',       'system-run']},
    {item => ['pidgin',        'Instant messaging', 'system-users']},

    {sep => 'undef'},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['development', 'Development', 'applications-development']},
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['other',       'Other',       'applications-other']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['system',      'System',      'applications-system']},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    #                  LABEL          ICON
    #{begin_cat => ['My category',  'cat-icon']},
    #             ... some items ...
    #{end_cat   => undef},

    #                  LABEL               ICON
    {fbmenugen  => ['FBMenuConf',   'preferences-desktop']},
    {fluxbox    => ['Fluxbox menu', 'package_settings']},
    {sep        => undef},
    {regenerate => ['Regenerate',     'gtk-refresh']},

    # This options uses the default Fluxbox action "Exit"
    {exit       => ['Exit',           'exit']},
]
