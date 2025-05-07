{pkgs, ... }:

{
  users.users.jackson = {
    description = "the only real user fr fr";
  	isNormalUser = true;
  	shell = pkgs.fish;
  	extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "vboxusers" ];
  };
}
