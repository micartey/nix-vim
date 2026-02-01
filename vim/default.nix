# https://notashelf.github.io/nvf/
# https://notashelf.github.io/nvf/options.html

{ lib, ... }:

{
  imports = [
    ./languages
    ./plugins
    ./filetypes.nix

    ./clipboard.nix
    ./git.nix
    ./mappings.nix
    ./options.nix
    ./perf.nix
    ./theme.nix
  ];

  # Disable deprecation warnings
  warnings = [ ];

  # Disable vim.deprecate to suppress runtime deprecation warnings from plugins
  vim.luaConfigRC.deprecation_suppress = lib.nvim.dag.entryAnywhere ''
    -- Suppress deprecation warnings from plugins
    vim.deprecate = function() end
  '';

  # vim = {
  #   # lsp = {
  #   #   lspsaga = {
  #   #     enable = true;
  #   #     setupOpts = {
  #   #       symbol_in_winbar.enable = false;
  #   #       lightbulb.enable = false;
  #   #     };
  #   #   };
  #   # };
  #
  #   # utility = {
  #   #   motion = {
  #   #     leap.enable = true;
  #   #   };
  #   # };
  # };
}
