-- 1. もしVS Code内から呼び出された場合は、エラーの原因になるプラグインやテーマを読み込まずにここで処理を終了する
if vim.g.vscode then
  -- ［★ここに追加！］VS Codeでもヤンクをクリップボードと同期させる
  vim.opt.clipboard = "unnamedplus"
  -- 💡【新しく追加】VS Code内でもEscで検索ハイライトを消すようにする
  vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { silent = true })
  return
end

-- --- ⚠️ これより下の設定は、通常のターミナル（LazyVim）のときだけ実行されます ---

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.colorscheme")

-- LSPのdocumentHighlightを無効にする
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.server_capabilities.documentHighlightProvider then
      client.server_capabilities.documentHighlightProvider = false
    end
  end,
})
