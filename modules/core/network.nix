{ pkgs, host, ... }:
{
  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
    nameservers = [
     "45.90.28.38"
     "45.90.30.38"
    ];
  firewall = {
    enable = true;
    allowedTCPPorts = [
          53317
      ];
    allowedUDPPorts = [
          53317
      ];
    };
  };

  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}
