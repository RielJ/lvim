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
      FIX = { icon = icons.FIX },
      TODO = { icon = icons.TODO, alt = { "WIP" } },
      HACK = { icon = icons.HACK, color = "hack" },
      WARN = { icon = icons.WARN },
      PERF = { icon = icons.PERF },
      NOTE = { icon = icons.NOTE, alt = { "INFO", "NB" } },
      ERROR = { icon = icons.ERROR, color = "error", alt = { "ERR" } },
      REFS = { icon = icons.REFS },
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
    },
    highlight = { max_line_len = 120 },
    colors = {
      error = { "DiagnosticError" },
      warning = { "DiagnosticWarn" },
      info = { "DiagnosticInfo" },
      hint = { "DiagnosticHint" },
      hack = { "Function" },
      ref = { "FloatBorder" },
      default = { "Identifier" },
    },
  }
end

return M
