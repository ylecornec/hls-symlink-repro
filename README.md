This repository contains an example of `haskell-language-server` being sensitive to symbolic links in flags produced by hie-bios.

In this example ,`haskell-language-server` is setup using the [hie-bios](hie-bios) script which outputs the following flags:

```
  -isubdir_alias
  Main.hs
  subdir/Lib.hs
```
where `subdir_alias` is a symbolic link to `subdir`.


Running the following command:

```
haskell-language-server-wrapper Main.hs
```

fails with error:

```
Message:  Variable not in scope: val
```

whereas using either `subdir` or `subdir_alias` in both places works fine.

(running `ghci $(./hie-bios | tr '\n' ' ')` as indicated in [hie-bios documentation](https://github.com/haskell/hie-bios) also seems to work fine)

# Versions:

This behavior seems present since `haskell-language-server` version `1.6` as the following commands fail:

```
nix-shell shell_1_9_0_0.nix --run "haskell-language-server-wrapper Main.hs"
nix-shell shell_1_6_1_1.nix --run "haskell-language-server-wrapper Main.hs"
```


While this one succeeds:

```
nix-shell shell_1_5_0_1.nix --run "haskell-language-server-wrapper Main.hs"
````