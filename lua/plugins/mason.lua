return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      -- CSS
      "css-lsp",
      "cssmodules-language-server",

      -- HTML
      "html-lsp",

      -- already installed by tailwind extra, but explicit is better
      "prettier",
      "tailwindcss-language-server",
    },
  },
}
