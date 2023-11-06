vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<A-s>", ":noa w<CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>li")

vim.keymap.set("n", "<leader>ld", ":Telescope diagnostics<CR>")
vim.keymap.set("n", "<it", "<itvit<Esc>w>>vito<Esc>>>", { noremap = true })
vim.keymap.set("n", ">it", ">itvit<Esc><<vito<Esc><<", { noremap = true })
