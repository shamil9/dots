return function(config)
  config[1] = {
    hl = { fg = "fg", bg = "bg" },
    astronvim.status.component.mode(),
    astronvim.status.component.git_branch(),
    astronvim.status.component.file_info({
      filename = { modify = ":p" },
    }),
    astronvim.status.component.git_diff(),
    astronvim.status.component.diagnostics(),
    astronvim.status.component.fill(),
    astronvim.status.component.macro_recording(),
    astronvim.status.component.fill(),
    -- astronvim.status.component.lsp(),
    astronvim.status.component.treesitter(),
    -- astronvim.status.component.nav(),
    astronvim.status.component.mode({ surround = { separator = "right" } }),
  }

  return config
end
