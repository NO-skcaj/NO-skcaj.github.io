{ config, pkgs, ... }:

{ 
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Browser
    firefox

    # System Viewer
    btop

    # Editors
    micro
    vscodium

    # File manager
    nautilus

    # SBC things
    rpi-imager
    ventoy-full
    popsicle

    # Networking
    angryipscanner

    # Development
    wlroots_0_18
    libgcc
    git
    meson
    gnumake

    rustup

    qemu
  ];
  
  programs.steam.enable = true;
}
