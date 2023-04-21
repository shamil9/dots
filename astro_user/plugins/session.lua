return {
  {
    "Shatur/neovim-session-manager",
    lazy = false,
    config = function()
      local session_manager = require("session_manager")
      session_manager.setup({
        autoload_mode = require("session_manager.config").AutoloadMode.CurrentDir, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
        autosave_last_session = true,                                              -- Automatically save last session on exit and on session switch.
      })

      local config_group = vim.api.nvim_create_augroup("MyConfigGroup", {}) -- A global group for all your config autocommands
      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        group = config_group,
        callback = function()
          print("foobat")
          if vim.bo.filetype ~= "git" and not vim.bo.filetype ~= "gitcommit" then
            session_manager.autosave_session()
          end
        end,
      })
    end,
  },
}
