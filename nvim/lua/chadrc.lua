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

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

vim.api.nvim_set_hl(0, "RecIndicatorStyle", { fg = "#ffffff", bg = "#c14a4a" })
vim.api.nvim_set_hl(0, "RecSeparatorStartStyle", { fg = "#353330", bg = "#c14a4a" })
vim.api.nvim_set_hl(0, "RecSeparatorEndStyle", { fg = "#c14a4a", bg = "#353330" })

local separator = "";
local recordingEndSeparator = "%#RecSeparatorEndStyle#" .. separator
local recordingStartSeparator = "%#RecSeparatorStartStyle#" .. separator

M.ui = {
  statusline = {
    theme = "default",
    separator_style = "default",
    order = { "mode", "recording", "file", "git", "%=", "lsp_msg", "%=", "lsp", "diagnostics", "cwd", "cursor" },
    modules = {
      recording = function()
        local rec = vim.fn.reg_recording()
        return rec ~= "" and recordingStartSeparator .. "%#RecIndicatorStyle#" .. " Recording @" .. rec .. " " .. recordingEndSeparator or ""
      end,
    }
  },
}

return M
