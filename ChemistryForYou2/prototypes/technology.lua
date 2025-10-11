local util = require("data-util")

local science_pack = "__ChemistryForYou2__/graphics/icons/productivity-science-pack.png"
local science_pack_size = 64
local sodaPrerequ = {"advanced-material-processing"}
local alumChemPrerequ = {"advanced-material-processing"}
local rich_water_filtration_pre = {"productivity-science-pack"}
local lithiumChemPrerequ = {"chemical-science-pack"}
if mods["Krastorio2"] then
  sodaPrerequ = {"kr-fluids-chemistry"}
  alumChemPrerequ = {"kr-fluids-chemistry"}
  lithiumChemPrerequ = {"kr-advanced-chemistry"}
 if mods["space-exploration"] then
    science_pack = "__Krastorio2Assets__/technologies/production-tech-card.png"
    science_pack_size = 256
  end
end

local saltpeterPrerequ = {"chemical-science-pack"}
if mods["bztin"] then
  saltpeterPrerequ =  {"organic-chemistry"}
end

if mods["bzsilicon"] then
  rich_water_filtration_pre = {"water-filtration"}
end

local productivityPrerequ = {"chemical-science-pack"}
if mods["Tantalite2"]  then
  productivityPrerequ = {"cathode-ray-tube"}
end

local anthraquinonePrerequ = {"productivity-science-pack"}
if mods["Krastorio2"]  then
  anthraquinonePrerequ = {"productivity-science-pack", "kr-advanced-chemistry"}
end

