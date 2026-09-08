local util = require("data-util")

-- Main vanilla changes

local glass_name = mods["Krastorio2"] and "kr-glass" or "glass"

-- Mod changes
if mods["248k-Redux"] then
    util.remove_ingredient("satellite", "fu_KFK")

    util.add_prerequisite("fi_ceramic_tech","productivity-science-pack")
    data.raw.technology["fi_ceramic_tech"].unit.ingredients[#data.raw.technology["fi_ceramic_tech"].unit.ingredients+1] = {"productivity-science-pack", 1}

    util.add_prerequisite("fi_modules_2_tech","productivity-science-pack")
    data.raw.technology["fi_modules_2_tech"].unit.ingredients[#data.raw.technology["fi_modules_2_tech"].unit.ingredients+1] = {"productivity-science-pack", 1}

    util.add_prerequisite("fi_robo_tech","productivity-science-pack")
    data.raw.technology["fi_robo_tech"].unit.ingredients[#data.raw.technology["fi_robo_tech"].unit.ingredients+1] = {"productivity-science-pack", 1}

    util.add_prerequisite("fi_refinery_tech","productivity-science-pack")
    data.raw.technology["fi_refinery_tech"].unit.ingredients[#data.raw.technology["fi_refinery_tech"].unit.ingredients+1] = {"productivity-science-pack", 1}
    data.raw.technology["fi_refinery_2_tech"].unit.ingredients[#data.raw.technology["fi_refinery_2_tech"].unit.ingredients+1] = {"productivity-science-pack", 1}
    data.raw.technology["fi_refinery_3_tech"].unit.ingredients[#data.raw.technology["fi_refinery_3_tech"].unit.ingredients+1] = {"productivity-science-pack", 1}
    data.raw.technology["fi_refinery_4_tech"].unit.ingredients[#data.raw.technology["fi_refinery_4_tech"].unit.ingredients+1] = {"productivity-science-pack", 1}

    util.add_unlock("el_lithium_tech","lithium-hydroxide")
    if mods["LithiumFix"] then
        util.replace_ingredient("el_lithium_battery", "lithium", "lithium-hydroxide", 4)
        util.replace_ingredient("el_lithium_basic_battery", "lithium", "lithium-hydroxide", 4)
    else
        util.replace_ingredient("el_lithium_battery", "el_lithium", "lithium-hydroxide", 4)
        util.replace_ingredient("el_lithium_basic_battery", "el_lithium", "lithium-hydroxide", 4)
    end
end

if mods["Bio_Industries_2"] then
    util.add_ingredient("bi-woodpulp", "sodium-hydroxide", 1)
    util.add_ingredient("bi-solar-boiler-hidden-panel", "sodium-hydroxide", 200)

    util.add_prerequisite("bi-tech-advanced-biotechnology","organic-chemistry")
    data.raw.technology["bi-tech-advanced-biotechnology"].unit.ingredients[#data.raw.technology["bi-tech-advanced-biotechnology"].unit.ingredients+1] = {"productivity-science-pack", 1}
end


if mods["RampantArsenal"]  then
    util.add_prerequisite("rampant-arsenal-technology-lite-artillery","productivity-science-pack")
    data.raw.technology["rampant-arsenal-technology-lite-artillery"].unit.ingredients[#data.raw.technology["rampant-arsenal-technology-lite-artillery"].unit.ingredients+1] = {"productivity-science-pack", 1}
end

if mods["Krastorio2"] then
    util.add_prerequisite("kr-bio-fuel","organic-chemistry")
    util.add_unlock("kr-atmosphere-condensation", "carbon-dioxide-condensation")
    util.add_unlock("kr-bio-processing","tissue-digestion")
    data.raw.technology["kr-bio-fuel"].unit.ingredients[#data.raw.technology["kr-bio-fuel"].unit.ingredients+1] = {"productivity-science-pack", 1}
    util.add_product("kr-water-electrolysis", {type="item", name="sodium-hydroxide", amount=2})
    util.add_product("se-kr-catalysed-water-electrolysis", {type="item", name="sodium-hydroxide", amount=20})

    if mods["BrimStuff-Updated"] then
        util.add_unlock("kr-fluids-chemistry","sodium-hydroxide-waste-treatment")
    end

    if mods["space-exploration"] then
        util.add_prerequisite("se-lifesupport-facility", "lithium-chemistry")
        util.replace_ingredient("se-lifesupport-canister-coal", "coal", "lithium-peroxide", 2)
        util.remove_all_recipe_effects("se-lifesupport-canister-fish")
        util.add_product("se-used-lifesupport-canister-cleaning", {type="item", name="lithium-carbonate", amount=2})
        util.add_product("se-used-lifesupport-canister-cleaning-space", {type="item", name="lithium-carbonate", amount=2})
    end

    if mods["IntermediatesForYou2"] then
        util.add_prerequisite("slag-processing", "productivity-science-pack")
        data.raw.technology["slag-processing"].unit.ingredients[#data.raw.technology["slag-processing"].unit.ingredients+1] = {"productivity-science-pack", 1}
    end
else
    util.set_category("stone-brick", "crafting")
    util.set_main_product("stone-brick","stone-brick")
    util.add_product("stone-brick", {type="item", name="sodium-hydroxide", amount=1})
end

if mods["BrimStuff-Updated"] and mods["Nylon2"] then
    util.add_prerequisite("nylon-drive-belt", "productivity-science-pack")
    data.raw.technology["nylon-drive-belt"].unit.ingredients[#data.raw.technology["nylon-drive-belt"].unit.ingredients+1] = {"productivity-science-pack", 1}
end

if mods["ShockTurret"] then
    util.add_prerequisite("adikings-shock-turret-to-laser-turret", "productivity-science-pack")
    data.raw.technology["adikings-shock-turret-to-laser-turret"].unit.ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "productivity-science-pack", 1 }
      }
end

if mods["bzgold2"] and mods["ThemTharHills-Updated"] then
    util.add_product("trace-gold-from-copper", { type = "item", name = "platinum-powder", amount=1, independent_probability=0.1})
    util.add_unlock("gold-processing", "platinum-ingot")
end

if mods["LasingAround-Updated"] then
    util.replace_ingredient("carbon-dioxide-laser", "petroleum-gas", "carbon-dioxide", 100)
end

if mods["bzgas2"] then
    util.add_product("gas-reforming",  { type = "fluid", name = "carbon-dioxide", amount = 50 })
end

if mods["Chromium2"] then
    util.add_ingredient("polyethylene-plastic", "sodium-hydroxide", 4)
end

if mods["space-exploration"] then

    se_delivery_cannon_recipes["hydrogen-peroxide-barrel"] = {name= "hydrogen-peroxide-barrel"}
    se_delivery_cannon_recipes["nitrate-barrel"] = {name= "nitrate-barrel"}
    se_delivery_cannon_recipes["nitrous-oxide-barrel"] = {name= "nitrous-oxide-barrel"}
    se_delivery_cannon_recipes["carbon-dioxide-barrel"] = {name= "carbon-dioxide-barrel"}
    se_delivery_cannon_recipes["sulfur-dioxide-barrel"] = {name= "sulfur-dioxide-barrel"}
    se_delivery_cannon_recipes["sulfur-trioxide-barrel"] = {name= "sulfur-trioxide-barrel"}
    se_delivery_cannon_recipes["vitalic-slurry-barrel"] = {name= "vitalic-slurry-barrel"}

    util.replace_some_ingredient("se-bioscrubber","se-vitalic-acid", 100, "lithium-peroxide", 10)
    util.add_ingredient("se-biochemical-resistance-data", "vitalic-residue", 1)
    util.set_ingredient("se-biochemical-resistance-data", "se-empty-data", 2)
    util.set_product_amount("se-biochemical-resistance-data", "se-biochemical-resistance-data", 2)
    util.set_product_amount("se-biochemical-resistance-data", "se-junk-data", 2)
    util.remove_ingredient("se-vitalic-reagent", "lithium-chloride")
    util.remove_ingredient("se-vitalic-reagent", "se-vitamelange-extract")
    util.add_ingredient("se-vitalic-reagent", "vitalic-extract", 4)

    if mods["Limestone2"] then
        util.add_product("calcium-plate", { type = "fluid", name = "carbon-dioxide", amount = 10 })
    end

    if mods["bztungsten2"] then
        util.remove_ingredient("se-space-biochemical-laboratory", "graphene")
        util.replace_ingredient("se-space-biochemical-laboratory", glass_name, "smart-glass", 80)

        util.remove_ingredient("se-space-growth-facility", "graphene")
        util.replace_ingredient("se-space-growth-facility", glass_name, "smart-glass", 300)

        util.remove_ingredient("se-space-mirror", "silver-plate")
        util.replace_ingredient("se-space-mirror", glass_name, "smart-glass", 8)

        util.remove_ingredient("se-space-mirror-alternate", "silver-plate")
        util.replace_ingredient("se-space-mirror-alternate", glass_name, "smart-glass", 2)

        util.add_prerequisite("se-space-biochemical-laboratory","tungsten-chemistry")
    end
    if mods["Cobalt2"] then
        util.replace_ingredient("cobalt-carbide", "cobalt-plate", "cobalt-nanotubes", 6)
        util.replace_ingredient("cobalt-electromagnet", "cobalt-plate", "cobalt-nanotubes", 4)

        util.add_ingredient("se-tensile-strength-data","cobalt-nanotubes", 1)
        util.set_ingredient("se-tensile-strength-data", "se-empty-data", 2)
        util.set_product_amount("se-tensile-strength-data", "se-tensile-strength-data", 2)

        util.add_ingredient("se-holmium-cable","cobalt-nanotubes", 1)
        util.set_ingredient("se-holmium-cable", "se-holmium-plate", 1)

        if mods["Chromium2"] then
            util.add_ingredient("beryllium-heat-resistant-low-density-structure", "cobalt-nanotubes", 3)
        end
    end
end