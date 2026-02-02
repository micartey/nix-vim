{
  vim.keymaps = [
    {
      mode = "n";
      key = "<C-s>";
      action = ":wa<CR>";
      silent = true;
      desc = "Save all files";
    }
    {
      mode = "i";
      key = "<C-s>";
      action = "<Esc>:wa<CR>";
      silent = true;
      desc = "Save all files";
    }
    {
      mode = "v";
      key = "<C-s>";
      action = "<Esc>:wa<CR>";
      silent = true;
      desc = "Save all files";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = ":m .+1<CR>==";
      silent = true;
      desc = "Move line down";
    }
    {
      mode = "v";
      key = "<C-j>";
      action = ":m '>+1<CR>gv=gv";
      silent = true;
      desc = "Move lines up";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = ":m .-2<CR>==";
      silent = true;
      desc = "Move line up";
    }
    {
      mode = "v";
      key = "<C-k>";
      action = ":m '<-2<CR>gv=gv";
      silent = true;
      desc = "Move lines up";
    }
  ];
}
