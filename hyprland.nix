{ inputs, pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    withUWSM = true; # recommended for most users
    xwayland.enable = true; # Xwayland can be disabled.
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-hyprland xdg-desktop-portal-wlr ];
  };

  nix.settings = {
    substituters        = ["https://hyprland.cachix.org"];
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };
  
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    qt6.qtwayland
  
    pyprland
    hyprpicker
    hyprcursor
    hyprlock
    hypridle
    hyprpaper
    wlogout

    inputs.wezterm.packages.${pkgs.system}.default
    cool-retro-term

    starship
    helix

    rofi
    rofi-wayland
    waybar

    mpv
    imv

	slurp
	grim

    fortune
    cowsay
    lolcat
  ];
}
