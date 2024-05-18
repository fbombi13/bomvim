local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    --
    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
    api.config.mappings.default_on_attach(bufnr)
end

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            on_attach = my_on_attach,

            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                -- dotfiles = false,
            },

        })

        -- custom mappings

        local keymap = vim
        .keymap                                                                                         -- for conciseness
        keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })     -- toggle file explorer
        keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>",
            { desc = "Toggle file explorer on current file" })                                          -- toggle file explorer on current file
        keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer   i
        keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })   -- refresh file explorer
    end
}
