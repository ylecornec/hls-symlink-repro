with import (builtins.fetchTarball {
  url = "https://github.com/nixos/nixpkgs/archive/54b1d155046952c41c79bb0a7da834f52effe3b4.tar.gz";
  sha256 = "01ymki6x3mhsl3y1wi00axawni2la9pbcqlzfw1rya0w625yvigi";
}) {};

mkShell {
  buildInputs = [
    ghc #9.2.6
    haskell-language-server
  ];
}
