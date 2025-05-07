{ pkgs, ... }:

{
    # Enable system-wide
	programs.fish.enable = true;

    # Fonts and configs
	console = {
		font = "Lat2-Terminus16";
		useXkbConfig = true;
	};

    # When bash runs, immediately run fish
	#programs.bash.interactiveShellInit = "fish";
}
