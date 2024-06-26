# deshc-deb
deshc-deb is SHC and SSC decryptor packed in DEB package, compatible with Termux and Debian based distros.

# usage
```
deshc - decrypt SHC and SSC encrypted shell script
  usage: deshc [-shc | -ssc] [OPTIONS] encrypted1 encrypted2

    Options:
      -p          Copy binary to $PATH before decrypting it,
                  Solution for certain devices that chmod
                  doesn't working properly like OnePlus/Realme/Oppo.
      -t          Specify the amount time on second for waiting
                  execve call. default 0.03 second for shc
                  and 0.01 for ssc.

    Examples:
      deshc -shc encrypted1 encrypted2
      deshc -ssc -t 0.009 encrypted1 encrypted2
      deshc -shc -p encrypted1 encrypted2
      deshc -ssc -p -t 0.01 encrypted1 encrypted2
```
# Credits
[kawaii-ghost](https://github.com/kawaii-ghost/deshc) for original deshc script (sorry for that pr I dont have any ide for that 😖)

