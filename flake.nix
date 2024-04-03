{
  inputs.nixpkgs.url = "github:nixos/nixpkgs";
  outputs = { nixpkgs, ... }: let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    packages.x86_64-linux.default = pkgs.callPackage ./package.nix { src = ./naiveproxy-src; };
  };
}
