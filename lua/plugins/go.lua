return {
  -- Optional: Go-specific tools and enhancements
  {
    "ray-x/go.nvim",
    dependencies = { "ray-x/guihua.lua" },
    config = function()
      require("go").setup({
        gofmt = "gofmt", -- Use "goimports" instead if preferred
        max_line_len = 120,
        lsp_cfg = false, -- Use LazyVim's LSP config
        lsp_on_attach = false, -- Use LazyVim's `on_attach`
      })
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- Install/update Go binaries
  },
}
