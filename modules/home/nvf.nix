{ inputs
, config
, ...
}: 
{
  imports = [ inputs.nvf.homeManagerModules.default ];

  programs.nvf = {
    enable = true;
   
    settings = {
      vim = {
        theme = {
          enable = true;
          name = "base16";
          #name = "catppuccin";
          # style = "mocha";
        };

        options = {
          autoindent = true;
          tabstop = 2;
          shiftwidth = 2;
          softtabstop = 2;
          expandtab = true;
        };

        clipboard = {
          enable = true;
          registers = "unnamedplus";
          providers = {
            wl-copy.enable = true;
            xsel.enable = true;
        };
      };


        # Plugins (<leader> is the spacebar)
        statusline.lualine = {
          enable = true;
          theme = "base16";
          # theme = "catppuccin";
        };
        autocomplete.nvim-cmp.enable = true;
        treesitter.enable = true;
        telescope = {
          enable = true;
          mappings.findFiles = "<leader>f";
        };

        filetree.nvimTree = {
          enable = true;
          mappings.focus = "<leader>h";
        };

        lsp = {
          formatOnSave = true;
          lspkind.enable = false;
          lightbulb.enable = false;
          lspsaga.enable = false;
          trouble.enable = true;
          lspSignature.enable = true;
          otter-nvim.enable = false;
          nvim-docs-view.enable = false;
        };

        languages = {
          enableFormat = true;
          enableTreesitter = true;
          enableExtraDiagnostics = true;
          # Languages
          nix.enable = true;
          python.enable = true;
          clang.enable = true;
          markdown.enable = true;
          go.enable = true;
          lua.enable = true;
          html.enable = true;
          css.enable = true;
        };
      
      visuals = {
        nvim-web-devicons.enable = true;
        nvim-cursorline.enable = true;
        cinnamon-nvim.enable = true;
        fidget-nvim.enable = true;
        highlight-undo.enable = true;
        indent-blankline.enable = true;
        rainbow-delimiters.enable = true;


        };

      ui = {
        borders.enable = true;
        noice.enable = true;
        colorizer.enable = true;
        illuminate.enable = true;
        breadcrumbs = {
        enable = false;
        navbuddy.enable = false;
        };
      };


        diagnostics = {
          enable = true;
          config = {
            virtual_lines.enable = true;
            underline = true;

         };
      };

      keymaps = [
        {
          key = "jk";
          mode = [ "i" ];
          action = "<ESC>";
          desc = "Exit insert mode";
        }
        {
          key = "<leader>nh";
          mode = [ "n" ];
          action = ":nohl<CR>";
          desc = "Clear search highlights";
        }
        {
          key = "<leader>ff";
          mode = [ "n" ];
          action = "<cmd>Telescope find_files<cr>";
          desc = "Search files by name";
        }
        {
          key = "<leader>lg";
          mode = [ "n" ];
          action = "<cmd>Telescope live_grep<cr>";
          desc = "Search files by contents";
        }
        {
          key = "<leader>fe";
          mode = [ "n" ];
          action = "<cmd>Neotree toggle<cr>";
          desc = "File browser toggle";
        }
        {
          key = "<C-h>";
          mode = [ "i" ];
          action = "<Left>";
          desc = "Move left in insert mode";
        }
        {
          key = "<C-j>";
          mode = [ "i" ];
          action = "<Down>";
          desc = "Move down in insert mode";
        }
        {
          key = "<C-k>";
          mode = [ "i" ];
          action = "<Up>";
          desc = "Move up in insert mode";
        }
        {
          key = "<C-l>";
          mode = [ "i" ];
          action = "<Right>";
          desc = "Move right in insert mode";
          }
        ];
      };
    };
  };
}
