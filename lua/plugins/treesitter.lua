--'.'を使うと勝手に行頭左にある空白が削除される問題対策
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        disable = { "ruby" }, -- ここでRubyの自動インデント無効化できます
      },
      ensure_installed = { "ruby", "lua", "python" },
    },
  },
}
