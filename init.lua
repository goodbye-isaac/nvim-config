-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.colorscheme")

--LSPのdocumentHighlightを無効にする
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.server_capabilities.documentHighlightProvider then
      client.server_capabilities.documentHighlightProvider = false
    end
  end,
})
