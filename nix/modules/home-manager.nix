# nix/modules/home-manager.nix — auto-generated from bevy_input.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_input; in {
  options.programs.bevy_input = {
    enable = lib.mkEnableOption "bevy_input";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_input or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
