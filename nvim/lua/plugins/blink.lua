local cmp = require("blink.cmp")
cmp.build():pwait()

cmp.setup({
  keymap = {
    preset = "default",
  },
  sources = {
    default = { "lsp", "path", "buffer" },
  },
})