data:extend(
  {
    {
      type = "technology",
      name = "productivity-science-pack",
      icon = science_pack,
      icon_size = science_pack_size,
      prerequisites = productivityPrerequ,
      effects = {
          {
            type = "unlock-recipe",
            recipe = "productivity-science-pack",
          }
      },
      unit =
      {
        count = 200,
        ingredients =
        {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 }
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "soda-lime-glass",
      icons = (mods["Krastorio2"] and
        {
          { icon = "__Krastorio2Assets__/icons/items/glass.png", icon_size = 64},
          { icon = "__ChemistryForYou2__/graphics/icons/sodium-carbonate.png", icon_size = 128, scale=0.25, shift= {-8, -8}},
        } or {
          { icon = "__ChemistryForYou2__/graphics/icons/sodium-carbonate.png", icon_size = 128},
        }),
      prerequisites = sodaPrerequ,
      effects = {
          {
              type = "unlock-recipe",
              recipe = "sodium-carbonate",
          },
          {
              type = "unlock-recipe",
              recipe = "carbon-dioxide",
          },
          {
              type = "unlock-recipe",
              recipe = "soda-lime-glass",
          }
      },
      unit =
      {
        count = 75,
        ingredients =
        {
          { "automation-science-pack", 1 }
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "aluminium-chemistry",
      icon = "__ChemistryForYou2__/graphics/icons/sodium-hydroxide.png",
      icon_size = 128,
      prerequisites = alumChemPrerequ,
      effects = {
          {
            type = "unlock-recipe",
            recipe = "aluminium-hydroxide",
          },
          {
              type = "unlock-recipe",
              recipe = "aluminium-hydroxide-smelting",
          }
      },
      unit =
      {
        count = 75,
        ingredients =
        {
          { "automation-science-pack", 1 }
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "anthraquinone-process",
      icon = "__ChemistryForYou2__/graphics/icons/hydrogen-peroxide.png",
      icon_size = 128,
      prerequisites = anthraquinonePrerequ,
      effects = {
          {
            type = "unlock-recipe",
            recipe = "hydrogen-peroxide",
          },
          {
            type = "unlock-recipe",
            recipe = "hydrogen-peroxide-disproportionation",
          }
      },
      unit =
      {
        count = 250,
        ingredients =
        {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "productivity-science-pack", 1 }
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "saltpeter-sulfuric-acid",
      icons = (mods["BrimStuff-Updated"] and
        {
          { icon = "__base__/graphics/icons/fluid/sulfuric-acid.png", icon_size = 64},
          { icon = "__BrimStuff-Updated__/graphics/icons/potassium-nitrate.png", icon_size = 64, scale=0.5, shift= {-8, -8}},
        } or {
          { icon = "__base__/graphics/icons/fluid/sulfuric-acid.png", icon_size = 64},
        }),
      prerequisites = saltpeterPrerequ,
      effects = {
          {
            type = "unlock-recipe",
            recipe = "saltpeter-sulfuric-acid",
          }
      },
      unit =
      {
        count = 150,
        ingredients =
        {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "productivity-science-pack", 1 }
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "nitrous-oxide-rocket-fuel",
      icons = (mods["Krastorio2"] and
      {
        { icon = "__base__/graphics/technology/rocket-fuel.png", icon_size = 256},
        { icon = "__ChemistryForYou2__/graphics/icons/nitrous-oxide.png", icon_size = 128, scale=0.6, shift= {-80, -80}},
      } or {
        { icon = "__base__/graphics/technology/rocket-fuel.png", icon_size = 256},
      }),
      prerequisites = {"saltpeter-sulfuric-acid", "rocket-fuel"},
      effects = {
          {
            type = "unlock-recipe",
            recipe = "nitrous-oxide-rocket-fuel",
          }
      },
      unit =
      {
        count = 125,
        ingredients =
        {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "productivity-science-pack", 1 }
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "lithium-chemistry",
      icon = "__ChemistryForYou2__/graphics/icons/lithium-peroxide.png",
      icon_size = 128,
      prerequisites = lithiumChemPrerequ,
      effects = {
          {
            type = "unlock-recipe",
            recipe = "lithium-peroxide",
          },
          {
            type = "unlock-recipe",
            recipe = "lithium-hydroxide-lubricant",
          },
          {
            type = "unlock-recipe",
            recipe = "lithium-hydroxide-purification",
          }
      },
      unit =
      {
        count = 175,
        ingredients =
        {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 }
        },
        time = 30
      }
    }
})

if mods["Krastorio2"] then
  util.add_unlock("soda-lime-glass","soda-lime-glass")
  util.add_unlock("kr-mineral-water-gathering","water-softening")
    data:extend(
        {
          {
            type = "technology",
            name = "ammonium-nitrate-explosives",
            icon = "__ChemistryForYou2__/graphics/technology/ammonium-nitrate-explosives.png",
            icon_size = 256,
            prerequisites = {"productivity-science-pack", "kr-advanced-chemistry", "explosives"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "ammonium-nitrate-explosives",
                },
                {
                  type = "unlock-recipe",
                  recipe = "ammonium-nitrate",
                },
                {
                  type = "unlock-recipe",
                  recipe = "nitrate",
                }
            },
            unit =
            {
              count = 250,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "productivity-science-pack", 1 }
              },
              time = 30
            }
          },
          {
            type = "technology",
            name = "carbon-dioxide-growing",
            icon = "__ChemistryForYou2__/graphics/icons/carbon-dioxide.png",
            icon_size = 128,
            prerequisites = {"productivity-science-pack", "kr-bio-processing"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "grow-wood-with-carbon-dioxide",
                }
            },
            unit =
            {
              count = 50,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "productivity-science-pack", 1 }
              },
              time = 30
            }
          },
          {
            type = "technology",
            name = "trace-uranium-extraction",
            icons = {
              { icon = "__base__/graphics/icons/uranium-ore.png", icon_size = 64},
              { icon = "__ChemistryForYou2__/graphics/icons/sodium-diuranate.png", icon_size = 128, scale=0.25, shift= {-8, -8}},
            },
            prerequisites = {"uranium-processing"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "sodium-diuranate",
                },
                {
                    type = "unlock-recipe",
                    recipe = "sodium-diuranate-smelting",
                }
            },
            unit =
            {
              count = 375,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 }
              },
              time = 30
            }
          },
          {
            type = "technology",
            name = "hydrogen-peroxide-rocket-fuel",
            icons = (mods["Krastorio2"] and
            {
                { icon = "__base__/graphics/technology/rocket-fuel.png", icon_size = 256},
                { icon = "__ChemistryForYou2__/graphics/icons/hydrogen-peroxide.png", icon_size = 128, scale=0.6, shift=  {-80, -80}},
            } or {
                { icon = "__base__/graphics/technology/rocket-fuel.png", icon_size = 256},
            }),
            prerequisites = {"anthraquinone-process", "rocket-fuel"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "hydrogen-peroxide-rocket-fuel",
                }
            },
            unit =
            {
              count = 225,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "productivity-science-pack", 1 }
              },
              time = 30
            }
          }
      })
    if mods["bzgas"] then
        data:extend(
        {
          {
            type = "technology",
            name = "microporous-material",
            icon = "__ChemistryForYou2__/graphics/icons/zeolite.png",
            icon_size = 128,
            prerequisites = {"aluminium-chemistry"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "zeolite",
                },
                {
                  type = "unlock-recipe",
                  recipe = "zeolite-formaldehyde",
                }
            },
            unit =
            {
              count = 150,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 }
              },
              time = 30
            }
          },
          {
            type = "technology",
            name = "sulfur-gas-processing",
            icon = "__ChemistryForYou2__/graphics/icons/sulfur-trioxide.png",
            icon_size = 128,
            prerequisites = {"microporous-material", "sulfur-processing"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "sulfur-trioxide",
                },
                {
                  type = "unlock-recipe",
                  recipe = "sulfur-trioxide-hydration",
                },
                {
                  type = "unlock-recipe",
                  recipe = "sulfur-smelting",
                }
            },
            unit =
            {
              count = 150,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 }
              },
              time = 30
            }
          }
        })
        if mods["bzchlorine"] then
          util.add_unlock("aluminium-chemistry", "sodium-hydroxide-reaction")
        end
        --Apperently I need electrolysis-2 tech for compatibility with EndgameCombat
        if mods["EndgameCombat"] then
            data:extend(
                {
                  {
                    type = "technology",
                    name = "electrolysis-2",
                    icon = "__EndgameCombat__/graphics/icons/lye.png",
                    icon_size = 32,
                    prerequisites = {"aluminium-chemistry"},
                    effects = {},
                    unit =
                    {
                      count = 50,
                      ingredients =
                      {
                        { "automation-science-pack", 1 },
                        { "logistic-science-pack", 1 }
                      },
                      time = 30
                    }
                  },
                })
        end
        if mods["bzsilicon"] then
            data:extend(
            {
              {
                type = "technology",
                name = "water-filtration",
                icon = "__Krastorio2Assets__/icons/entities/filtration-plant.png",
                icon_size = 64,
                prerequisites = {"productivity-science-pack", "aluminium-chemistry"},
                effects = {
                    {
                      type = "unlock-recipe",
                      recipe = "sodium-aluminate",
                    },
                    {
                      type = "unlock-recipe",
                      recipe = "silica-extraction",
                    }
                },
                unit =
                {
                  count = 200,
                  ingredients =
                  {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "productivity-science-pack", 1 }
                  },
                  time = 30
                }
              },
              {
                type = "technology",
                name = "advanced-silicon-processing",
                icon = "__Krastorio2Assets__/icons/items/silicon.png",
                icon_size = 64,
                prerequisites = {"productivity-science-pack"},
                effects = {
                    {
                      type = "unlock-recipe",
                      recipe = "advanced-silicon-processing",
                    }
                },
                unit =
                {
                  count = 250,
                  ingredients =
                  {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "productivity-science-pack", 1 }
                  },
                  time = 30
                }
              }
          })
        end
    end
    if mods["Limestone2"] then
      data:extend(
            {
              {
                type = "technology",
                name = "air-scrubing-oil-processing",
                icons = {{ icon = "__base__/graphics/icons/fluid/light-oil.png", icon_size = 64},
                { icon = "__Limestone2__/graphics/icons/limestone-powder.png", icon_size = 64, scale=0.3, shift= {-8, -8}},},
                prerequisites = {"productivity-science-pack", "aluminium-chemistry"},
                effects = {
                    {
                      type = "unlock-recipe",
                      recipe = "air-scrubing-oil-processing",
                    },
                    {
                      type = "unlock-recipe",
                      recipe = "calcium-sulfite-reaction",
                    }
                },
                unit =
                {
                  count = 175,
                  ingredients =
                  {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "productivity-science-pack", 1 }
                  },
                  time = 30
                }
              },
          })
    end
