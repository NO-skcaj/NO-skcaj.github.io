{ pkgs, ... }:

{  
  # Enable Services
  services = {
    dbus = {
      enable = true;
      implementation = "broker";
      packages = with pkgs; [
        xfce.xfconf
        gnome2.GConf
      ];
    };
    fwupd.enable = true;
    printing.enable = true;
  };
  
  #services.auto-cpufreq.enable = true;
  # services.gnome.core-shell.enable = true;
  # services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  environment.systemPackages = with pkgs; [
	# Screenshots
    slurp
    
    # ffmpeg
    ffmpeg_6-full

    # Likely dependencies for WMs
    xdg-utils
    wlrctl

    # For notifications
    mako
  ];
}
