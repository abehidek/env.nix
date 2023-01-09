{ nixpkgs, system, ... }:
let
  pkgs = import nixpkgs {
    inherit system;
    # config = { allowUnfree = true; };
    overlays = [(final: prev: { nodejs = prev.nodejs-16_x; })];
  };
  basePackages = with pkgs; [
    # Node.js deps
    yarn
    nodePackages.pnpm
    nodejs
    # Elixir deps
    elixir # elixir_1_9
    inotify-tools
    # postgresql
    # Hex pkgs compilation tools
    gnumake
    gcc
    readline
    openssl
    zlib
    libxml2
    curl
    libiconv
    glibcLocales
  ];
in pkgs.mkShell {
  nativeBuildInputs = [ pkgs.bashInteractive ];
  buildInputs = basePackages;
  shellHook = with pkgs; ''
    # this allows mix to work on the local directory
    mkdir -p .nix-mix
    mkdir -p .nix-hex
    export MIX_HOME=$PWD/.nix-mix
    export HEX_HOME=$PWD/.nix-hex
    export PATH=$MIX_HOME/bin:$PATH
    export PATH=$HEX_HOME/bin:$PATH
    export LANG=en_US.UTF-8
    export ERL_AFLAGS="-kernel shell_history enabled"
  '';
}
