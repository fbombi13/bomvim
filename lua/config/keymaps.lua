local map = vim.keymap.set

map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

map("v", "<leader>p", function()
    local val = vim.fn.getreg '+'
    vim.api.nvim_command [[normal! p]]
    vim.fn.setreg('+', val)
end, { desc = "Special paste, paste without replacing copy register content" })


map("n", "<leader>bd", ":bd!<CR>", { desc = "Deletes the current buffer" })


-- tabulation
map("v", "<", "<gv", { desc = "Indent out and keeps the selection" })
map("v", ">", ">gv", { desc = "Indent in and keeps the selection" })

-- search result focus
map("n", "n", "nzzzv", { desc = "Goes to next result on the search and put the cursor in the middle of the screen" })
map("n", "N", "Nzzzv", { desc = "Goes to prev result on the search and put the cursor in the middle of the screen" })

-- join lines focus
map("n", "J", "mzJ`z", { desc = "Join lines and keep in the same place the cursor" })

-- quick env file edit
map("n", "<leader>env", ":vsp .env<CR>", { desc = "Open .env file in a vertical split" })

-- quick save and exec
map(
    "n",
    "<leader><leader>x",
    require("fbombi.utils").save_and_exec,
    { desc = "Save the current file and source it for .vim and .lua files" }
)

map("n", "<leader>vn", vim.diagnostic.goto_next, { desc = "Goes to next diagnostic error" })
map("n", "<leader>vp", vim.diagnostic.goto_prev, { desc = "Goes to prev diagnostic error" })




-- window management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })      -- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })    -- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })       -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })  -- close current split window

map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })        -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })        --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })    --  go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>",
    { desc = "Open current buffer in new tab" })                            --  move current buffer to new tab



-- vim-maximizer
map("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization
