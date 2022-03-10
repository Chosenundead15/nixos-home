{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "snaider";
  home.homeDirectory = "/home/snaider";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  nixpkgs.config.allowUnFree = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.packages = [
    pkgs.ventoy-bin
    pkgs.firefox
    pkgs.bitwarden
    pkgs.tutanota-desktop
    pkgs.chromium
  ];
  programs.git = {
    enable = true;
    userName  = "ChosenUndead15";
    userEmail = "snaider1507@tutanota.com";
  };
}
