-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.autocmds")
require("lspconfig").clangd.setup({})

--transparent backgrounk
vim.cmd([[
  highlight Normal guibg=none
  highlight NonText guibg=none
]])

-- lspconfig for C++
require("lspconfig").clangd.setup({
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".git"),
})

require("lazy").setup({
  -- Other plugins...
  { "christoomey/vim-tmux-navigator", lazy = false },

  {
    "Kawre/leetcode.nvim",
    config = function()
      require("leetcode").setup({
        -- Add any specific configuration options here if needed
        csrf_token = "9tzmPWAKhOMjVQ1tbOfFoqieD0YDCGmP42QIW9kTwKOiV8iuTgB7Uzm3Urb1A1Gi",
        leetcode_session = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiNzY3OTMyNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImRhODc5MGIxMDZmNDk3YjU4ZmY4NmU5OTYzNjEyNTA1YjhhZjg0YTc0MDVkYTU4ZDYzMThhOGUzMzk5YzBhZTEiLCJpZCI6NzY3OTMyNywiZW1haWwiOiJybG1jY3JhcnkxMjEwQGdtYWlsLmNvbSIsInVzZXJuYW1lIjoiUkxNSlMiLCJ1c2VyX3NsdWciOiJSTE1KUyIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9kZWZhdWx0X2F2YXRhci5qcGciLCJyZWZyZXNoZWRfYXQiOjE3Mjk1NDc1NDYsImlwIjoiMTY4LjI4LjE4Ni4xODgiLCJpZGVudGl0eSI6IjQzNTQ0ZjBjODFhMDkwNTU4ZGMyNzM5MDY5NDc2OWIxIiwiZGV2aWNlX3dpdGhfaXAiOlsiNGQ1YzY3YmVlOGNjODFlMzgwMjExZjQ4M2E0MWQ2MTUiLCIxNjguMjguMTg2LjE4OCJdLCJzZXNzaW9uX2lkIjo3NjE4ODA5OSwiX3Nlc3Npb25fZXhwaXJ5IjoxMjA5NjAwfQ.spA0PIhUl6frYIH_hLT-bYnOWlxwXs7yDBZf_nxbzbI",
      })
    end,
  },

  {
    "lervag/vimtex",
    lazy = false, -- ensure vimtex is loaded immediately
    config = function()
      -- You can add specific configuration here
      vim.g.vimtex_view_method = "zathura" -- for example, setting the PDF viewer
    end,
  },

  -- More plugins...
})

-- Keymap for clang-format
vim.api.nvim_set_keymap("n", "<leader>cf", ":ClangFormat<CR>", { noremap = true, silent = true })
