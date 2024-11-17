return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden and filtered files by default
        hide_dotfiles = false, -- Do not hide dotfiles (e.g., .git, .env)
        hide_gitignored = false, -- Do not hide files ignored by .gitignore
        hide_by_name = {}, -- Do not hide files by specific names
        hide_by_pattern = {}, -- Do not hide files matching patterns
        never_show = {}, -- Explicitly list files to always show (override other settings)
      },
    },
  },
}
