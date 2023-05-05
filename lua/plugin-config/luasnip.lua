require("luasnip.loaders.from_vscode").lazy_load()

-- load snippets from path/of/your/nvim/config/snippets
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })
