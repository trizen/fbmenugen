#!/usr/bin/perl

# fbmenugen - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    raw:       any valid Fluxbox menu entry               {raw => q(...)},
    beg:       begin of a category                        {beg => ["name", "icon"]},
    end:       end of a category                          {end => undef},
    fluxbox:   the default Fluxbox config menu        {fluxbox => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/fbmenugen/config.pl";

## Text editor
my $editor = $CONFIG->{editor};

our $SCHEMA = [

    #          COMMAND                 LABEL              ICON
    {item => ['xdg-open .',       'File Manager', 'system-file-manager']},
    {item => ['xterm',            'Terminal',     'utilities-terminal']},
    {item => ['xdg-open http://', 'Web Browser',  'web-browser']},
    {item => ['fbrun',            'Run command',  'system-run']},

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

    #                  LABEL          ICON
    #{beg => ['My category',  'cat-icon']},
    #          ... some items ...
    #{end => undef},

    ## Custom advanced settings
    {sep => undef},
    {beg => ['Advanced Settings', 'applications-engineering']},

      # Configuration files
      {item => ["$editor ~/.conkyrc",              'Conky RC',    'text-x-generic']},
      {item => ["$editor ~/.config/tint2/tint2rc", 'Tint2 Panel', 'text-x-generic']},

      # fbmenugen category
      {beg => ['Fbmenugen', 'accessories-text-editor']},

        {item => ["$editor ~/.config/fbmenugen/schema.pl", 'Menu Schema', 'text-x-generic']},
        {item => ["$editor ~/.config/fbmenugen/config.pl", 'Menu Config', 'text-x-generic']},

        {sep  => undef},
        {item => ['fbmenugen -i', 'Generate a menu with icons',     'accessories-text-editor']},
        {item => ['fbmenugen -g', 'Generate a menu without icons',  'accessories-text-editor']},
        {sep  => undef},

        {item => ['fbmenugen -d', 'Refresh cache', 'view-refresh']},
      {end => undef},

      # Fluxbox category
      {fluxbox => ['Fluxbox', 'preferences-desktop']},
    {end => undef},

    {sep => undef},

    # Regenerate the menu
    {regenerate => ['Refresh', 'view-refresh']},

    # This option uses the default Fluxbox's "Exit" action
    {exit => ['Exit', 'application-exit']},
]
