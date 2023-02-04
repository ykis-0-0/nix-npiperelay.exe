# What's this?
* A package definition (or [derivations](https://nixos.org/manual/nix/stable/language/derivations.html) as they named)
* of [npiperelay](https://github.com/jstarks/npiperelay) (though [albertony's fork](https://github.com/albertony/npiperelay) is used, as it's more maintained i guess?)
* for the [Nix](https://github.com/NixOS/nixpkgs) package manager.

# Why'd we do this?
* I have put my SSH keypair in Windows (`%USERPROFILE%\.ssh\`), and now in [KeePass](https://keepass.info) with the help of [KeeAgent](https://github.com/dlech/KeeAgent)
* but when using [`deploy-rs`](https://github.com/serokell/deploy-rs) I need to use SSH within WSL :(
* and WSL2 doesn't support using sockets in the host :(
