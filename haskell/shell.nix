{ nixpkgs, system, ... }:
let
  pkgs = nixpkgs.legacyPackages.${system};
  haskellPkgs = pkgs.haskell.packages."ghc902"; # need to match Stackage LTS version from stack.yaml resolver
  stack-wrapped = pkgs.symlinkJoin {
    name = "stack"; # will be available as the usual `stack` in terminal
    paths = [ pkgs.stack ];
    buildInputs = [ pkgs.makeWrapper ];
    postBuild = ''
      wrapProgram $out/bin/stack \
        --add-flags "\
          --no-nix \
          --system-ghc \
          --no-install-ghc \
        "
    '';
  };
  haskellDevTools = with haskellPkgs; [
    ghc # GHC compiler in the desired version (will be available on PATH)
    ghcid # Continuous terminal Haskell compile checker
    # ormolu # Haskell formatter
    hlint # Haskell codestyle checker
    hoogle # Lookup Haskell documentation
    haskell-language-server # LSP server for editor
    implicit-hie # auto generate LSP hie.yaml file from cabal
    retrie # Haskell refactoring tool
    # cabal-install
    stack-wrapped
    pkgs.zlib # External C library needed by some Haskell packages
  ];
in pkgs.mkShell {
  nativeBuildInputs = [ pkgs.bashInteractive ];
  buildInputs = haskellDevTools;

  # Make external Nix c libraries like zlib known to GHC, like
  # pkgs.haskell.lib.buildStackProject does
  # https://github.com/NixOS/nixpkgs/blob/d64780ea0e22b5f61cd6012a456869c702a72f20/pkgs/development/haskell-modules/generic-stack-builder.nix#L38
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath haskellDevTools;
}
