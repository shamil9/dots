return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    -- customize the dashboard header
    opts.section.header.val = {
      [[ 	    ______        _____    ____       _____          ____      ____  ____      ______  _______ ]],
      [[ 	___|\     \   ___|\    \  |    |  ___|\    \        |    |    |    ||    |    |      \/       \ ]],
      [[  |     \     \ |    |\    \ |    | /    /\    \       |    |    |    ||    |   /          /\     \ ]],
      [[  |     ,_____/||    | |    ||    ||    |  |    |      |    |    |    ||    |  /     /\   / /\     | ]],
      [[  |     \--'\_|/|    |/____/||    ||    |  |____|      |    |    |    ||    | /     /\ \_/ / /    /| ]],
      [[  |     /___/|  |    ||    |||    ||    |   ____       |    |    |    ||    ||     |  \|_|/ /    / | ]],
      [[  |     \____|\ |    ||____|/|    ||    |  |    |      |\    \  /    /||    ||     |       |    |  | ]],
      [[  |____ '     /||____|       |____||\ ___\/    /|      | \ ___\/___ / ||____||\____\       |____|  / ]],
      [[  |    /_____/ ||    |       |    || |   /____/ |       \ |   ||   | / |    || |    |      |    | / ]],
      [[  |____|     | /|____|       |____| \|___|    | /        \|___||___|/  |____| \|____|      |____|/ ]],
      [[ 	  \( |_____|/   \(           \(     \( |____|/           \(    )/      \(      \(          )/ ]],
      [[ 		 '    )/       '            '      '   )/               '    '        '       '          ' ]],
      [[ 			    '                                ' ]],
    }
    return opts
  end,
}
