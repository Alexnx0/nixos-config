{ pkgs, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "br";
       windowManager.dwm = {
         enable = true;
      };
       windowManager.i3 = {
         enable = true;
         package = pkgs.i3;
    };
    libinput = {
      enable = true;
    };
  };
};
  # To prevent getting stuck at shutdown
  systemd.settings.Manager.DefaultTimeoutStopSec = "10s";
}
