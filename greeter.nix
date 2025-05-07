{ config, pkgs, ... }:

let
  hyprSession  = "${pkgs.hyprland}/bin/Hyprland";
  niriSession  = "${pkgs.niri}/bin/niri";

  sessions     = "${config.services.displayManager.sessionData.desktops}/share/xsessions:${config.services.displayManager.sessionData.desktops}/share/wayland-sessions";
  
  greetTuiConf = "--time --time-format '%I:%M %p | %a • %h | %F' \ 
                  -g 'I use NixOS btw' \
                  --cmd ${hyprSession} \
                  --asterisks-char = \
                  --user-menu \
                  --remember --remember-session ";
  tuiGreet     = "${pkgs.greetd.tuigreet}/bin/tuigreet";

in {
    # Enable Display Manager
    services.greetd = {
      enable = true;
      settings = {
    
        default_session = {
          command = "${tuiGreet} ${greetTuiConf}";
          user = "greeter";
        };
      };
    };

    environment.systemPackages = with pkgs; [
      greetd.tuigreet
    ];
  }
