{ pkgs, username, ... }:
{
  users.users.${username}.extraGroups = [ "adbusers" ];
    environment.systemPackages = with pkgs; [
    scrcpy
    android-tools
  ];
}
