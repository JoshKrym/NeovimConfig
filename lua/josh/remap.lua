vim.g.mapleader = " "
vim.keymap.set("n", "q", "<C-v>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv" )
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv" )

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y" )
vim.keymap.set("v", "<leader>y", "\"+y" )
vim.keymap.set("n", "<leader>Y", "\"+Y" )

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("i", "<C-s>", "<cmd>:w<cr>")

vim.api.nvim_create_user_command(
    'WG',
    function()
        vim.cmd("w");
        vim.cmd("! git add "..vim.fn.expand('%:h'));
        vim.cmd("! git commit -m 'save'");
        vim.cmd("! git push");
    end,
    -- ":w | ! git add "..vim.fn.expand('%:h').." | ! git commit -m 'save' | ! git push",
    {bang = true})

