return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "muniftanjim/nui.nvim",
    -- optional image support for file preview: see `# preview mode` for more information.
    -- {"3rd/image.nvim", opts = {}},
    -- or use snacks.nvim's image module:
    -- "folke/snacks.nvim",
  },
  lazy = false, -- neo-tree will lazily load itself
  opts = {
    -- add options here
  },
  config = function ()
    vim.keymap.set('n', '<C-M-l>', ':Neotree filesystem toggle<CR>', {})
    vim.keymap.set('n', '<C-M-[>', ':Neotree focus<CR>', {})
  end
}
