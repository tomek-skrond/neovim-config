-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = "\\"

vim.opt.splitbelow = true

vim.o.hidden = true

-- Automatically update the tab name based on the Neo-tree directory
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    -- Check if the current buffer is a Neo-tree buffer
    if vim.bo.filetype == "neo-tree" then
      local current_dir = vim.fn.fnamemodify(vim.fn.expand("%:p:h"), ":t")
      vim.g.neo_tree_last_opened_dir = current_dir
    end
  end,
})

local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require("go.format").goimport()
  end,
  group = format_sync_grp,
})
