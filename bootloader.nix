{ pkgs,  ... }:

{

  # Kernel Settings
  boot.initrd.kernelModules = [ "amdgpu" ];
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "amdgpu" ];
  

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.forceInstall = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "nodev";
  
  boot.loader.efi.efiSysMountPoint = "/boot";
  boot.loader.efi.canTouchEfiVariables = true;
  
  boot.loader.timeout = 2;
  
  boot.initrd.enable = true;
  boot.initrd.systemd.enable = true;
  
  boot.consoleLogLevel = 3;

  
  boot.plymouth = {
    enable = true;
    font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono-Regular.ttf";
    themePackages = [ pkgs.catppuccin-plymouth ];
    theme = "catppuccin-macchiato";
  };
}
