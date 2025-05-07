{ pkgs, ... }:

{
  # Virtualbox
  virtualisation.virtualbox.host.enable = true;

  # Guest Additions
  #virtualisation.virtualbox.guest.enable = true;
  #virtualisation.virtualbox.guest.dragAndDrop = true;
  
  # KVM backend
  virtualisation.libvirtd.enable = true;
  virtualisation.virtualbox.host.enableKvm = true;
  virtualisation.virtualbox.host.addNetworkInterface = false; # incompatible with kvm 

  # required packages
  environment.systemPackages = [
    pkgs.linuxKernel.packages.linux_latest_libre.virtualbox
    pkgs.virtualboxKvm
  ];
}
