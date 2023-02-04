{
  lib, stdenv,
  go, buildGoModule,
  npiperelay,
  ...
}: buildGoModule {
  pname = "npiperelay";
  version = "fork.albertony";

  src = npiperelay;
  vendorHash = null;

  # Remember who we build this for
  # can't specify as attr beacuse it'll get overriden
  preBuild = ''
    export GOOS=windows
  '';

  # fixupPhase in Nix will mess up the binary it seems :(
  dontFixup = true;

  meta = {
    description = "Allows access to Windows named pipes from WSL";
    homepage = "https://github.com/albertony/npiperelay";
    license = lib.licenses.mit;
    maintainers = [];
  };
}
