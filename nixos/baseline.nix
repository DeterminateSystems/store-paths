{ config, pkgs, lib, ... }:

{
  system.stateVersion = "24.05";

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  fileSystems."/" = {
    device = "/dev/disk/by-label/nixos";
    fsType = "ext4";
  };

  networking.hostName = "minimal";
  networking.useDHCP = false;
  networking.interfaces.eth0.useDHCP = true;

  services.openssh.enable = true;

  users.users.justme = {
    isNormalUser = true;
    home = "/home/justme";
    extraGroups = [ "wheel" ]; # for sudo access
  };
}
