// Tinkers.zs
// By CJWilk and MCAdventureCity


// Imports

import mods.pyrotech.SoakingPot;
import mods.pyrotech.Burn;
import mods.pyrotech.GraniteAnvil;
import mods.naturesaura.TreeRitual;

// Blank Pattern
recipes.remove(<tconstruct:pattern>);
recipes.addShapedMirrored("blank_pattern", <tconstruct:pattern> * 8, [[<pyrotech:material:23>, <thermalfoundation:material:801>],[<thermalfoundation:material:801>,<pyrotech:material:23>]]);

// Drying Rack

recipes.remove(<tconstruct:rack:1>);
recipes.addShaped(<tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab", Count: 1 as byte, Damage: 0 as short}}), [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<mysticalworld:silk_thread>, null, <mysticalworld:silk_thread>]]);


// Grout

recipes.remove(<tconstruct:soil>);
SoakingPot.addRecipe("grout", <tconstruct:soil>, <liquid:water>, <enderio:item_material:22>, 300);


// Seared Bricks

furnace.remove(<ore:ingotBrickSeared>, <tconstruct:soil>);

Burn.createBuilder("grout_seared_stone", <tconstruct:seared>, "tconstruct:soil")
	.setBurnStages(1)
	.setTotalBurnTimeTicks(1200)
	.setFluidProduced(<liquid:stone> * 500)
	.setFailureChance(0)
	.setRequiresRefractoryBlocks(true)
	.register();

GraniteAnvil.addRecipe("seared_bricks_anvil", <tconstruct:materials>, <tconstruct:seared>, 2, "pickaxe");

// Seared Melter and Furnace

recipes.remove(<tcomplement:melter>);
recipes.remove(<tconstruct:seared_furnace_controller>);

TreeRitual.addRecipe("tinkers_melter", <minecraft:sapling>, <tcomplement:melter>, 160, [<tconstruct:seared_tank>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]);
TreeRitual.addRecipe("tinkers_furnace", <minecraft:sapling>, <tconstruct:seared_furnace_controller>, 160, [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]);

// Tool & Crafting Stations

recipes.remove(<tconstruct:tooltables>);
recipes.remove(<tconstruct:tooltables:3>);

recipes.addShaped("tinkers_crafting_station", <tconstruct:tooltables>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:ingotIron>, <ore:plankWood>], [<ore:logWood>, null, <ore:logWood>]]);
recipes.addShaped("tinkers_tool_station", <tconstruct:tooltables:3>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:ingotBronze>, <ore:plankWood>], [<ore:logWood>, null, <ore:logWood>]]);

