return {
    {
        "mason-org/mason-lspconfig.nvim",
        version = "*",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig"
        },
        opts = {
            ensure_installed = {
                "lua_ls",
                "roslyn_ls"
            }
        }
    },
    {
        "mason-org/mason.nvim",
        version = "*",
        opts = {}
    },
    {
        "folke/lazydev.nvim",
        opts = {}
    },
    {
      "j-hui/fidget.nvim",
      opts = {}
    }
}
