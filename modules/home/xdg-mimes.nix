{ ... }:
{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
    	   browser = [ "librewolf.desktop" ];
  	     text = [ "mousepad.desktop" ];
   	     image = [ "imv-dir.desktop" ];
    	   audio = [ "mpv.desktop" ];
    	   video = [ "mpv.desktop" ];
    	   directory = [ "thunar.desktop" ];
   	     office = [ "libreoffice.desktop" ];
    	   pdf = [ "zathura.desktop" ];
         terminal = [ "kitty.desktop" ];
    	   archive = [ "org.gnome.FileRoller.desktop" ];
 	       discord = [ "discord.desktop" ];
    };
  };
}
