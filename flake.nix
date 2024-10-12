{
  description = "Tom's Neovim configuration. Primarily for PHP development";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { nixpkgs, nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems =
        [ "aarch64-linux" "x86_64-linux" "aarch64-darwin" "x86_64-darwin" ];

      perSystem = { system, pkgs, self', lib, ... }:
        let
          nixvim' = nixvim.legacyPackages.${system};
          nvim = nixvim'.makeNixvimWithModule {
            inherit pkgs;
            module = ./config;
          };
        in {
          checks = {
            default = pkgs.nixvimLib.check.mkTestDerivationFromNvim {
              inherit nvim;
              name = "nixvim configuration";
            };
          };

          packages.default = nvim;
          packages.neovide = pkgs.writeScriptBin "neovide" ''
            ${pkgs.neovide}/bin/neovide --neovim-bin ${nvim}/bin/nvim
          '';
          packages.nixgl-neovide = pkgs.writeScriptBin "nixgl-neovide" ''
            nix run --override-input nixpkgs nixpkgs/nixos-unstable --impure github:nix-community/nixGL -- ${pkgs.neovide}/bin/neovide --neovim-bin ${nvim}/bin/nvim
          '';

        };
    };
}
