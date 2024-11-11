-- source existing ~/.vimrc
vim.cmd('source ~/.vimrc')

-- lazy load lazy, the plugin manager
---@see <https://raw.githubusercontent.com/folke/lazy.nvim/main/README.md>
---@see `:help lazy.nvim-lazy.nvim-usage`
---@see `:Lazy help`
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- PLUGINS via lazy
plugins = {
  -- Projects
  -- { "folke/neoconf.nvim", cmd = "Neoconf" },

  -- Finder
  "junegunn/fzf",
  "junegunn/fzf.vim",
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  "francoiscabrol/ranger.vim", -- <Leader>f to run ranger within Vim
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
       "nvim-treesitter/nvim-treesitter",
       "nvim-tree/nvim-web-devicons"
    },
  },

  -- Statusline
  "itchyny/lightline.vim",
  "itchyny/vim-gitbranch",
  -- "nvim-lualine/lualine.nvim",

  -- Diagnostics
  "neovim/nvim-lspconfig",
  -- "folke/neodev.nvim",

  -- Colors
  "rebelot/kanagawa.nvim",
  "folke/tokyonight.nvim",
  "EdenEast/nightfox.nvim",

  -- Fonts
  "nvim-tree/nvim-web-devicons",

  -- Git
  {
    "iberianpig/tig-explorer.vim",
    dependencies = { "rbgrouleff/bclose.vim" }
  },
  -- git-conflict default keybindings:
  --    co - Choose ours (current changes)
  --    ct - Choose theirs (incoming changes)
  --    cb - Choose both
  --    c0 - Choose none
  --    ]x - Move to next conflict
  --    [x - Move to previous conflict
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function()
      require("git-conflict").setup({
        default_mappings = true,
        default_commands = true,
        disable_diagnostics = false,
        highlights = {
          incoming = 'DiffText',
          current = 'DiffAdd',
        }
      })
    end
  },

  -- Live Share / Instant w/ localhost.run
  {
    "azratul/live-share.nvim",
    dependencies = { "jbyuki/instant.nvim" },
    config = function()
      vim.g.instant_username = "Smileson"
      require("live-share").setup({
        port_internal = 7709,
        max_attempts = 40, -- 10 seconds
        service = "localhost.run"
      })
    end
  },

  -- Diff
  -- "sindrets/diffview.nvim"
}

require("lazy").setup(plugins)

-- DIAGNOSTICS
-- setup Rubocop as LSP server
---@see <https://docs.rubocop.org/rubocop/usage/lsp.html#neovim-nvim-lspconfig>
vim.opt.signcolumn = "yes"
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  callback = function()
    vim.lsp.start {
      name = "rubocop",
      cmd = { "rubocop", "--lsp" },
    }
  end,
})
---@see <https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rubocop>

-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.ruby_lsp.setup{}
lspconfig.rubocop.setup{}
lspconfig.ts_ls.setup{}

vim.diagnostic.config({
  float = {
    show_header = true,
    source = 'always',
    focusable = false,
  }
})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist)
vim.keymap.set('n', '<leader>dh', vim.diagnostic.hide)
vim.keymap.set('n', '<leader>ds', vim.diagnostic.show)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})


-- FINDER
vim.keymap.set('n', '<leader>b', '<cmd>Telescope buffers<CR>')

require('aerial').setup({
  -- use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
})
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')

-- STATUSLINE
vim.g.lightline = {
  colorscheme = "powerline",
  active = {
    left = {
      { "mode", "past" },
      { "filename", "readonly", "modified", "gitbranch" }
    }
  },
  inactive = {
    left = {
      {},
      { "gitfilename", "modified" }
    }
  },
  component_function = {
    gitbranch = "gitbranch#name",
    gitfilename = "GitFileName"
  }
}

-- COLORS
---@see <https://github.com/rebelot/kanagawa.nvim#readme>
require('kanagawa').setup({
    dimInactive = true,          -- dim inactive window `:h hl-NormalNC`
})
---@see <https://github.com/folke/tokyonight.nvim>

---@todo put note into (post) install script
---@note to remove default color schemes from :colo completion, remove files
--	 from </usr/share/nvim/runtime/colors>

-- kanagwa: setup must be called before loading
vim.cmd("colorscheme kanagawa-wave")
