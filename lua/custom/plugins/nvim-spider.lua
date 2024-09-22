return {
  "chrisgrieser/nvim-spider",
  lazy = true,
  keys = {
    {
      "e",
      "<cmd>lua require('spider').motion('e')<CR>",
      mode = { "n", "o", "x" },
      { desc = "Spider-e" }
    },
    {
      "w",
      mode = { "n", "o", "x" },
      "<cmd>lua require('spider').motion('w')<CR>",
      { desc = "Spider-w" }
    },
    {
      "b",
      mode = { "n", "o", "x" },
      "<cmd>lua require('spider').motion('b')<CR>",
      { desc = "Spider-b" }
    }
  },
}

