# nix/modules/nixos.nix — auto-generated from bevy_input.caixa.lisp
# description: "Provides input functionality for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_input;
in {
  options.services.bevy_input = {
    enable = lib.mkEnableOption "bevy_input";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_input or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
