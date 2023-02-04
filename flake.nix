{
  description = "npiperelay.exe for Use in NixOS-WSL on WSL2";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/master";
    npiperelay = {
      url = "github:albertony/npiperelay/fork";
      flake = false;
    };
  };

  outputs = inputs: {
    packages = {
      x86_64-linux = let
        npiperelay-exe = inputs.nixpkgs.legacyPackages.x86_64-linux.callPackage ./default.nix {
          inherit (inputs) npiperelay;
        };
      in {
        inherit npiperelay-exe;
        default = npiperelay-exe;
      };
    };
  };
}
