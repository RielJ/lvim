local util = require "lspconfig/util"

local function on_new_config(new_config, new_root_dir)
  local function get_typescript_server_path(root_dir)
    local local_tsserverlib = root_dir ~= nil
      and util.path.join(root_dir, "node_modules", "typescript", "lib", "tsserverlibrary.js")
    local global_tsserverlib = "/home/rielj/.npm/lib/node_modules/typescript/lib/tsserverlibrary.js"
    if local_tsserverlib and util.path.exists(local_tsserverlib) then
      return local_tsserverlib
    else
      return global_tsserverlib
    end
  end

  if
    new_config.init_options
    and new_config.init_options.typescript
    and new_config.init_options.typescript.serverPath == ""
  then
    new_config.init_options.typescript.serverPath = get_typescript_server_path(new_root_dir)
  end
end

local volar_cmd = { "volar-server", "--stdio" }
local volar_root_dir = util.root_pattern "package.json"

local opts = {
  setup = {
    cmd = volar_cmd,
    root_dir = volar_root_dir,
    on_new_config = on_new_config,

    filetypes = { "vue" },
    -- If you want to use Volar's Take Over Mode (if you know, you know), intentionally no 'json':
    --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
    init_options = {
      typescript = {
        serverPath = "",
      },
      documentFeatures = {
        selectionRange = true,
        foldingRange = true,
        linkedEditingRange = true,
        documentSymbol = true,
        -- not supported - https://github.com/neovim/neovim/pull/13654
        documentColor = false,
        documentFormatting = {
          defaultPrintWidth = 100,
        },
      },
    },
  },
}
return opts
