return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    config = function()
        local presets = require("markview.presets");

        require("markview").setup({
            markdown = {
                headings = presets.headings.glow,
                horizontal_rules = presets.horizontal_rules.dotted,
                tables = presets.tables.single
            },
        });
    end
};

