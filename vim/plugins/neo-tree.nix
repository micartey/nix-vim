{
  vim.filetree.neo-tree = {
    enable = true;

    setupOpts = {
      close_if_last_window = true;
      enable_git_status = true;
      enable_diagnostics = true;
      enable_modified_markers = true;
      enable_opened_markers = true;

      filesystem = {
        follow_current_file = {
          enabled = true;
        };
        hijack_netrw_behavior = "open_default";
        use_libuv_file_watcher = true;
      };

      window = {
        width = 30;
        mappings = {
          "<space>" = "none";
          "[b" = "prev_source";
          "]b" = "next_source";
        };
      };

      default_component_configs = {
        indent = {
          with_expanders = true;
          expander_collapsed = "";
          expander_expanded = "";
          expander_highlight = "NeoTreeExpander";
        };

        git_status = {
          symbols = {
            added = "";
            modified = "";
            deleted = "";
            renamed = "➜";
            untracked = "★";
            ignored = "◌";
            unstaged = "✗";
            staged = "✓";
            conflict = "";
          };
        };

        icon = {
          folder_closed = "";
          folder_open = "";
          folder_empty = "";
          default = "*";
        };

        modified = {
          symbol = "●";
          highlight = "NeoTreeModified";
        };
      };
    };
  };

  vim.keymaps = [
    {
      key = "<leader>ft";
      mode = [ "n" ];
      lua = true;
      action = # lua
        ''
          function()
            require("neo-tree.command").execute({ toggle = true })
          end
        '';
      desc = "Toggle file tree";
    }
  ];
}
