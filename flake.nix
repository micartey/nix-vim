{
  description = "lukasl-dev";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    systems.url = "github:nix-systems/default";
    sops-nix.url = "github:Mic92/sops-nix";

    catppuccin.url = "github:catppuccin/nix/release-25.11";

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fff-nvim.url = "github:dmtrKovalenko/fff.nvim";
    nur.url = "github:nix-community/NUR";

    # opencode.url = "github:anomalyco/opencode";
    # rime.url = "github:lukasl-dev/rime";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      systems,
      nvf,
      ...
    }@inputs:
    let
      forEachSystem = nixpkgs.lib.genAttrs (import systems);
    in
    {
      packages = forEachSystem (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          vim =
            (nvf.lib.neovimConfiguration {
              inherit pkgs;
              modules = [ ./vim ];
              extraSpecialArgs = {
                rinputs = inputs;
              };
            }).neovim;
        }
      );
    };
}
