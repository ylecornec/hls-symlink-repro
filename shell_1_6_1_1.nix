with import (builtins.fetchTarball {
  url = "https://github.com/nixos/nixpkgs/archive/d1c3fea7ecbed758168787fe4e4a3157e52bc808.tar.gz";
  sha256 = "0ykm15a690v8lcqf2j899za3j6hak1rm3xixdxsx33nz7n3swsyy";
}) {};
mkShell {
  buildInputs = [
    ghc #8.10.7
    haskell-language-server
  ];
}
