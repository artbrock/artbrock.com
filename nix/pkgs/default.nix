let
  # nixpkgs channel latest unstable 2019-09-02
  nixpkgs = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/74b42e28b94cc42f93b50c5aeee8794f66795fd0.tar.gz";
    sha256 = "1y0y7hm2608w2w9bryrdk2jcl5sp1bns7026vspcm657c1qbpnhw";
  };
in

import nixpkgs {}
