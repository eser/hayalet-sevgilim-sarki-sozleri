# SPDX-FileCopyrightText: 2021 Serokell <https://serokell.io/>
#
# SPDX-License-Identifier: CC0-1.0

{
  description = "Hayalet Sevgilim Sarki Sozleri";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/haskell-updates";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        haskellPackages = pkgs.haskellPackages.override {
          overrides = hself: hsuper: {
            ${packageName} =
              hself.callCabal2nix packageName ./. { };
            ormolu = pkgs.haskell.lib.overrideCabal hsuper.ormolu (_: {
              enableSeparateBinOutput = false;
            });
            ghcid = pkgs.haskell.lib.overrideCabal hsuper.ghcid (_: {
              enableSeparateBinOutput = false;
            });
          };
        };

        packageName = "hayalet-sevgilim-sarki-sozleri";
      in {
        packages.${packageName} = haskellPackages.${packageName};

        defaultPackage = self.packages.${system}.${packageName};

        devShell = haskellPackages.shellFor {
          packages = p: [p.${packageName}];
          buildInputs = [haskellPackages.haskell-language-server haskellPackages.cabal-install haskellPackages.ghcid];
        };
      });
}
