return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.preselect = cmp.PreselectMode.None
    opts.completion = {
      completeopt = "menu,menuone,noinsert,noselect",
    }
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<CR>"] = cmp.mapping.confirm({ select = false }),
      ["<Down>"] = cmp.config.disable,
      ["<Up>"] = cmp.config.disable,
    })
  end,
}
