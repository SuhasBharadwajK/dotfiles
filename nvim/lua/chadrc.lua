-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
---@class ChadrcConfig
local M = {}

M.base46 = {
  theme = "chocolate",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.add = {
  StatuslineCustom = { bold = false },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}
vim.api.nvim_set_hl(0, "StatuslineCustom1", { fg = "White", bg = "" })

M.ui = {
  statusline = {
    theme = "default",
    separator_style = "default",
    order = { "mode", "abc", "file", "git", "%=", "lsp_msg", "%=", "lsp", "cwd" },
    modules = {
      abc = function()
        local rec = vim.fn.reg_recording()
        return rec ~= "" and "%#StatuslineCustom1#" .. "🔴 Recording @" .. rec .. " " or ""
      end,
    }
  },
}

return M
