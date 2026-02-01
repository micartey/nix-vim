{
  vim.terminal.toggleterm = {
    enable = true;
    mappings.open = "<leader>J";

    setupOpts = {
      direction = "horizontal";
      size = 15;
      shade_terminals = true;
      shading_factor = 2;
      start_in_insert = true;
      persist_size = true;
      persist_mode = true;
      close_on_exit = true;
      shell = null;
      auto_scroll = true;
    };
  };

  vim.maps.terminal = {
  };
}
