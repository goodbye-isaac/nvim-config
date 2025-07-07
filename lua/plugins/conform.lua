-- plugins/conform.lua
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = {}, -- ← 純粋なHTMLも整形したくないなら
      eruby = {}, -- ← Railsの .html.erb に対応
      erb = {}, -- ← その他 .erb にも対応（保険）
    },
  },
}
