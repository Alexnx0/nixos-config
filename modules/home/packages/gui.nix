{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Multimedia
    audacity
    gimp
    media-downloader
    obs-studio
    pavucontrol
    soundwireserver
    video-trimmer
    mpv

    ## Office
    libreoffice
    kalker

    ## Security && Privacy
    bitwarden-desktop
    ente-auth
    protonmail-desktop
    tutanota-desktop
    thunderbird
    localsend
    filen-desktop
    telegram-desktop

    ## Utility
    dconf-editor
    mousepad
    blueman
    gnome-disk-utility
    popsicle
    mission-center # GUI resources monitor
    zenity

    ## Theming
    libsForQt5.qt5ct
    kdePackages.qt6ct

    ## Level editor
    ldtk
    tiled
  ];
}