end

if mods["248k-Redux"] then
  data:extend(
      {
        {
          type = "technology",
          name = "rich-water-filtration",
          icon = "__248k-Redux-graphics__/ressources/fluids/fi_dirty_water.png",
          icon_size = 64,
          prerequisites = rich_water_filtration_pre,
          effects = {
              {
                type = "unlock-recipe",
                recipe = "rich-water-filtration",
              }
          },
          unit =
          {
            count = 200,
            ingredients =
            {
              { "automation-science-pack", 1 },
              { "logistic-science-pack", 1 },
              { "chemical-science-pack", 1 },
              { "productivity-science-pack", 1 }
            },
            time = 30
          }
        },
        {
          type = "technology",
          name = "nuclear-waste-extraction",
          icons = (mods["Krastorio2"] and
          {
              { icon = "__248k-Redux-graphics__/ressources/fission/fi_fuel/fi_fuel_plutonium239_item.png", icon_size = 64},
              { icon = "__248k-Redux-graphics__/ressources/fission/fi_materials/fi_materials_waste.png", icon_size = 64, scale=0.5, shift= {-8, -8}},
            } or {
              { icon = "__248k-Redux-graphics__/ressources/fission/fi_fuel/fi_fuel_plutonium239_item.png", icon_size = 64},
            }
          ),
          prerequisites = {"rich-water-filtration", "nuclear-power"},
          effects = {
              {
                type = "unlock-recipe",
                recipe = "nuclear-waste-extraction",
              }
          },
          unit =
          {
            count = 225,
            ingredients =
            {
              { "automation-science-pack", 1 },
              { "logistic-science-pack", 1 },
              { "chemical-science-pack", 1 },
              { "productivity-science-pack", 1 }
            },
            time = 30
          }
        },
  })
