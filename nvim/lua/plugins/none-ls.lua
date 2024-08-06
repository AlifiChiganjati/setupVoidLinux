return {
  "nvimtools/none-ls.nvim",
  event = "LazyFile",
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
      sources = {
        nls.builtins.formatting.prettierd,
        nls.builtins.formatting.fish_indent,
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.shfmt,
        nls.builtins.diagnostics.fish,
        nls.builtins.code_actions.gomodifytags,
        nls.builtins.code_actions.impl,
        nls.builtins.formatting.goimports,
        nls.builtins.formatting.gofumpt,
        nls.builtins.formatting.clang_format,
        nls.builtins.formatting.csharpier,
        nls.builtins.formatting.terraform_fmt,
        nls.builtins.diagnostics.terraform_validate,
        nls.builtins.formatting.ktlint,
        nls.builtins.diagnostics.ktlint,
      },
    }
  end,
}
