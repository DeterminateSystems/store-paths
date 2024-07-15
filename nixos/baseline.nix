{ config, pkgs, lib, ... }:

{
  system.stateVersion = "24.05";

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "minimal";
  networking.useDHCP = false;
  networking.interfaces.eth0.useDHCP = true;
}
