return {
  "nvim-treesitter/nvim-treesitter",
  version = false, -- last release is way too old and doesn't work on Windows
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {},
  cmd = { "TSUpdateSync" },
  keys = {
    { "<c-space>", desc = "Increment selection" },
    { "<bs>", desc = "Decrement selection", mode = "x" },
  },
  --@type TSConfig
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "bash",
      "c",
      "cpp",
      "kotlin",
      "c_sharp",
      "java",
      "diff",
      "fish",
      "jsdoc",
      "jsonc",
      "luadoc",
      "luap",
      "python",
      "regex",
      "svelte",
      "go",
      "gomod",
      "gowork",
      "gosum",
      "toml",
      "vimdoc",
      "yaml",
      "vue",
      "astro",
      "json",
      "javascript",
      "typescript",
      "tsx",
      "toml",
      "html",
      "css",
      "xml",
      "prisma",
      "markdown",
      "http",
      "markdown_inline",
      "svelte",
      "sql",
      "graphql",
      "bash",
      "lua",
      "vim",
      "dockerfile",
      "gitignore",
      "query",
      "php",
      "java",
      "graphql",
      "angular",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
  --@param opts TSConfig
  config = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      --@type table<string, boolean>
      local added = {}
      opts.ensure_installed = vim.tbl_filter(function(lang)
        if added[lang] then
          return false
        end
        added[lang] = true
        return true
      end, opts.ensure_installed)
    end
    require("nvim-treesitter.configs").setup(opts)
  end,
}