end

if mods["ThemTharHills-Updated"] then
    if (mods["bzfoundry"] and mods["BrassTacks-Updated"]) and (mods["bzlead"] and mods["bzgold"]) then
        data:extend(
        {
          {
            type = "technology",
            name = "silver-pyrometallurgi",
            icon = "__bzgold__/graphics/icons/silver-ore.png",
            icon_size = 128,
            prerequisites = {"productivity-science-pack"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "silver-pyrometallurgi",
                }
            },
            unit =
            {
              count = 250,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "productivity-science-pack", 1 }
              },
              time = 45
            }
          },
        })
    end
end
if mods["space-exploration"] then
  local ingMatterParticle ={
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"production-science-pack", 1},
    {"se-material-science-pack-3", 1},
    {"se-energy-science-pack-3", 1}
  }
  local preMatterParticle = {"se-energy-science-pack-3", "se-material-science-pack-3"}
  if mods["Krastorio2"] then
    ingMatterParticle ={
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      {"se-rocket-science-pack", 1},
      {"space-science-pack", 1},
      {"production-science-pack", 1},
      {"se-material-science-pack-3", 1},
      {"se-energy-science-pack-3", 1},
      {"kr-matter-tech-card", 1}
    }
    preMatterParticle = {"kr-matter-tech-card", "se-material-science-pack-3"}
  end

  data:extend(
    {
      {
        type = "technology",
        name = "matter-to-particle",
        icons =
        {
          { icon = "__space-exploration-graphics__/graphics/icons/fluid/particle-stream.png", icon_size = 64},
          { icon = "__base__/graphics/icons/stone.png", icon_size = 64, scale=0.3, shift= {-8, -8}},
        },
        prerequisites = preMatterParticle,
        effects = {
            {
              type = "unlock-recipe",
              recipe = "matter-to-particle",
            }
        },
        unit =
        {
          count = 500,
          ingredients = ingMatterParticle,
          time = 60
        }
      },
    })
