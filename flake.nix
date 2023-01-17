{
  description = "Shell environments for development";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    stable.url = "github:nixos/nixpkgs/nixos-22.11";
    rust-overlay.url = "github:oxalica/rust-overlay";
  };
  outputs = {
    self,
    nixpkgs,
    stable,
    rust-overlay,
    ...
  } @ inputs:

  let
    inherit (self) outputs;
    supportedSystems = [ "x86_64-linux" ];
    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
  in rec {
    devShells = forAllSystems (system: {
      nodejs = import ./node/shell.nix { inherit nixpkgs system; };
      elixir = import ./elixir/shell.nix { inherit nixpkgs system; };
      rust = import ./rust/shell.nix { inherit nixpkgs system rust-overlay; };
    });
  };
}
