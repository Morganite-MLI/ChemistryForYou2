local util = require("__bzlib__/data-util")

local lithium = mods["Krastorio2"] and "kr-lithium" or "lithium"

if mods["space-exploration"] then
  data:extend({{
    type = "item-subgroup",
    name = "chemical",
    group = "resources",
    order = "a"
  }})
else
  data:extend({{
    type = "item-subgroup",
    name = "chemical",
    group = "intermediate-products",
    order = "a"
  }})
end

if mods["ThemTharHills-Updated"] then
if (mods["bzfoundry2"] and mods["BrassTacks-Updated"]) and (mods["bzlead2"] and mods["bzgold2"]) then
data:extend({
  {
    type = "recipe",
    name = "silver-pyrometallurgi",
    categories = {"founding"},
    main_product = "silver-ore",
    subgroup = "raw-material",
    order = "s",
    enabled = false,
    energy_required = 24,
    ingredients = {{type="item", name="zinc-ore", amount=10}, {type="item", name="lead-ore", amount=10}},
    results = {{type="item", name="silver-ore", amount=5},{type="item", name="gold-ore", amount=1, independent_probability=0.6}},
  }
})
end
end
local fluidFiltrationCraft = "chemistry"
if mods["Krastorio2"] then
  fluidFiltrationCraft = "kr-fluid-filtration"
end

local sodium_aluminate_ingredients = {{type="item", name="aluminium-hydroxide", amount=10}, {type="item", name="sodium-hydroxide", amount=10}, {type="fluid", name="water", amount=50}}
if mods["EndgameCombat"] then
  sodium_aluminate_ingredients = {{type="item", name="aluminium-hydroxide", amount=10}, {type="fluid", name="lye", amount=50}}
end

local fuel_subgroup = "chemical"
  if data.raw["item-subgroup"]["fuel"] then
    fuel_subgroup = "fuel"
  end

