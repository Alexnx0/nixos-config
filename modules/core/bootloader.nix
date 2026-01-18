{ pkgs, ... }:
let fallout = pkgs.fetchFromGitHub
  {
    owner = "shvchk";
    repo = "fallout-grub-theme";
    rev = "80734103d0b48d724f0928e8082b6755bd3b2078";
    sha256 = "sha256-7kvLfD6Nz4cEMrmCA9yq4enyqVyqiTkVZV5y4RyUatU=";
  };
in
{
  boot = {
    kernelPackages = pkgs.linuxPackages_zen;
    supportedFilesystems = [ "ext4" ];
    loader = {
      systemd-boot.enable = false;
      grub.useOSProber = true;
      systemd-boot.configurationLimit = 10;
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
      gfxmodeEfi = "1920x1080";
      theme = fallout;
      };
    };
  };
}
