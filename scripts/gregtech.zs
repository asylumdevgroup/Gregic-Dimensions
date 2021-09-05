// GregTech.zs
// By CJWilk and MCAdventureCity

// Imports

import mods.gregtech.recipe.RecipeMap;

// Machines

val compressor as RecipeMap = RecipeMap.getByName("compressor");
val mixer as RecipeMap = RecipeMap.getByName("mixer");


// Wood Pulp from Mortar and Wood
recipes.addShaped("wood_pulp_mortar", <gregtech:meta_item_1:2196> * 2, [[<ore:logWood>],[<gregtech:meta_tool:12>]]);

// GT Steam Boilers

recipes.remove(<gregtech:machine:1>);
recipes.addShaped("small_steam_coal_boiler", <gregtech:machine:1>, [[<ore:plateBronze>, <ore:plateInfusedIron>, <ore:plateBronze>], [<ore:plateBronze>, null, <ore:plateBronze>], [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);
<gregtech:machine:1>.addTooltip(format.red("Not recommended. Use Thermal Dynamos instead."));

// Bronze Casings

recipes.remove(<gregtech:machine_casing:10>);
recipes.remove(<gregtech:machine_casing:11>);

recipes.addShaped("regular_bronze_casing", <gregtech:machine_casing:10>, [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [<ore:plateInfusedIron>, <ore:craftingToolHardHammer>, <ore:plateInfusedIron>], [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]]);
recipes.addShaped("bricked_bronze_casing", <gregtech:machine_casing:11>, [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [<ore:plateInfusedIron>, <ore:craftingToolHardHammer>, <ore:plateInfusedIron>], [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);

// Red Alloy from Dust

recipes.addShapeless("red_alloy_dust", <gregtech:meta_item_1:2237>, [<ore:dustCopper>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]);

// Steam Chunk Miner

recipes.remove(<gregtech:machine:4212>);
recipes.addShaped("steam_miner", <gregtech:machine:4212>, [[<ore:gemDiamond>, <ore:pipeSmallBronze>, <ore:gemDiamond>], [<bewitchment:cold_iron_pickaxe>, <gregtech:machine_casing:10>, <bewitchment:cold_iron_pickaxe>], [<ore:rotorSteel>, <ore:pipeSmallBronze>, <ore:rotorSteel>]]);

// Fireclay

