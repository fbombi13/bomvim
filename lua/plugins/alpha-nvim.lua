return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {


      "                                                                                 ",
      "oooooooooo.                              oooooo     oooo  o8o                    ",
      " 888'   `Y8b                              `888.     .8'                          ",
      " 888     888  .ooooo.  ooo. .oo.  .oo.     `888.   .8'   oooo  ooo. .oo.  .oo.   ",
      " 888oooo888' d88' `88b `888P'Y88bP'Y88b     `888. .8'    `888  `888P'Y88bP'Y88b  ",
      " 888    `88b 888   888  888   888   888      `888.8'      888   888   888   888  ",
      " 888    .88P 888   888  888   888   888       `888'       888   888   888   888  ",
      "o888bood8P'  `Y8bod8P' o888o o888o o888o       `8'       o888o o888o o888o o888o ",
      "                                                                                 ",
      "                                                                                 ",
      "                                                                                 "



    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC ps", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
