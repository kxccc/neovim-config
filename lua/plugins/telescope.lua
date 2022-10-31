vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { silent = true, noremap = true })
require("telescope").setup()