if mods["bztungsten"] then
  data:extend(
        {
          {
            type = "technology",
            name = "tungsten-chemistry",
            icon = "__ChemistryForYou2__/graphics/icons/tungsten-trioxide.png",
            icon_size = 128,
            prerequisites = {"se-space-manufactory"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "tungsten-trioxide",
                },
                {
                  type = "unlock-recipe",
                  recipe = "tungsten-trioxide-smelting",
                },
                {
                  type = "unlock-recipe",
                  recipe = "smart-glass",
                }
            },
            unit =
            {
              count = 100,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1}
              },
              time = 45
            }
          },
        })
end
if mods["Cobalt2"] then
  data:extend(
        {
          {
            type = "technology",
            name = "cobalt-chemistry",
            icon = "__ChemistryForYou2__/graphics/icons/cobalt-hydroxide.png",
            icon_size = 128,
            prerequisites = {"space-science-pack"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "cobalt-hydroxide",
                },
                {
                  type = "unlock-recipe",
                  recipe = "cobalt-nanotubes",
                }
            },
            unit =
            {
              count = 100,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1}
              },
              time = 30
            }
          },
        })
        util.remove_prerequisite("cobalt-electromagnet","space-science-pack")
        util.remove_prerequisite("cobalt-carbide","space-science-pack")
        util.add_prerequisite("cobalt-electromagnet","cobalt-chemistry")
        util.add_prerequisite("cobalt-carbide","cobalt-chemistry")
end
if mods["248k-Redux"] then
  data:extend(
        {
          {
            type = "technology",
            name = "vulcanite-enrichment",
            icon = "__space-exploration-graphics__/graphics/icons/vulcanite-enriched.png",
            icon_size = 64,
            prerequisites = {"fu_plasma_tech", "se-material-science-pack-3"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "vulcanite-enrichment",
                }
            },
            unit =
            {
              count = 100,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
                {"se-material-science-pack-3", 1}
              },
              time = 30
            }
          },
          {
            type = "technology",
            name = "deep-space-ore-enrichment",
            icon = "__space-exploration-graphics__/graphics/icons/naquium-ore.png",
            icon_size = 64,
            prerequisites = {"se-deep-space-science-pack-2", "gr_stage_tech"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "deep-space-ore-enrichment",
                }
            },
            unit =
            {
              count = 300,
              ingredients =
              {
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
                {"se-material-science-pack-4", 1},
                {"se-deep-space-science-pack-2", 1},
              },
              time = 60
            }
          }
        })
end
end

if data.raw.technology["organic-chemistry"] then
  util.add_prerequisite("organic-chemistry","productivity-science-pack")
  data.raw.technology["organic-chemistry"].unit.ingredients[#data.raw.technology["organic-chemistry"].unit.ingredients+1] = {"productivity-science-pack", 1}
end

if data.raw.technology["indium-pcb-solder"] then
  util.add_prerequisite("indium-pcb-solder","productivity-science-pack")
  data.raw.technology["indium-pcb-solder"].unit.ingredients[#data.raw.technology["indium-pcb-solder"].unit.ingredients+1] = {"productivity-science-pack", 1}
end

if data.raw.technology["indium-pcb-solder"] then
  util.add_prerequisite("polyethylene-plastic","productivity-science-pack")
  data.raw.technology["polyethylene-plastic"].unit.ingredients[#data.raw.technology["polyethylene-plastic"].unit.ingredients+1] = {"productivity-science-pack", 1}
end

if mods["space-exploration"] then
  if mods["248k-Redux"] then
    data.raw.technology["nuclear-waste-extraction"].unit.ingredients[#data.raw.technology["nuclear-waste-extraction"].unit.ingredients+1] = {"se-rocket-science-pack", 1}
  end
    data.raw.technology["trace-uranium-extraction"].unit.ingredients[#data.raw.technology["trace-uranium-extraction"].unit.ingredients+1] = {"se-rocket-science-pack", 1}
end