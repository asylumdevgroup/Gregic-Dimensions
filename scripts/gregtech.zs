// GregTech.zs
// By CJWilk and MCAdventureCity

// Imports

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;

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

// Steam Chunk Miner

recipes.remove(<gregtech:machine:4212>);
recipes.addShaped("steam_miner", <gregtech:machine:4212>, [[<ore:gemDiamond>, <ore:pipeSmallBronze>, <ore:gemDiamond>], [<bewitchment:cold_iron_pickaxe>, <gregtech:machine_casing:10>, <bewitchment:cold_iron_pickaxe>], [<ore:rotorSteel>, <ore:pipeSmallBronze>, <ore:rotorSteel>]]);

// Firebricks

recipes.remove(<gregtech:metal_casing:1>);
mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32015> * 4)
	.fluidInputs([<liquid:concrete> * 250])
	.outputs(<gregtech:metal_casing:1>)
	.duration(100)
	.EUt(16)
	.buildAndRegister();
	
// Steam Machine Fixes

recipes.remove(<gregtech:machine:15>);
recipes.addShaped("steam_furnace", <gregtech:machine:15>, [[<ore:pipeSmallBronze>, <ore:pipeSmallBronze>, <ore:pipeSmallBronze>], [<ore:pipeSmallBronze>, <gregtech:machine_casing:11>, <ore:pipeSmallBronze>], [<ore:pipeSmallBronze>, <tconstruct:seared_furnace_controller>, <ore:pipeSmallBronze>]]);

recipes.remove(<gregtech:machine:17>);
recipes.addShaped("steam_alloy_smelter", <gregtech:machine:17>, [[<ore:pipeSmallBronze>, <ore:pipeSmallBronze>, <ore:pipeSmallBronze>], [<tconstruct:seared_furnace_controller>, <gregtech:machine_casing:11>, <tconstruct:seared_furnace_controller>], [<ore:pipeSmallBronze>, <ore:pipeSmallBronze>, <ore:pipeSmallBronze>]]);

// HP Steam Recipe Buffs

recipes.remove(<gregtech:machine:16>);
recipes.addShaped("hp_steam_furnace", <gregtech:machine:16>, [[<ore:plateWroughtIron>, <ore:pipeTinySteel>, <ore:plateWroughtIron>], [<ore:pipeTinySteel>, <gregtech:machine_casing:13>, <ore:pipeTinySteel>], [<ore:plateWroughtIron>, <tconstruct:seared_furnace_controller>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:8>);
recipes.addShaped("hp_steam_extractor", <gregtech:machine:8>, [[<ore:plateWroughtIron>, <ore:pipeTinySteel>, <ore:plateWroughtIron>], [<ore:craftingPiston>, <gregtech:machine_casing:12>, <ore:blockGlass>], [<ore:plateWroughtIron>, <ore:pipeTinySteel>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:10>);
recipes.addShaped("hp_steam_macerator", <gregtech:machine:10>, [[<ore:gemDiamond>, <ore:plateWroughtIron>, <ore:gemDiamond>], [<ore:pipeTinySteel>, <gregtech:machine_casing:12>, <ore:pipeTinySteel>], [<ore:craftingPiston>, <ore:plateWroughtIron>, <ore:craftingPiston>]]);

recipes.remove(<gregtech:machine:12>);
recipes.addShaped("hp_steam_compressi=or", <gregtech:machine:12>, [[<ore:plateWroughtIron>, <ore:pipeTinySteel>, <ore:plateWroughtIron>], [<ore:craftingPiston>, <gregtech:machine_casing:12>, <ore:craftingPiston>], [<ore:plateWroughtIron>, <ore:pipeTinySteel>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:14>);
recipes.addShaped("hp_steam_forge_hammer", <gregtech:machine:14>, [[<ore:plateWroughtIron>, <ore:craftingPiston>, <ore:plateWroughtIron>], [<ore:pipeTinySteel>, <gregtech:machine_casing:12>, <ore:pipeTinySteel>], [<ore:plateWroughtIron>, <ore:craftingAnvil>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:18>);
recipes.addShaped("hp_steam_alloy_smelter", <gregtech:machine:18>, [[<ore:plateWroughtIron>, <ore:pipeTinySteel>, <ore:plateWroughtIron>], [<tconstruct:seared_furnace_controller>, <gregtech:machine_casing:13>, <tconstruct:seared_furnace_controller>], [<ore:plateWroughtIron>, <ore:pipeTinySteel>, <ore:plateWroughtIron>]]);


// Steel Steam Hulls

recipes.remove(<gregtech:machine_casing:12>);
recipes.remove(<gregtech:machine_casing:13>);

recipes.addShaped("regular_steel_casing", <gregtech:machine_casing:12>, [[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>], [<ore:plateSteel>, <ore:craftingToolHardHammer>, <ore:plateSteel>], [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);
recipes.addShaped("bricked_steel_casing", <gregtech:machine_casing:13>, [[<ore:plateWroughtIron>, <ore:plateSteel>, <ore:plateWroughtIron>], [<ore:plateWroughtIron>, <ore:craftingToolHardHammer>, <ore:plateWroughtIron>], [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);


// Primitive Blast Furnace Changes

recipes.remove(<gregtech:machine:510>);
recipes.addShaped("gt_pbf", <gregtech:machine:510>, [[<ore:craftingToolHardHammer>, <ore:stickWroughtIron>, <ore:screwWroughtIron>], [<ore:plateWroughtIron>, <gregtech:metal_casing:1>, <ore:stickWroughtIron>], [<ore:craftingToolScrewdriver>, <ore:stickWroughtIron>, <ore:screwWroughtIron>]]);

mods.gregtech.recipe.PBFRecipeBuilder.start()
    .input(<ore:ingotInfusedIron> * 1)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(400)
    .fuelAmount(2)
    .buildAndRegister();
	

// Early GT Wires Require Bewitchment

var earlyGTCables as IItemStack[] = [
	<gregtech:cable:7180>,
	<gregtech:cable:7017>,
	<gregtech:cable:7079>,
	<gregtech:cable:7237>,
	<gregtech:cable:7071>,
	<gregtech:cable:7035>,
	<gregtech:cable:6180>,
	<gregtech:cable:6017>,
	<gregtech:cable:6079>,
	<gregtech:cable:6237>,
	<gregtech:cable:6071>,
	<gregtech:cable:6035>,
	<gregtech:cable:5180>,
	<gregtech:cable:5017>,
	<gregtech:cable:5079>,
	<gregtech:cable:5237>,
	<gregtech:cable:5071>,
	<gregtech:cable:5035>
];
	for i in earlyGTCables {
	recipes.remove(i);
}