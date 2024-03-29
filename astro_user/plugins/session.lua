return {
  {
    "Shatur/neovim-session-manager",
    lazy = false,
    config = function()
      require("session_manager").setup({
        autoload_mode = require("session_manager.config").AutoloadMode.CurrentDir, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
        autosave_last_session = true, -- Automatically save last session on exit and on session switch.
      })
    end,
  },
}
