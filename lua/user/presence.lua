local M = {}

M.config = function()
  local status_ok, presence = pcall(require, "presence")
  if not status_ok then
    return
  end

  presence:setup {
    auto_update = true,
    neovim_image_text = "The One True Text Editor",
    main_image = "neovim",
    debounce_timeout = 100,
    blacklist = {},
    editing_text = "Editing Files",
    file_explorer_text = "Browsing Files",
    git_commit_text = "Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text = "Reading Files",
    workspace_text = "Currently Working",
  }
end

return M
