{ ... }:
{
  environment.sessionVariables = {
     XDG_CURRENT_DESKTOP = "i3";
     XDG_SESSION_DESKTOP = "i3";
     XDG_SESSION_TYPE = "x11";

     GDK_BACKEND = "x11";
     GTK_USE_PORTAL = "1";

     QT_QPA_PLATFORMTHEME = "qt5ct";
     QT_QPA_PLATFORM = "xcb";
     QT_AUTO_SCREEN_SCALE_FACTOR = "1";

     MOZ_ENABLE_WAYLAND = "0";
  };
}
