{
  vim.statusline.lualine = {
    enable = true;
    theme = "catppuccin";

    activeSection = {
      a = [
        ''
          {
            "mode",
            icons_enabled = true,
            icon = "",
            separator = { left = "", right = "" },
            color = { gui = "bold" },
          }
        ''
      ];

      b = [
        ''
          {
            "branch",
            icon = "",
            separator = { left = "", right = "" },
          }
        ''
        ''
          {
            "diff",
            symbols = { added = " ", modified = " ", removed = " " },
            separator = { left = "", right = "" },
          }
        ''
      ];

      c = [
        ''
          {
            "filetype",
            icon_only = true,
            padding = { left = 1, right = 0 },
          }
        ''
        ''
          {
            "filename",
            path = 1,
            symbols = {
              modified = " ●",
              readonly = " ",
              unnamed = "[No Name]",
              newfile = " [New]",
            },
          }
        ''
      ];

      x = [
        ''
          {
            function()
              local buf_ft = vim.bo.filetype
              local excluded = { toggleterm = true, NvimTree = true, ["neo-tree"] = true, TelescopePrompt = true }
              if excluded[buf_ft] then return "" end
              local clients = vim.lsp.get_clients({ bufnr = vim.api.nvim_get_current_buf() })
              if vim.tbl_isempty(clients) then return "No LSP" end
              local names = {}
              for _, client in ipairs(clients) do
                table.insert(names, client.name)
              end
              return table.concat(names, ", ")
            end,
            icon = "  LSP:",
            separator = { left = "" },
          }
        ''
      ];

      y = [
        ''
          {
            "diagnostics",
            sources = { "nvim_lsp", "nvim_diagnostic" },
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = "󰌵 ",
            },
            colored = true,
            update_in_insert = false,
            always_visible = false,
            separator = { left = "", right = "" },
          }
        ''
      ];

      z = [
        ''
          {
            "location",
            icon = "",
            separator = { left = "" },
          }
        ''
        ''
          {
            "progress",
            icon = "",
            separator = { right = "" },
          }
        ''
      ];
    };

    inactiveSection = {
      a = [ ''{ "filename", path = 1 }'' ];
      z = [ ''{ "location" }'' ];
    };

    disabledFiletypes = [
      "alpha"
      "dashboard"
      "neo-tree"
      "NvimTree"
    ];
  };
}
