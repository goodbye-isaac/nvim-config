-- colorscheme を kanagawa にする例
vim.cmd.colorscheme("kanagawa")

-- 背景透過設定
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE

  "行番号や現在行
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight CursorLineNr guibg=NONE ctermbg=NONE
  highlight CursorLine guibg=NONE ctermbg=NONE

  " Float系（Telescope, LSPなど）
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight FloatBorder guibg=NONE ctermbg=NONE
]])
