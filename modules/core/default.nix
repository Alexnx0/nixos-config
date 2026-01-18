{ ... }:
{
  imports = [
    ./bootloader.nix
    ./environment.nix
    ./hardware.nix
    ./xserver.nix
    ./displaymanager.nix
    ./network.nix
    ./nh.nix
    ./thunar.nix
    ./pipewire.nix
    ./program.nix
    ./adb.nix
    ./security.nix
    ./services.nix
    ./steam.nix
    ./system.nix
    ./flatpak.nix
    ./user.nix
    ./wayland.nix
    ./virtualization.nix
    ./qmk.nix
  ];
}
