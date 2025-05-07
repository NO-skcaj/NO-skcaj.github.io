{
  description = "Jackson's NixOS Configuration";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      wezterm.url = "github:wez/wezterm?dir=nix";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations.linixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix

		./bootloader.nix
		./greeter.nix

        ./console.nix
        ./users.nix
        
        ./hyprland.nix
        ./theme.nix
        
        ./services.nix
        ./network.nix
        ./audio.nix
        ./locales.nix

        ./packages.nix
        ./virtualization.nix
      ];
    };
  };
}