local alumHydroxideSmeltIcon = (mods["Krastorio2"] and
{
  { icon = "__base__/graphics/icons/iron-plate.png", icon_size = 64},
  { icon = "__ChemistryForYou2__/graphics/icons/aluminium-hydroxide.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
} or {
  { icon = "__base__/graphics/icons/iron-plate.png", icon_size = 64},
})

if mods["bzaluminum2"] then
  alumHydroxideSmeltIcon = (mods["Krastorio2"] and
{
  { icon = "__bzaluminum2__/graphics/icons/alumina.png", icon_size = 128},
  { icon = "__ChemistryForYou2__/graphics/icons/aluminium-hydroxide.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
} or {
  { icon = "__bzaluminum2__/graphics/icons/alumina.png", icon_size = 128},
})
end
local sodaLimeGlassCategory = "crafting"

if not data.raw.item["glass"] and not data.raw.item["kr-glass"] then
  data:extend({
    {
      type = "item",
      name = "glass",
      icon = "__ChemistryForYou2__/graphics/icons/glass.png",
      icon_size = 64,
      group = "resources",
      subgroup = "raw-resource",
      order = "g",
      stack_size = 200,
    }
  })
  if mods["Krastorio2"] then
    sodaLimeGlassCategory = "smelting"
  end
end

data:extend({
  {
    type = "item",
    name = "sodium-hydroxide",
    icon = "__ChemistryForYou2__/graphics/icons/sodium-hydroxide.png",
    icon_size = 128,
    group = "resources",
    subgroup = "raw-resource",
    order = "s",
    stack_size = 200,
  },
  {
    type = "item",
    name = "sodium-diuranate",
    icon = "__ChemistryForYou2__/graphics/icons/sodium-diuranate.png",
    icon_size = 128,
    group = "resources",
    subgroup = "raw-resource",
    order = "s",
    stack_size = 200,
  },
  {
    type = "item",
    name = "sodium-carbonate",
    icon = "__ChemistryForYou2__/graphics/icons/sodium-carbonate.png",
    icon_size = 128,
    group = "resources",
    subgroup = "raw-resource",
    order = "s",
    stack_size = 200,
  },
  {
    type = "item",
    name = "aluminium-hydroxide",
    icon = "__ChemistryForYou2__/graphics/icons/aluminium-hydroxide.png",
    icon_size = 128,
    group = "resources",
    subgroup = "raw-resource",
    order = "a",
    stack_size = 200,
  },
  {
    type = "item",
    name = "sodium-aluminate",
    icon = "__ChemistryForYou2__/graphics/icons/sodium-aluminate.png",
    icon_size = 128,
    group = "resources",
    subgroup = "raw-resource",
    order = "a",
    stack_size = 200,
  },
  {
    type = "item",
    name = "zeolite",
    icon = "__ChemistryForYou2__/graphics/icons/zeolite.png",
    icon_size = 128,
    group = "resources",
    subgroup = "raw-resource",
    order = "z",
    stack_size = 100,
  },
  {
    type = "item",
    name = "lithium-hydroxide",
    icon = "__ChemistryForYou2__/graphics/icons/lithium-hydroxide.png",
    icon_size = 128,
    group = "resources",
    subgroup = "chemical",
    order = "l",
    stack_size = 200,
  },
  {
    type = "item",
    name = "lithium-peroxide",
    icon = "__ChemistryForYou2__/graphics/icons/lithium-peroxide.png",
    icon_size = 128,
    group = "resources",
    subgroup = "chemical",
    order = "l",
    stack_size = 200,
  },
  {
    type = "item",
    name = "lithium-carbonate",
    icon = "__ChemistryForYou2__/graphics/icons/lithium-carbonate.png",
    icon_size = 128,
    group = "resources",
    subgroup = "chemical",
    order = "l",
    stack_size = 200,
  },
  {
    type = "fluid",
    name = "carbon-dioxide",
    default_temperature = 25,
    max_temperature = 100,
    auto_barrel = true,
    base_color = { r = 0.50, g = 0.50, b = 0.50 },
    flow_color = { r = 0.50, g = 0.50, b = 0.50 },
    gas_temperature = 25,
    icon = "__ChemistryForYou2__/graphics/icons/carbon-dioxide.png",
    icon_size = 128,
    icon_mipmaps = 4,
    order = "c"
  },
  {
    type = "fluid",
    name = "sulfur-dioxide",
    default_temperature = 25,
    max_temperature = 100,
    auto_barrel = true,
    base_color = { r = 0.50, g = 0.50, b = 0.50 },
    flow_color = { r = 0.50, g = 0.50, b = 0.50 },
    gas_temperature = 25,
    icon = "__ChemistryForYou2__/graphics/icons/sulfur-dioxide.png",
    icon_size = 128,
    icon_mipmaps = 4,
    order = "s"
  },
  {
    type = "fluid",
    name = "hydrogen-peroxide",
    default_temperature = 25,
    max_temperature = 100,
    auto_barrel = true,
    base_color = { r = 0.50, g = 0.50, b = 0.50 },
    flow_color = { r = 0.50, g = 0.50, b = 0.50 },
    gas_temperature = 25,
    icon = "__ChemistryForYou2__/graphics/icons/hydrogen-peroxide.png",
    icon_size = 128,
    icon_mipmaps = 4,
    order = "h"
  },
  {
    type = "recipe",
    name = "sodium-carbonate",
    categories = {"chemistry"},
    icon = "__ChemistryForYou2__/graphics/icons/sodium-carbonate.png",
    icon_size = 128,
    main_product = "sodium-carbonate",
    subgroup = "chemical",
    order = "a",
    enabled = false,
    energy_required = 5,
    ingredients = {{type="item", name="sodium-hydroxide", amount=10},{type="fluid", name="carbon-dioxide", amount=50}},
    results = {{type="item", name="sodium-carbonate", amount=10},{type="fluid", name="water", amount=50}},
  },
  {
    type = "recipe",
    name = "aluminium-hydroxide",
    categories = {"chemistry"},
    icon = "__ChemistryForYou2__/graphics/icons/aluminium-hydroxide.png",
    icon_size = 128,
    main_product = "aluminium-hydroxide",
    subgroup = "chemical",
    order = "a",
    enabled = false,
    energy_required = 10,
    ingredients = {(data.raw.item["aluminum-plate"] and {type="item", name="aluminum-plate", amount=2}) or {type="item", name="iron-plate", amount=2}, {type="item", name="sodium-hydroxide", amount=2}, {type="fluid", name="water", amount=20}},
    results = {{type="item", name="aluminium-hydroxide", amount=2}, (data.raw.fluid["kr-hydrogen"] and {type="fluid", name="kr-hydrogen", amount=30}) or {type="fluid", name="water", amount=10}},
  },
  {
    type = "recipe",
    name = "aluminium-hydroxide-smelting",
    categories = {"smelting"},
    order = "alumina",
    icons = alumHydroxideSmeltIcon,
    enabled = false,
    energy_required = 18,
    ingredients = {{type="item", name="aluminium-hydroxide", amount=10}},
    results = {(data.raw.item["alumina"] and {type="item", name="alumina", amount=10}) or {type="item", name="iron-plate", amount=10}}
  }
})

local sodium_diuranate_ingredients = {{type="item", name="sodium-hydroxide", amount = 10}, { type = "fluid", name = "water", amount = 100 }}
if data.raw.item[mods["Krastorio2"] and "kr-sand" or "sand"] then
  table.insert(sodium_diuranate_ingredients, {type="item", name=mods["Krastorio2"] and "kr-sand" or "sand", amount=1})
end
data:extend({
  {
    type = "recipe",
    name = "sodium-diuranate",
    categories = {fluidFiltrationCraft},
    order = "s",
    icon = "__ChemistryForYou2__/graphics/icons/sodium-diuranate.png",
    icon_size = 128,
    main_product = "sodium-diuranate",
    subgroup = "chemical",
    enabled = false,
    energy_required = 12,
    ingredients = sodium_diuranate_ingredients,
    results = {{type = "item", name="sodium-diuranate", amount=1, independent_probability=0.05}, (data.raw.fluid["chemical-waste"] and { type = "fluid", name = "chemical-waste", amount = 90 }) or { type = "fluid", name = "water", amount = 90 }}
  },
  {
    type = "recipe",
    name = "sodium-diuranate-smelting",
    localised_name = { "item-name.uranium-ore" },
    categories = {"smelting"},
    order = "u",
    icons = (mods["Krastorio2"] and
        {
          { icon = "__base__/graphics/icons/uranium-ore.png", icon_size = 64},
          { icon = "__ChemistryForYou2__/graphics/icons/sodium-diuranate.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
        } or {
          { icon = "__base__/graphics/icons/uranium-ore.png", icon_size = 64},
        }),
    enabled = false,
    energy_required = 18,
    ingredients = {{type="item", name="sodium-diuranate", amount=10}},
    results = {{type="item", name="uranium-ore", amount=1}}
  },
  {
    type = "recipe",
    name = "carbon-dioxide",
    categories = {"chemistry"},
    subgroup = "raw-material",
    order = "c",
    enabled = false,
    energy_required = 4,
    ingredients = {(data.raw.fluid["gas"] and { type = "fluid", name = "gas", amount = 20 }) or { type = "fluid", name = "crude-oil", amount = 10 }},
    results = {{ type = "fluid", name = "carbon-dioxide", amount = 100 }},
  },
  {
    type = "recipe",
    name = "zeolite",
    categories = {"chemistry"},
    icon = "__ChemistryForYou2__/graphics/icons/zeolite.png",
    icon_size = 128,
    main_product = "zeolite",
    subgroup = "chemical",
    order = "a",
    enabled = false,
    energy_required = 8,
    ingredients = {{type="item", name="sodium-aluminate", amount=5},(data.raw.item["silica"] and {type="item", name="silica", amount=5}) or {type="item", name="stone", amount=5}, {type="fluid", name="water", amount=100}},
    results = {{type="item", name="zeolite", amount=10}},
  },
  {
    type = "recipe",
    name = "sodium-aluminate",
    categories = {"chemistry"},
    icon = "__ChemistryForYou2__/graphics/icons/sodium-aluminate.png",
    icon_size = 128,
    main_product = "sodium-aluminate",
    subgroup = "chemical",
    order = "a",
    enabled = false,
    energy_required = 8,
    ingredients = sodium_aluminate_ingredients,
    results = {{type="item", name="sodium-aluminate", amount=10}},
  },
  {
    type = "recipe",
    name = "lithium-hydroxide-lubricant",
    categories = {"chemistry"},
    subgroup = "chemical",
    order = "p",
    enabled = false,
    energy_required = 12,
    ingredients = {{type="item", name="lithium-hydroxide", amount = 4 }, { type = "fluid", name = "light-oil", amount = 25 }},
    results = {{ type = "fluid", name = "lubricant", amount = 50 }},
  },
  {
    type = "recipe",
    name = "lithium-hydroxide-purification",
    icons = {
      { icon = "__ChemistryForYou2__/graphics/icons/lithium-hydroxide.png", icon_size = 128},
      { icon = "__ChemistryForYou2__/graphics/icons/lithium-carbonate.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
    },
    categories = {"chemistry"},
    subgroup = "chemical",
    main_porduct = "lithium-hydroxide",
    order = "l",
    enabled = false,
    energy_required = 8,
    ingredients = {{type="item", name="lithium-carbonate", amount = 10 }, { type = "fluid", name = "water", amount = 200 }},
    results = {{type="item", name="lithium-hydroxide", amount = 10 }, { type = "fluid", name = "carbon-dioxide", amount = 50 }, { type = "fluid", name = "water", amount = 50 }},
  },
  {
    type = "recipe",
    name = "lithium-peroxide",
    icon = "__ChemistryForYou2__/graphics/icons/lithium-peroxide.png",
    icon_size = 128,
    categories = {"chemistry"},
    subgroup = "chemical",
    main_porduct = "lithium-peroxide",
    order = "l",
    enabled = false,
    energy_required = 5,
    ingredients = {{type="item", name="lithium-hydroxide", amount = 10 }, { type = "fluid", name = "hydrogen-peroxide", amount = 100 }},
    results = {{type="item", name="lithium-peroxide", amount = 10 }, { type = "fluid", name = "hydrogen-peroxide", amount = 50 }, { type = "fluid", name = "water", amount = 50 }},
  },
  {
    type = "recipe",
    name = "lithium-hydroxide",
    categories = {"chemistry"},
    subgroup = "chemical",
    order = "l",
    enabled = false,
    energy_required = 2,
    ingredients = {(data.raw.item[lithium] and {type="item", name=lithium,amount =  10 }) or {type="item", name="stone", amount = 10 }, {type="item", name="sodium-hydroxide", amount = 10 }},
    results = {{type="item", name="lithium-hydroxide", amount = 10 }},
  }
})

local hydrogen_peroxide_ingredients = {(data.raw.fluid["kr-hydrogen"] and { type = "fluid", name = "kr-hydrogen", amount = 50 }) or { type = "fluid", name = "water", amount = 100 }}
if data.raw.fluid["kr-oxygen"] then
  table.insert(hydrogen_peroxide_ingredients, { type = "fluid", name = "kr-oxygen", amount = 50 })
end
if data.raw.item["palladium-ingot"] then
  table.insert(hydrogen_peroxide_ingredients, {type="item", name="palladium-ingot", amount=1})
end
data:extend({
  {
    type = "recipe",
    name = "hydrogen-peroxide",
    icon = "__ChemistryForYou2__/graphics/icons/hydrogen-peroxide.png",
    icon_size = 128,
    categories = {"chemistry"},
    subgroup = "chemical",
    order = "h",
    enabled = false,
    energy_required = 10,
    ingredients = hydrogen_peroxide_ingredients,
    results = {{ type = "fluid", name = "hydrogen-peroxide", amount = 50 }},
  }
})

local hydrogen_peroxide_disproportionation_ingredients = {{ type = "fluid", name = "hydrogen-peroxide", amount = 100 }}
local hydrogen_peroxide_disproportionation_results = {{ type = "fluid", name = "water", amount = 50 }}
if data.raw.item["platinum-ingot"] then
  table.insert(hydrogen_peroxide_disproportionation_ingredients, {type="item", name="platinum-ingot", amount=1})
end
if data.raw.fluid["kr-oxygen"] then
  table.insert(hydrogen_peroxide_disproportionation_results, { type = "fluid", name = "kr-oxygen", amount = 25 })
end

data:extend({
  {
    type = "recipe",
    name = "hydrogen-peroxide-disproportionation",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    categories = {"chemistry"},
    subgroup = "chemical",
    main_porduct = "water",
    order = "h",
    enabled = false,
    energy_required = 8,
    ingredients = hydrogen_peroxide_disproportionation_ingredients,
    results = hydrogen_peroxide_disproportionation_results,
  },
  {
    type = "recipe",
    name = "hydrogen-peroxide-rocket-fuel",
    icons = {
      { icon = "__base__/graphics/icons/rocket-fuel.png", icon_size = 64},
      { icon = "__ChemistryForYou2__/graphics/icons/hydrogen-peroxide.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
    },
    categories = {"chemistry"},
    subgroup = fuel_subgroup,
    order = "h",
    enabled = false,
    energy_required = 10,
    ingredients = {{ type = "fluid", name = "hydrogen-peroxide", amount = 100 }, (data.raw.fluid["el_kerosene"] and { type = "fluid", name = "el_kerosene", amount = 200 }) or { type = "fluid", name = "light-oil", amount = 200 }},
    results = {{type="item", name="rocket-fuel", amount=1}},
  }
})

local nitrous_oxide_rocket_fuel_ingredients = {{ type = "fluid", name = "nitrous-oxide", amount = 1000 }}
if mods["space-exploration"] then
  table.insert(nitrous_oxide_rocket_fuel_ingredients, { type = "fluid", name = "se-pyroflux", amount = 10 })
end
data:extend({
  {
    type = "recipe",
    name = "nitrous-oxide-rocket-fuel",
    icons = (mods["Krastorio2"] and
      {
        { icon = "__base__/graphics/icons/rocket-fuel.png", icon_size = 64},
        { icon = "__ChemistryForYou2__/graphics/icons/nitrous-oxide.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
      } or {
        { icon = "__base__/graphics/icons/rocket-fuel.png", icon_size = 64},
      }),
    categories = {"chemistry"},
    subgroup = fuel_subgroup,
    order = "h",
    enabled = false,
    energy_required = 6,
    ingredients = nitrous_oxide_rocket_fuel_ingredients,
    results = {{type="item", name="rocket-fuel", amount=1}},
  },
  {
    type = "fluid",
    name = "nitrous-oxide",
    default_temperature = 25,
    max_temperature = 100,
    auto_barrel = true,
    base_color = { r = 0.50, g = 0.50, b = 0.50 },
    flow_color = { r = 0.50, g = 0.50, b = 0.50 },
    gas_temperature = 25,
    icon = "__ChemistryForYou2__/graphics/icons/nitrous-oxide.png",
    icon_size = 128,
    icon_mipmaps = 4,
    order = "h"
  },
  {
    type = "recipe",
    name = "saltpeter-sulfuric-acid",
    icons = (mods["BrimStuff-Updated"] and
      {
        { icon = "__base__/graphics/icons/fluid/sulfuric-acid.png", icon_size = 64},
        { icon = "__BrimStuff-Updated__/graphics/icons/potassium-nitrate.png", icon_size = 64, scale=0.2, shift= {-8, -8}},
      } or {
        { icon = "__base__/graphics/icons/fluid/sulfuric-acid.png", icon_size = 64},
      }),
    categories = {"chemistry"},
    subgroup = "chemical",
    order = "a[fluid]-g[sulfuric-acid]",
    enabled = false,
    energy_required = 4,
    ingredients = {(data.raw.item["potassium-nitrate"] and {type="item", name="potassium-nitrate", amount=12}) or {type = "item", name = "stone", amount=12}, {type = "item", name = "sulfur", amount=9}, { type = "fluid", name = "steam", amount = 90 }},
    results = {{ type = "fluid", name = "sulfuric-acid", amount = 120 }, { type = "fluid", name = "nitrous-oxide", amount = 90 }},
  },
  {
    type = "recipe",
    name = "soda-lime-glass",
    categories = {sodaLimeGlassCategory},
    order = "a2[glass]",
    icons = (mods["Krastorio2"] and
        {
          { icon = "__Krastorio2Assets__/icons/items/glass.png", icon_size = 64},
          { icon = "__ChemistryForYou2__/graphics/icons/sodium-carbonate.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
        } or {
          { icon = "__ChemistryForYou2__/graphics/icons/glass.png", icon_size = 64},
        }),
    main_product = mods["Krastorio2"] and "kr-glass" or "glass",
    enabled = false,
    energy_required = 16,
    ingredients = {{type="item", name="sodium-carbonate", amount=10}, (data.raw.item["quicklime"] and {type = "item", name = "quicklime", amount=10}) or {type = "item", name = "stone", amount=5}, (data.raw.item["alumina"] and {type = "item", name = "alumina", amount=1}) or {type = "item", name = "iron-plate", amount=1}},
    results = {{type="item", name = mods["Krastorio2"] and "kr-glass" or "glass", amount=10}}
  }
})

local science_pack = "__ChemistryForYou2__/graphics/icons/productivity-science-pack.png"
  if mods["Krastorio2"] and mods["space-exploration"] then
    science_pack = "__Krastorio2Assets__/icons/cards/production-tech-card.png"
  end
  if mods["248k-Redux"] then
    local rich_water_filtration_results = {data.raw.item[lithium] and {type = "item", name=lithium, amount=5} or {type = "item", name="el_lithium", amount=5}, {type="fluid", name="water", amount=100}}
    if data.raw.item["cobaltite-ore"] then
      table.insert(rich_water_filtration_results, { type = "item", name = "cobaltite-ore", amount=1, independent_probability=0.2})
    end
    if data.raw.item["gold-ore"] then
      table.insert(rich_water_filtration_results, { type = "item", name = "gold-ore", amount=1, independent_probability=0.1})
    end
    if data.raw.item["platinum-powder"] then
      table.insert(rich_water_filtration_results, { type = "item", name = "platinum-powder", amount=1, independent_probability=0.1})
    end
    if data.raw.item["palladium-powder"] then
      table.insert(rich_water_filtration_results, { type = "item", name = "palladium-powder", amount=1, independent_probability=0.1})
    end
    data:extend({
      {
        type = "recipe",
        name = "rich-water-filtration",
        categories = {fluidFiltrationCraft},
        icon = "__248k-Redux-graphics__/ressources/fluids/fi_dirty_water.png",
        icon_size = 64,
        group = "fi_item_group",
        subgroup = "fi_item_subgroup_f",
        order = "a-b",
        enabled = false,
        energy_required = 10,
        ingredients = {{type="fluid", name="fi_dirty_water", amount=100}},
        results = rich_water_filtration_results,
      },
      {
        type = "recipe",
        name = "nuclear-waste-extraction",
        categories = {"chemistry"},
        icons = {
          { icon = "__248k-Redux-graphics__/ressources/fission/fi_fuel/fi_fuel_plutonium239_item.png", icon_size = 64},
          { icon = "__248k-Redux-graphics__/ressources/fission/fi_materials/fi_materials_waste.png", icon_size = 64, scale=0.25, shift= {-8, -8}},
        },
        group = "fi_item_group",
        subgroup = "fi_item_subgroup_f",
        order = "a-b",
        enabled = false,
        energy_required = 60,
        ingredients = {data.raw.fluid["kr-nitric-acid"] and {type="fluid", name="kr-nitric-acid", amount=100} or {type="fluid", name="sulfuric-acid", amount=100}, {type="item", name="fi_waste", amount=1}},
        results = {{type="item", name="fi_plutonium239", amount=1, independent_probability=0.05}, {type="item", name="uranium-238", amount=1, independent_probability=0.1}, {type="item", name="fi_thorium232", amount=1, independent_probability=0.2}},
      }
    })
  end
if mods["Krastorio2"] then
  local ammonium_nitrate_explosive_ingredients = {{type="item", name="ammonium-nitrate", amount = 10 }}
  if data.raw.item["tnt"] then
    table.insert(ammonium_nitrate_explosive_ingredients, {type="item", name="tnt", amount = 4 })
  end
  if data.raw.item["nylon"] then
    table.insert(ammonium_nitrate_explosive_ingredients, {type="item", name="nylon", amount = 8 })
  end
  local sulfur_trioxide_ingredients = {{ type = "fluid", name = "sulfur-dioxide", amount = 100 }, { type = "fluid", name = "kr-oxygen", amount = 50 }}
  if data.raw.item["platinum-ingot"] then
    table.insert(sulfur_trioxide_ingredients, {type="item", name="platinum-ingot", amount=1})
  end
  local sulfur_trioxide_results = {{ type = "fluid", name = "sulfur-trioxide", amount = 100 }}
  if data.raw.item["platinum-ingot"] then
    table.insert(sulfur_trioxide_results, {type="item", name="platinum-ingot", amount=1, independent_probability=0.6})
  end
data:extend({
  {
    type = "fluid",
    name = "sulfur-trioxide",
    default_temperature = 25,
    max_temperature = 100,
    auto_barrel = true,
    base_color = { r = 0.50, g = 0.50, b = 0.50 },
    flow_color = { r = 0.50, g = 0.50, b = 0.50 },
    gas_temperature = 25,
    icon = "__ChemistryForYou2__/graphics/icons/sulfur-trioxide.png",
    icon_size = 128,
    icon_mipmaps = 4,
    order = "s"
  },
  {
    type = "fluid",
    name = "nitrate",
    default_temperature = 25,
    max_temperature = 100,
    auto_barrel = true,
    base_color = { r = 0.50, g = 0.50, b = 0.50 },
    flow_color = { r = 0.50, g = 0.50, b = 0.50 },
    gas_temperature = 25,
    icon = "__ChemistryForYou2__/graphics/icons/nitrate.png",
    icon_size = 128,
    icon_mipmaps = 4,
    order = "c"
  },
  {
    type = "item",
    name = "ammonium-nitrate",
    icon = "__ChemistryForYou2__/graphics/icons/ammonium-nitrate.png",
    icon_size = 128,
    group = "resources",
    subgroup = "chemical",
    order = "s",
    stack_size = 200,
  },
  {
    type = "recipe",
    name = "ammonium-nitrate",
    categories = {"chemistry"},
    subgroup = "chemical",
    order = "a",
    enabled = false,
    energy_required = 8,
    ingredients = {{ type = "fluid", name = "nitrate", amount = 100 }, { type = "fluid", name = "kr-ammonia", amount = 100 }},
    results = {{type="item", name="ammonium-nitrate",amount = 10 }},
  },
  {
    type = "recipe",
    name = "ammonium-nitrate-explosives",
    categories = {"chemistry"},
    subgroup = "chemical",
    order = "j[explosives]",
    enabled = false,
    energy_required = 8,
    ingredients = ammonium_nitrate_explosive_ingredients,
    results = {{type="item", name="explosives", amount = 8 }},
  },
  {
    type = "recipe",
    name = "nitrate",
    categories = {"chemistry"},
    subgroup = "chemical",
    order = "n",
    enabled = false,
    energy_required = 10,
    ingredients = {{ type = "fluid", name = "kr-nitrogen", amount = 50 }, { type = "fluid", name = "kr-oxygen", amount = 150 }},--should be made from Nitric acid but this works for now
    results = {{ type = "fluid", name = "nitrate", amount = 100 }},
  },
  {
    type = "recipe",
    name = "carbon-dioxide-condensation",
    categories = {"kr-atmosphere-condensation"},
    subgroup = "raw-material",
    order = "c",
    enabled = false,
    energy_required = 18,
    ingredients = {},
    results = {{ type = "fluid", name = "carbon-dioxide", amount = 200 }},
  },
  {
    type = "recipe",
    name = "sulfur-trioxide",
    icon = "__ChemistryForYou2__/graphics/icons/sulfur-trioxide.png",
    icon_size = 128,
    categories = {"chemistry"},
    subgroup = "chemical",
    main_porduct = "sulfur-trioxide",
    order = "a[fluid]-i[sulfur]",
    enabled = false,
    energy_required = 14,
    ingredients = sulfur_trioxide_ingredients,
    results = sulfur_trioxide_results,
  },
  {
    type = "recipe",
    name = "sulfur-trioxide-hydration",
    icons = {
      { icon = "__base__/graphics/icons/fluid/sulfuric-acid.png", icon_size = 64},
      { icon = "__ChemistryForYou2__/graphics/icons/sulfur-trioxide.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
    },
    categories = {"chemistry"},
    subgroup = "chemical",
    order = "a[fluid]-h[sulfuric-acid]",
    enabled = false,
    energy_required = 6,
    ingredients = {{ type = "fluid", name = "sulfur-trioxide", amount = 100 }, { type = "fluid", name = "water", amount = 100 }},
    results = {{ type = "fluid", name = "sulfuric-acid", amount = 100 }},
  },
  {
    type = "recipe",
    name = "sulfur-smelting",
    icons = {
      { icon = "__ChemistryForYou2__/graphics/icons/sulfur-trioxide.png", icon_size = 128},
      { icon = "__base__/graphics/icons/sulfur.png", icon_size = 64, scale=0.3, shift= {-8, -8}},
    },
    categories = {"smelting"},
    subgroup = "chemical",
    order = "a[fluid]-i[sulfur]",
    enabled = false,
    energy_required = 10,
    ingredients = {{type = "item", name = "sulfur",amount =  10 }, { type = "fluid", name = "kr-oxygen", amount = 150 }},
    results = {{ type = "fluid", name = "sulfur-trioxide", amount = 100 }},
  },
  {
    type = "recipe",
    name = "grow-wood-with-carbon-dioxide",
    localised_name = { "item-name.wood" },
    categories = {"kr-bioprocessing"},
    subgroup = "chemical",
    main_porduct = "wood",
    order = "a-b",
    enabled = false,
    energy_required = 60,
    ingredients = {{ type = "fluid", name = "water", amount = 800 }, { type = "fluid", name = "carbon-dioxide", amount = 400 }},
    results = {{type="item", name="wood", amount=40}},
  },
  {
    type = "recipe",
    name = "water-softening",
    categories = {"chemistry"},
    subgroup = "chemical",
    order = "w",
    enabled = false,
    energy_required = 3,
    ingredients = {{type = "item", name = "sodium-carbonate", amount = 10 }, { type = "fluid", name = "kr-mineral-water", amount = 100 }},
    results = {{ type = "fluid", name = "water", amount = 100 }},
  }
})

if mods["Limestone2"] then
  local oil_subgroup = "chemical"
  if data.raw["item-subgroup"]["oil"] then
    oil_subgroup = "oil"
  end
  data:extend({
    {
      type = "item",
      name = "calcium-sulfite",
      icon = "__ChemistryForYou2__/graphics/icons/calcium-sulfite.png",
      icon_size = 128,
      group = "resources",
      subgroup = "raw-resource",
      order = "s",
      stack_size = 100,
    },
    {
      type = "recipe",
      name = "air-scrubing-oil-processing",
      categories = {"oil-processing"},
      icons = {
        { icon = "__base__/graphics/icons/fluid/light-oil.png", icon_size = 64},
        { icon = "__Limestone2__/graphics/icons/limestone-powder.png", icon_size = 64, scale=0.3, shift= {-8, -8}},
      },
      subgroup = oil_subgroup,
      order = "b-c",
      enabled = false,
      energy_required = 4,
      ingredients = {(data.raw.fluid["filterd-oil"] and { type = "fluid", name = "filterd-oil", amount = 100 }) or { type = "fluid", name = "crude-oil", amount = 100 }, { type = "fluid", name = "water", amount = 50 }, {type="item", name="limestone-powder", amount=10}},
      results = {{ type = "fluid", name = "heavy-oil", amount = 30 }, { type = "fluid", name = "light-oil", amount = 70 }, { type = "fluid", name = "carbon-dioxide", amount = 100 }, { type = "item", name = "calcium-sulfite", amount=10 }},
    },
    {
      type = "recipe",
      name = "calcium-sulfite-reaction",
      categories = {"chemistry"},
      icons = {
        { icon = "__ChemistryForYou2__/graphics/icons/sulfur-dioxide.png", icon_size = 128},
        { icon = "__ChemistryForYou2__/graphics/icons/calcium-sulfite.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
      },
      subgroup = "chemical",
      order = "a[fluid]-i[sulfur]",
      enabled = false,
      energy_required = 4,
      ingredients = {{type="item", name="calcium-sulfite", amount=10}, { type = "fluid", name = "kr-hydrogen-chloride", amount = 100 }},
      results = {{ type = "fluid", name = "sulfur-dioxide", amount = 50 }, { type = "fluid", name = "water", amount = 50 }},--Hard water
    }
  })
end

if mods["Cobalt2"] then
  data:extend({
    {
      type = "item",
      name = "cobalt-hydroxide",
      icon = "__ChemistryForYou2__/graphics/icons/cobalt-hydroxide.png",
      icon_size = 128,
      group = "resources",
      subgroup = "raw-resource",
      order = "c",
      stack_size = 200,
    },
    {
      type = "item",
      name = "cobalt-nanotubes",
      icon = "__ChemistryForYou2__/graphics/icons/cobalt-nanotubes.png",
      icon_size = 128,
      group = "resources",
      subgroup = "raw-resource",
      order = "c",
      stack_size = 200,
    },
    {
      type = "recipe",
      name = "cobalt-hydroxide",
      categories = {"chemistry"},
      subgroup = "chemical",
      order = "c",
      enabled = false,
      energy_required = 8,
      ingredients = {{type = "item", name = "cobalt-plate", amount = 10 }, {type = "item", name = "sodium-hydroxide", amount = 10 }},
      results = {{type = "item", name = "cobalt-hydroxide", amount = 5 }},
    },
    {
      type = "recipe",
      name = "cobalt-nanotubes",
      categories = {"chemistry"},
      subgroup = "chemical",
      order = "c",
      enabled = false,
      energy_required = 10,
      ingredients = {{type = "item", name = "cobalt-hydroxide", amount = 5 }, { type = "fluid", name = "nitrate", amount = 50 }},
      results = {{type = "item", name = "cobalt-nanotubes", amount = 5 }},
    }
  })
end

if mods["bzsilicon2"] then
  data:extend({
    {
      type = "recipe",
      name = "silica-extraction",
      categories = {fluidFiltrationCraft},
      order = "s",
      icons = (mods["Krastorio2"] and
          {
            { icon = "__Krastorio2Assets__/icons/items/silicon.png", icon_size = 64},
            { icon = "__ChemistryForYou2__/graphics/icons/sodium-aluminate.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
          } or {
            { icon = "__Krastorio2Assets__/icons/items/silicon.png", icon_size = 64},
          }),
      main_product = "silica",
      subgroup = "chemical",
      enabled = false,
      energy_required = 10,
      ingredients = {{type="item", name="sodium-aluminate", amount=10}, { type = "fluid", name = "water", amount = 100 }},
      results = {{type="item", name="silica", amount=10}, {type="item", name="sodium-aluminate", amount=9}, { type = "fluid", name = "water", amount = 90 }}
    }
  })
  if data.raw.item["aluminum-plate"] then
    data:extend({
      {
        type = "recipe",
        name = "advanced-silicon-processing",
        categories = {"smelting"},
        order = "g",
        icons = (mods["Krastorio2"] and
            {
              { icon = "__bzsilicon2__/graphics/icons/silicon.png", icon_size = 64},
              { icon = "__bzaluminum2__/graphics/icons/aluminum-plate.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
            } or {
              { icon = "__bzsilicon2__/graphics/icons/silicon.png", icon_size = 64},
            }),
        main_product = mods["Krastorio2"] and "kr-silicon" or "silicon",
        subgroup = "intermediate-product",
        enabled = false,
        energy_required = 10,
        ingredients = {{type="item", name="silica", amount=9}, {type = "item", name = "aluminum-plate", amount=12}},
        results = {{type="item", name=mods["Krastorio2"] and "kr-silicon" or "silicon", amount=9}, {type = "item", name = "alumina", amount=6}}
      }
    })
  end
  if mods["bzgas2"] then
    data:extend({
      {
        type = "recipe",
        name = "zeolite-formaldehyde",
        localised_name = { "item-name.zeolite" },
        categories = {"chemistry"},
        order = "a[fluid]-g[formaldaehyde]",
        icons = (mods["Krastorio2"] and
            {
              { icon = "__bzgas2__/graphics/icons/formaldehyde.png", icon_size = 128},
              { icon = "__ChemistryForYou2__/graphics/icons/zeolite.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
            } or {
              { icon = "__bzgas2__/graphics/icons/formaldehyde.png", icon_size = 128},
            }),
        main_product = "formaldehyde",
        subgroup = "fluid-recipes",
        enabled = false,
        energy_required = 4,
        ingredients = {{ type = "fluid", name = "gas", amount = 50 }, {type="item", name="zeolite", amount=1}},
        results = {{type = "item", name="zeolite", amount=1, independent_probability=0.9}, { type = "fluid", name = "sulfur-dioxide", amount = 20 }, { type = "fluid", name = "formaldehyde", amount = 30 }}
      },
    })
  end
  if mods["Nylon2"] then
    data:extend({
      {
        type = "recipe",
        name = "tissue-digestion",
        categories = {"chemistry"},
        order = "c",
        icons = {
              { icon = "__Nylon2__/graphics/icons/coal-tar.png", icon_size = 64},
              { icon = "__Krastorio2Assets__/icons/items/biomass.png", icon_size = 64, scale=0.2, shift= {-8, -8}},},
        subgroup = "chemical",
        enabled = false,
        energy_required = 4,
        ingredients = {{type="item", name="kr-biomass", amount=10}, {type = "item", name = "sodium-hydroxide", amount=10}},
        results = {{ type = "fluid", name = "coal-tar", amount = 10 }}
      },
    })
  end
end
if mods["bzchlorine2"] then
  data:extend({
    {
      type = "recipe",
      name = "sodium-hydroxide-reaction",
      categories = {"chemistry"},
      order = "s",
      icons = (mods["Krastorio2"] and
          {
            { icon = "__bzchlorine2__/graphics/icons/salt.png", icon_size = 128},
            { icon = "__ChemistryForYou2__/graphics/icons/sodium-hydroxide.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
          } or {
            { icon = "__bzchlorine2__/graphics/icons/salt.png", icon_size = 128},
          }),
      main_product = "salt",
      subgroup = "chemical",
      enabled = false,
      energy_required = 3,
      ingredients = {{type="item", name="sodium-hydroxide", amount=10}, { type = "fluid", name = "kr-hydrogen-chloride", amount = 100 }},
      results = {{type="item", name="salt", amount=10}, { type = "fluid", name = "water", amount = 100 }}
    },
  })
end
if data.raw.fluid["chemical-waste"] and mods["BrimStuff-Updated"] then
  data:extend({
    {
      type = "recipe",
      name = "sodium-hydroxide-waste-treatment",
      icons = {
          { icon = "__BrimStuff-Updated__/graphics/icons/chemical-waste.png", icon_size = 64},
          { icon = "__ChemistryForYou2__/graphics/icons/sodium-hydroxide.png", icon_size = 128, scale=0.125, shift= {-8, -8}},},
      categories = {"chemistry"},
      subgroup = "waste-treatment",
      order = "c",
      enabled = false,
      energy_required = 2,
      ingredients = {{ type = "fluid", name = "chemical-waste", amount = 300 }, { type="item", name="sodium-hydroxide", amount = 30}},
      results = {{ type = "fluid", name = "water", amount = 300 }},
    }
  })
end
end

local productivity_science_pack_ingredients = {}
if data.raw.item["crt"] then
  table.insert(productivity_science_pack_ingredients, {type="item", name="crt", amount=1})
end
if data.raw.item["nylon-machine-parts"] then
  table.insert(productivity_science_pack_ingredients, {type="item", name="nylon-machine-parts", amount=5})
end
if data.raw.item["blank-advanced-tech-card"] then
  table.insert(productivity_science_pack_ingredients, {type="item", name="blank-advanced-tech-card", amount=5})
end
if data.raw.item["air-bearing"] then
  table.insert(productivity_science_pack_ingredients, {type="item", name="air-bearing", amount=5})
end
if data.raw.fluid["radon"] then
  table.insert(productivity_science_pack_ingredients, { type = "fluid", name = "radon", amount = 5 })
end
data:extend({
  {
      type = "item",
      name = "productivity-science-pack",
      icon = science_pack,
      icon_size = 64,
      subgroup = "science-pack",
      stack_size = 200,
      order = "d",
      durability = 1,
      durability_description_key = "description.science-pack-remaining-amount-key",
      durability_description_value = "description.science-pack-remaining-amount-value",
  },
  {
    type = "recipe",
    name = "productivity-science-pack",
    categories = {"crafting-with-fluid"},
    enabled = false,
    energy_required = 20,
    ingredients = productivity_science_pack_ingredients,
    results = {{type="item", name="productivity-science-pack", amount=5}},
  }
})
util.add_productivity("productivity-science-pack")
table.insert(data.raw.lab["lab"].inputs, "productivity-science-pack")
if mods["Krastorio2"] then
  table.insert(data.raw.lab["kr-advanced-lab"].inputs, "productivity-science-pack")
end
if mods["space-exploration"] then
  local vitalic_extract_ingredients = {{type="item", name="se-vitamelange-extract", amount=1}, {type="fluid", name="carbon-dioxide", amount=10}}
  if data.raw.item["lithium-chloride"] then
    table.insert(vitalic_extract_ingredients, {"lithium-chloride", amount=1})
  end
  data:extend({
    {
      type = "fluid",
      name = "vitalic-slurry",
      default_temperature = 25,
      max_temperature = 100,
      auto_barrel = true,
      base_color = { r = 0.50, g = 0.50, b = 0.50 },
      flow_color = { r = 0.50, g = 0.50, b = 0.50 },
      gas_temperature = 25,
      icon = "__ChemistryForYou2__/graphics/icons/vitalic-slurry.png",
      icon_size = 64,
      icon_mipmaps = 4,
      order = "v"
    },
    {
      type = "item",
      name = "vitalic-residue",
      icon = "__ChemistryForYou2__/graphics/icons/vitalic-residue.png",
      icon_size = 128,
      group = "resources",
      subgroup = "vitamelange",
      order = "v",
      stack_size = 100,
    },
    {
      type = "item",
      name = "vitalic-extract",
      icon = "__ChemistryForYou2__/graphics/icons/vitalic-extract.png",
      icon_size = 128,
      group = "resources",
      subgroup = "vitamelange",
      order = "v",
      stack_size = 100,
    },
    {
      type = "recipe",
      name = "vitalic-purification",
      categories = {"chemistry"},
      main_product = "se-vitalic-acid",
      subgroup = "vitamelange",
      order = "g",
      enabled = false,
      energy_required = 8,
      ingredients = {{ type = "fluid", name = "vitalic-slurry", amount = 80 }, { type = "fluid", name = "water", amount = 20 }, {type="item", name="sodium-hydroxide", amount=2}},
      results = {{ type = "fluid", name = "se-vitalic-acid", amount = 100 }, {type="item", name="vitalic-residue", amount=2}},
    },
    {
      type = "recipe",
      name = "vitalic-residue-extract",
      categories = {"chemistry"},
      subgroup = "vitamelange",
      order = "g",
      enabled = false,
      energy_required = 10,
      ingredients = {{type="item", name="vitalic-residue", amount=10}},
      results = {{type="item", name="se-vitamelange-extract", amount=1}},
    },
    {
      type = "recipe",
      name = "vitalic-extract",
      categories = {"chemistry"},
      subgroup = "vitamelange",
      order = "g",
      enabled = false,
      energy_required = 8,
      ingredients = vitalic_extract_ingredients,
      results = {{type="item", name="vitalic-extract", amount=1}},
    },
    {
      type = "recipe",
      name = "matter-to-particle",
      icons =
        {
          { icon = "__space-exploration-graphics__/graphics/icons/fluid/particle-stream.png", icon_size = 64},
          { icon = "__base__/graphics/icons/stone.png", icon_size = 64, scale=0.3, shift= {-8, -8}},
        },
      categories = {"space-accelerator"},
      subgroup = "stream",
      order = "r-f",
      enabled = false,
      energy_required = 20,
      ingredients = {{type="item", name="stone", amount=10}, { type = "fluid", name = "se-plasma-stream", amount = 20 }},
      results = {{ type = "fluid", name = "se-particle-stream", amount = 10 }},
    }
  })
  util.add_unlock("se-vitalic-acid","vitalic-purification")
  util.add_unlock("se-vitalic-acid","vitalic-residue-extract")
  util.add_unlock("se-vitalic-reagent","vitalic-extract")
  util.add_productivity("vitalic-extract")
  util.add_productivity("vitalic-purification")
  table.insert(data.raw.lab["se-space-science-lab"].inputs, "productivity-science-pack")
  if mods["248k-Redux"] then
    local deep_space_ore_enrichment_ingredients = {{type="item", name="fu_space_probe_ore", amount=10}}
    if data.raw.item["cobalt-nanotubes"] then
      table.insert(deep_space_ore_enrichment_ingredients, {type="item", name="cobalt-nanotubes", amount=8})
    end
    if data.raw.item["gold-powder"] then
      table.insert(deep_space_ore_enrichment_ingredients, {type="item", name="gold-powder", amount=16})
    end
    if data.raw.item["se-kr-fine-imersite-powder"] then
      table.insert(deep_space_ore_enrichment_ingredients, {type="item", name="se-kr-fine-imersite-powder", amount=6})
    end
    data:extend({
      {
        type = "recipe",
        name = "vulcanite-enrichment",
        categories = {"fu_plasma_category"},
        subgroup = "vulcanite",
        order = "a-b",
        enabled = false,
        energy_required = 20,
        ingredients = {{type="item", name="se-vulcanite-block", amount=1}, {type="item", name="fi_thorium232", amount=10}},
        results = {{type="item", name="se-vulcanite-enriched", amount=5}},
      },
      {
        type = "recipe",
        name = "deep-space-ore-enrichment",
        categories = {"smelting"},
        subgroup = "naquium",
        order = "a-b",
        enabled = false,
        energy_required = 18,
        ingredients = deep_space_ore_enrichment_ingredients,
        results = {{type="item", name="se-naquium-ore", amount=5}},
      }
    })
    util.add_productivity("deep-space-ore-enrichment")
  end
  if mods["bztungsten2"] then
    local smart_glass_ingredients = {{type="item", name="tungsten-trioxide", amount=10}, {type="item", name=mods["Krastorio2"] and "kr-glass" or "glass", amount=10}}
    if data.raw.item["graphene"] then
      table.insert(smart_glass_ingredients, {type="item", name="graphene", amount=4})
    end
    data:extend({
      {
        type = "item",
        name = "tungsten-trioxide",
        icon = "__ChemistryForYou2__/graphics/icons/tungsten-trioxide.png",
        icon_size = 128,
        group = "resources",
        subgroup = "chemical",
        order = "t",
        stack_size = 200,
      },
      {
        type = "item",
        name = "smart-glass",
        icon = "__ChemistryForYou2__/graphics/icons/smart-glass.png",
        icon_size = 64,
        group = "resources",
        subgroup = "chemical",
        order = "t",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "tungsten-trioxide",
        icon = "__ChemistryForYou2__/graphics/icons/tungsten-trioxide.png",
        icon_size = 128,
        categories = {"smelting"},
        subgroup = "chemical",
        order = "t",
        enabled = false,
        energy_required = 24,
        ingredients = {{type="item", name="tungsten-ore", amount=5}, { type = "fluid", name = "kr-hydrogen-chloride", amount = 100 }},
        results = {{type="item", name="tungsten-trioxide", amount=5}, { type = "fluid", name = "water", amount = 50 }},
      },
      {
        type = "recipe",
        name = "tungsten-trioxide-smelting",
        icons = (mods["Krastorio2"] and
        {
          { icon = "__bztungsten2__/graphics/icons/tungsten-plate.png", icon_size = 128},
          { icon = "__ChemistryForYou2__/graphics/icons/tungsten-trioxide.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
        } or {
          { icon = "__bztungsten2__/graphics/icons/tungsten-plate.png", icon_size = 128},
        }),
        categories = {"smelting"},
        subgroup = "chemical",
        order = "t",
        enabled = false,
        energy_required = 30,
        ingredients = {{type="item", name="tungsten-trioxide", amount=10}, { type = "fluid", name = "kr-hydrogen", amount = 300 }},
        results = {{type="item", name="tungsten-plate", amount=10}, { type = "fluid", name = "water", amount = 300 }},
      },
      {
        type = "recipe",
        name = "smart-glass",
        categories = {"chemistry"},
        subgroup = "chemical",
        order = "g",
        enabled = false,
        energy_required = 12,
        ingredients = smart_glass_ingredients,
        results = {{type="item", name="smart-glass", amount=10}},
      }
    })
  end
end