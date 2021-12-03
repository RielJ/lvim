-- Neovim
-- =========================================
lvim.format_on_save = true
lvim.leader = " "
-- lvim.colorscheme = "doom-one"
lvim.transparent_window = true
lvim.debug = false
lvim.log.level = "warn"
require("user.neovim").config()
-- local _time = os.date "*t"
-- if _time.hour >= 21 and _time.hour < 24 then
--   lvim.colorscheme = "onedarker"
-- end

-- Customization
-- =========================================
lvim.builtin.sell_your_soul_to_devil = false -- if you want microsoft to abuse your soul
lvim.builtin.lastplace = { active = false } -- change to false if you are jumping to future
lvim.builtin.tabnine = { active = true } -- change to false if you don't like tabnine
lvim.builtin.persistence = { active = false } -- change to false if you don't want persistence
lvim.builtin.presence = { active = true } -- change to true if you want discord presence
lvim.builtin.orgmode = { active = false } -- change to true if you want orgmode.nvim
lvim.builtin.dap.active = false -- change this to enable/disable debugging
lvim.builtin.fancy_statusline = { active = true } -- enable/disable fancy statusline
lvim.builtin.fancy_bufferline = { active = false } -- enable/disable fancy bufferline
lvim.builtin.fancy_dashboard = { active = false } -- enable/disable fancy dashboard
lvim.builtin.fancy_wild_menu = { active = false } -- enable/disable use wilder.nvim
lvim.builtin.fancy_rename = { active = true } -- enable/disable custom rename
lvim.builtin.fancy_diff = { active = false } -- enable/disable fancier git diff
lvim.builtin.lua_dev = { active = true } -- change this to enable/disable folke/lua_dev
lvim.builtin.test_runner = { active = false } -- change this to enable/disable vim-test, ultest
lvim.builtin.cheat = { active = true } -- enable cheat.sh integration
lvim.builtin.sql_integration = { active = false } -- use sql integration
lvim.builtin.neoclip = { active = false, enable_persistant_history = false }
lvim.builtin.nonumber_unfocus = false -- diffrentiate between focused and non focused windows
lvim.builtin.harpoon = { active = false } -- use the harpoon plugin
lvim.builtin.sql_integration = { active = false } -- use sql integration
lvim.builtin.neoscroll = { active = false } -- smooth scrolling
lvim.builtin.remote_dev = { active = false } -- enable/disable remote development
lvim.builtin.global_status_line = { active = true } -- use the global status line
lvim.builtin.cursorline = { active = false } -- use a bit fancier cursorline
lvim.builtin.motion_provider = "lightspeed" -- change this to use different motion providers ( hop or lightspeed )
lvim.builtin.hlslens = { active = false } -- enable/disable hlslens
lvim.builtin.csv_support = false -- enable/disable csv support
lvim.builtin.sidebar = { active = false } -- enable/disable sidebar
lvim.builtin.async_tasks = { active = false } -- enable/disable async tasks
lvim.lsp.diagnostics.virtual_text = false -- remove this line if you want to see inline errors
lvim.builtin.cursorline = { active = false } -- use a bit fancier cursorline
lvim.builtin.latex = {
  view_method = "skim", -- change to zathura if you are on linux
  preview_exec = "/Applications/Skim.app/Contents/SharedSupport/displayline", -- change this to zathura as well
  rtl_support = true, -- if you want to use xelatex, it's a bit slower but works very well for RTL langs
}
lvim.builtin.notify.active = false
lvim.builtin.dashboard.active = true
lvim.lsp.automatic_servers_installation = false
if lvim.builtin.cursorline.active then
  lvim.lsp.document_highlight = false
end
lvim.lsp.code_lens_refresh = true
require("user.builtin").config()

-- Debugging
-- =========================================
if lvim.builtin.dap.active then
  require("user.dap").config()
end

-- Language Specific
-- =========================================
require("user.null_ls").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- StatusLine
-- =========================================
if lvim.builtin.fancy_statusline.active then
  require("user.lualine").config()
end

-- Autocommands
-- =========================================
require("user.autocommands").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()
