# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Configure keymap in X11, I dont think I need this for x11 apps
  #services.xserver.xkb.layout = "us";

  # soooooo dont change this unless you actually look it up
  system.stateVersion = "24.11"; # Did you read the comment?

}
