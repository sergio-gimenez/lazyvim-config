return {
  "saghen/blink.cmp",
  optional = true,
  opts = function(_, opts)
    opts.sources = opts.sources or {}
    opts.sources.default = vim.tbl_filter(function(source)
      return source ~= "copilot"
    end, opts.sources.default or {})
    opts.sources.providers = opts.sources.providers or {}
    opts.sources.providers.copilot = nil
  end,
}
