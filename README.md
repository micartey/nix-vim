# vim

> [!IMPORTANT]
> 
> I do not recommend anyone to use it since it is heavily personalised to my needs.
> I share this repository to simplify tracking, sharing of errors and config parts, as well of ease of access on new setups.

### Synopsis

```
.
├── vim
│   ├── plugins
│   │   └── fff, neogit, todo, neotree, ...
│   ├── languages
│   │   └── lsps like java, go, haskell, elixir, ...
│   └── some more general settings
```

### Run vim

You can run this version of nvim with the following command:

```bash
nix run github:micartey/nix-vim

# or inside the repository:
nix run .
```

### Add to nix

Or you can add it to your existing nix project using:

```nix
nix-vim = {
  url = "github:micartey/nix-vim";
  inputs.nixpkgs.follows = "nixpkgs";
};

# ...
# Then add the following package to either home.packages or environment.systemPackages

inputs.nix-vim.packages.${pkgs.system}.vim
```
