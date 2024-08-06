return {
  {
    {
      "mfussenegger/nvim-dap",
      optional = true,
      dependencies = {
        {
          "williamboman/mason.nvim",
          opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            vim.list_extend(opts.ensure_installed, { "delve" })
          end,
        },
        {
          "leoluz/nvim-dap-go",
          config = true,
        },
      },
    },
  },
  {
    {
      "stevearc/conform.nvim",
      optional = true,
      opts = {
        formatters_by_ft = {
          go = { "goimports", "gofumpt" },
        },
      },
    },
  },
  {
    {
      "nvim-neotest/neotest",
      optional = true,
      dependencies = {
        "nvim-neotest/neotest-go",
      },
      opts = {
        adapters = {
          ["neotest-go"] = {
            -- Here we can set options for neotest-go, e.g.
            -- args = { "-tags=integration" }
            recursive_run = true,
          },
        },
      },
    },
  },
}
