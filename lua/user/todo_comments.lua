local M = {}

M.config = function()
  local status_ok, todo = pcall(require, "todo-comments")
  if not status_ok then
    return
  end

  local icons = require("user.lsp_kind").todo_comments
  todo.setup {
    signs = true,
    keywords = {
      -- =======
      --       FIX = { icon = "律" },
      --       TODO = { icon = " ", alt = { "WIP" } },
      --       HACK = { icon = " ", color = "hack" },
      --       WARN = { icon = "裂", color = "warning" },
      --       PERF = { icon = "龍", color = "default" },
      --       NOTE = { icon = " ", color = "hint", alt = { "INFO", "NB" } },
      --       LINK = { icon = " ", color = "ref", alt = { "LINKS", "REF", "REFS" } },
      --       ERROR = { icon = " ", color = "error", alt = { "ERR" } },
      --       REFS = { icon = "", color = "ref" },
      -- >>>>>>> 9db0ae1 (commited)
      FIX = { icon = "律", color = "error" },
      TODO = { icon = " ", alt = { "WIP" }, color = "warning" },
      HACK = { icon = " ", color = "hack" },
      WARN = { icon = "裂", color = "warning" },
      PERF = { icon = "龍", color = "default" },
      NOTE = { icon = " ", color = "hint", alt = { "INFO", "NB" } },
      LINK = { icon = " ", color = "ref", alt = { "LINKS", "REF", "REFS" } },
      ERROR = { icon = " ", color = "error", alt = { "ERR" } },
      REFS = { icon = "", color = "ref" },
    },
    highlight = { max_line_len = 120 },
    colors = {
      error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
      warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
      info = { "DiagnosticInfo", "#2563EB" },
      hint = { "DiagnosticHint", "#10B981" },
      hack = { "Function" },
      ref = { "FloatBorder" },
      default = { "Identifier", "#7C3AED" },
    },
  }
end

return M
