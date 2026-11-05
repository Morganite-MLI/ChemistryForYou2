local util = require("__bzlib__/data-util")

if mods["space-exploration"] then
    util.add_product("se-vitalic-acid", { type = "fluid", name = "vitalic-slurry", amount = 8 })
    util.set_main_product("se-vitalic-acid", "vitalic-slurry")
    util.remove_product("se-vitalic-acid", "se-vitalic-acid")
    if mods["bobassembly"] then
        util.remove_prerequisite("automation-3", "space-science-pack")
        util.add_prerequisite("automation-3", "productivity-science-pack")
        data.raw.technology["automation-3"].unit.ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "se-rocket-science-pack", 1 },
            { "productivity-science-pack", 1 }
          }
    end
end