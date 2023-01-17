{ nixpkgs, system, rust-overlay, ... }:
let
  overlays = [ (import rust-overlay) ];
  pkgs = import nixpkgs {
    inherit system overlays;
  };
  rust = pkgs.rust-bin.stable.latest.default.override {
    extensions = [ "rust-src" ];
  };
in pkgs.mkShell {
  buildInputs = with pkgs; [
    openssl
    pkg-config
    glib
    gtk3
    rust-analyzer
    exiftool
    rust
  ];

  RUST_BACKTRACE=1;

  shellHook = ''
  '';
}
