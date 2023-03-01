with import (builtins.fetchTarball {
  url = "https://github.com/nixos/nixpkgs/archive/c82b46413401efa740a0b994f52e9903a4f6dcd5.tar.gz";
  sha256 = "13s8g6p0gzpa1q6mwc2fj2v451dsars67m4mwciimgfwhdlxx0bk";
}) {};

mkShell {
  buildInputs = [
    ghc #8.10.7
    haskell-language-server
  ];
}
