-- colorscheme を catppuccin にする例
vim.cmd.colorscheme("catppuccin")

-- 背景透過設定
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
]]
