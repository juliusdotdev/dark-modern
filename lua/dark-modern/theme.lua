local M = {}

--@param options Config
function M._load(options)
    local h = require('dark-modern.util').highlight
    local p = require('dark-modern.palette')

    local groups = options.groups or {}
    local maybe = {
        base = (options.disable_background and p.none) or groups.background,
    }

    h('Normal', { fg = p.text, bg = maybe.base })

    -- kyazdani42/nvim-tree.lua
    h('NvimTreeNormal', { fg = p.text, bg = maybe.base })

    for group, color in pairs(options.highlight_groups) do
        h(group, color)
    end
end

return M
