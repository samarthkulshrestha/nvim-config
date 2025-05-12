return {
    {
        "nvim-neorg/neorg",
        lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = "*", -- Pin Neorg to the latest stable release
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {},
                    ["core.concealer"] = {
                        config = {
                            icons = {
                                heading = {
                                    icons = {"*", "**", "***", "****", "*****", "******"},
                                },
                            },
                        },
                    },
                    ["core.dirman"] = {
                        config = {
                            workspaces = {
                                second_brain = "~/second_brain/org/",
                            },
                            default_workspace = "second_brain",
                        },
                    },
                },
            }

            vim.wo.foldlevel = 99
            vim.wo.conceallevel = 2
        end,
    }
}
