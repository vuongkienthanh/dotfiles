require('packer').startup(function()
  use {'wbthomason/packer.nvim'}
  use {'kyazdani42/nvim-web-devicons'} 
  use {'tpope/vim-repeat'}
  use {'tpope/vim-surround'}
  use {'tpope/vim-abolish'}
  use {'tpope/vim-commentary'}
  use {'jiangmiao/auto-pairs'}
  use {'KabbAmine/vCoolor.vim'}

  --- file manager
  use {
    'mcchrish/nnn.vim',
    config = function()
      require("nnn").setup({
        command = "nnn -o -C",
        replace_netrw = 1,
        action = {
          ["<c-t>"] = "tab split",
          ["<c-s>"] = "split",
          ["<c-v>"] = "vsplit",
          ["<c-y>"] = copy_to_clipboard,
        },
      })
    end
  }

  -- status line
  use {
    'hoob3rt/lualine.nvim',
    config = function()
      require'lualine'.setup {
        options = {
          icons_enabled = true,
          theme = 'tomorrow',
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch'},
          lualine_c = {'filename'},
          lualine_d = {'branch'},
          lualine_d = {'diagnostics'},
          lualine_x = {'encoding',{'filetype', colored=true}},
          lualine_z = {'location'}
        },
        extensions = {'quickfix'}
      }
    end
  }

  -- interactive hex color
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  }

  -- colorscheme
  use {
    'crusoexia/vim-monokai',
    config = function()
      vim.cmd('colorscheme monokai')
    end
  }

  -- indent line 
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      vim.opt.listchars = {
        eol = "↷",
      }
      require("indent_blankline").setup {
        char = "┆",
        show_end_of_line = true,
      }
    end
  }

  -- markdown preview
  use {
    'iamcco/markdown-preview.nvim',
    ft = {'markdown','pandoc.markdown', 'rmd'},
    cmd = "MarkdownPreview",
    run = 'cd app && yarn install'
  }

  -- fuzzy
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-telescope/telescope-fzy-native.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-lua/popup.nvim',
    },
    config = function()
      local ts = require('telescope')
      local actions = require('telescope.actions')
      local previewers = require('telescope.previewers')
      local new_maker = function(filepath, bufnr, opts)
        opts = opts or {}
        filepath = vim.fn.expand(filepath)
        vim.loop.fs_stat(filepath, function(_, stat)
          if not stat then return end
          if stat.size > 5000 then
            return
          else
            previewers.buffer_previewer_maker(filepath, bufnr, opts)
          end
        end)
      end
      ts.setup{
        defaults = {
          vimgrep_arguments = {
            'rg',
            '--color=auto',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
          },
          mappings = {
            n = {
              ["<C-q>"] = actions.send_to_qflist,
            },
            i = {
              ["<C-q>"] = actions.send_to_qflist,
            },
          },
          buffer_previewer_maker = new_maker,
        },
        pickers = {
          find_files = {
            -- previewer = false,
          },
          buffers = {
            mappings = {
              n = {
                ["x"] = actions.delete_buffer
              },
            },
          },
        },
      }
      ts.load_extension('fzy_native')
    end
  }

  -- lsp, snippet, autocomplete
  use {'neovim/nvim-lspconfig'}
  use {
    'SirVer/ultisnips',
    config = function()
      vim.g['ultisnipsremoveselectmodemappings'] = 0
    end
  }
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'quangnguyen30192/cmp-nvim-ultisnips',
      'onsails/lspkind-nvim',
    }
  }
  use {
    'glepnir/lspsaga.nvim',
    config = function()
      require 'lspsaga'.init_lsp_saga({
        finder_definition_icon = "⽗",
        finder_reference_icon = "⼦",
        definition_preview_icon = "🤔",
        finder_action_keys = {
          open = '<cr>',
          vsplit ='v',
          split = 'x',
          quit = {
            '<esc>',
            'q'
          },
          scroll_down = '<c-f>',
          scroll_up = '<c-b>'
        },
        rename_action_keys = {
          quit = '<esc>',
          exec = '<cr>'
        }
      })
    end
  }
  use {
    'ray-x/lsp_signature.nvim',
    config = function()
      require "lsp_signature".setup({
        fix_pos = true,
        transpancy = 20,
      })
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      "andymass/vim-matchup",
      "nvim-treesitter/nvim-treesitter-textobjects"
    },
    run = ':TSUpdate',
    config = function ()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained",
        highlight = {
          enable = true
        },
        matchup = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = "@class.inner",
            },
          },
          move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
              ["]m"] = "@function.outer",
              ["]]"] = "@class.outer",
            },
            goto_previous_start = {
              ["[m"] = "@function.outer",
              ["[["] = "@class.outer",
            },
          },
        },
      }
      -- other variable
      vim.cmd([[
        let g:matchup_matchparen_deferred = 1
        let g:matchup_matchparen_hi_surround_always = 1
        let g:matchup_matchparen_offscreen = {'method': 'popup'}
      ]])
    end
  }
  --
  -- svelte
  -- use {
  --   'leafOfTree/vim-svelte-plugin',
  --   config = function ()
  --     vim.g.vim_svelte_plugin_has_init_indent = 0
  --     vim.cmd([[
  --       function! OnChangeSvelteSubtype(subtype)
  --         echom 'Subtype is '.a:subtype
  --         if empty(a:subtype) || a:subtype == 'html'
  --           setlocal commentstring=<!--%s-->
  --           setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
  --         elseif a:subtype =~ 'css'
  --           setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
  --         else
  --           setlocal commentstring=//%s
  --           setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
  --         endif
  --       endfunction
  --     ]])
  --   end
  -- }
end)
