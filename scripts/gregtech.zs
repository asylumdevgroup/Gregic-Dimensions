// GregTech.zs
// By CJWilk and MCAdventureCity

// Imports

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import moretweaker.bewitchment.WitchesCauldron;
import moretweaker.bewitchment.Distillery;


// Machines

val compressor as RecipeMap = RecipeMap.getByName("compressor");
val mixer as RecipeMap = RecipeMap.getByName("mixer");


// Wood Pulp from Mortar and Wood
recipes.addShaped("wood_pulp_mortar", <gregtech:meta_item_1:2196> * 2, [[<ore:logWood>],[<gregtech:meta_tool:12>]]);

// GT Steam Boilers

recipes.remove(<gregtech:machine:1>);
recipes.addShaped("small_steam_coal_boiler", <gregtech:machine:1>, [[<ore:plateBronze>, <ore:plateInfusedIron>, <ore:plateBronze>], [<ore:plateBronze>, null, <ore:plateBronze>], [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);
<gregtech:machine:1>.addTooltip(format.red("Not recommended if you have not used them before, as Thermal Dynamos are safer."));

// GT Crafting Station can any OreDict workbench (Not Just Vanilla)
recipes.remove(<gregtech:machine:825>);
recipes.addShaped("gt_crafting_station", <gregtech:machine:825>, [[<ore:chestWood>, <ore:workbench>, <ore:chestWood>], [<ore:plateBronze>, <gregtech:machine_casing:10>, <ore:plateBronze>], [<ore:plateBronze>, <ore:craftingToolHardHammer>, <ore:plateBronze>]]);

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

recipes.remove(<gregtech:machine:6>);
recipes.addShaped("hp_lava_boiler", <gregtech:machine:6>, [[<ore:plateWroughtIron>, <ore:plateSteel>, <ore:plateWroughtIron>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:plateWroughtIron>, <gregtech:machine_casing:13>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:2>);
recipes.addShaped("hp_coal_boiler", <gregtech:machine:2>, [[<ore:plateWroughtIron>, <ore:plateSteel>, <ore:plateWroughtIron>], [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>], [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);

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

// Fixing Cable Combination

recipes.addShapeless(<gregtech:cable:5017> * 2, [<gregtech:cable:6017>]);
recipes.addShapeless(<gregtech:cable:6017> * 2, [<gregtech:cable:7017>]);
recipes.addShapeless(<gregtech:cable:7017> * 2, [<gregtech:cable:8017>]);
recipes.addShapeless(<gregtech:cable:6017>, [<gregtech:cable:5017> * 2]);
recipes.addShapeless(<gregtech:cable:7017>, [<gregtech:cable:6017> * 2]);

recipes.addShapeless(<gregtech:cable:5035> * 2, [<gregtech:cable:6035>]);
recipes.addShapeless(<gregtech:cable:6035> * 2, [<gregtech:cable:7035>]);
recipes.addShapeless(<gregtech:cable:7035> * 2, [<gregtech:cable:8035>]);
recipes.addShapeless(<gregtech:cable:6035>, [<gregtech:cable:5035> * 2]);
recipes.addShapeless(<gregtech:cable:7035>, [<gregtech:cable:6035> * 2]);

recipes.addShapeless(<gregtech:cable:5071> * 2, [<gregtech:cable:6071>]);
recipes.addShapeless(<gregtech:cable:6071> * 2, [<gregtech:cable:7071>]);
recipes.addShapeless(<gregtech:cable:7071> * 2, [<gregtech:cable:8071>]);
recipes.addShapeless(<gregtech:cable:6071>, [<gregtech:cable:5071> * 2]);
recipes.addShapeless(<gregtech:cable:7071>, [<gregtech:cable:6071> * 2]);

recipes.addShapeless(<gregtech:cable:5079> * 2, [<gregtech:cable:6079>]);
recipes.addShapeless(<gregtech:cable:6079> * 2, [<gregtech:cable:7079>]);
recipes.addShapeless(<gregtech:cable:7079> * 2, [<gregtech:cable:8079>]);
recipes.addShapeless(<gregtech:cable:6079>, [<gregtech:cable:5079> * 2]);
recipes.addShapeless(<gregtech:cable:7079>, [<gregtech:cable:6079> * 2]);

recipes.addShapeless(<gregtech:cable:5080> * 2, [<gregtech:cable:6080>]);
recipes.addShapeless(<gregtech:cable:6080> * 2, [<gregtech:cable:7080>]);
recipes.addShapeless(<gregtech:cable:7080> * 2, [<gregtech:cable:8080>]);
recipes.addShapeless(<gregtech:cable:6080>, [<gregtech:cable:5080> * 2]);
recipes.addShapeless(<gregtech:cable:7080>, [<gregtech:cable:6080> * 2]);

recipes.addShapeless(<gregtech:cable:5037> * 2, [<gregtech:cable:6037>]);
recipes.addShapeless(<gregtech:cable:6037> * 2, [<gregtech:cable:7037>]);
recipes.addShapeless(<gregtech:cable:7037> * 2, [<gregtech:cable:8037>]);
recipes.addShapeless(<gregtech:cable:6037>, [<gregtech:cable:5037> * 2]);
recipes.addShapeless(<gregtech:cable:7037>, [<gregtech:cable:6037> * 2]);

// Empty Cell Early

recipes.addShaped("empty_cell", <gregtech:meta_item_1:32762>, [[<ore:craftingToolHardHammer>, <ore:plateDoubleIron>, <ore:craftingToolBendingCylinder>]]);

// Witches' Rubber Cell

var full_wr_cell = <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "witches_rubber", Amount: 1000}});

WitchesCauldron.addRecipe([full_wr_cell, <bewitchment:empty_jar>, <bewitchment:empty_jar>], [<bewitchment:essence_of_vitality>, <bewitchment:fiery_unguent>, <gregtech:meta_item_1:32627>, <gregtech:meta_item_1:32627>, <bewitchment:wood_ash>, <gregtech:meta_item_1:32762>]);

// Coated Circuit Board

recipes.remove(<gregtech:meta_item_2:32443>);
WitchesCauldron.addRecipe([<gregtech:meta_item_2:32443> * 3, <bewitchment:empty_jar>, <bewitchment:empty_jar>], [<bewitchment:essence_of_vitality>, <bewitchment:fiery_unguent>, <gregtech:meta_item_1:32627>, <gregtech:meta_item_1:32627>, <bewitchment:wood_ash>, <gregtech:meta_item_1:12196> * 3]);
WitchesCauldron.addRecipe([<gregtech:meta_item_2:32443> * 3, <gregtech:meta_item_1:32762>], [<gregtech:meta_item_1:12196> * 3, full_wr_cell]);

// 1x ULV/LV Wires w/ Witches' Rubber

WitchesCauldron.addRecipe([<gregtech:cable:5237> * 8, <gregtech:meta_item_1:32762>], [full_wr_cell, <gregtech:cable:237> * 8]);
WitchesCauldron.addRecipe([<gregtech:cable:5237> * 8, <bewitchment:empty_jar>, <bewitchment:empty_jar>], [<bewitchment:essence_of_vitality>, <bewitchment:fiery_unguent>, <gregtech:meta_item_1:32627>, <gregtech:meta_item_1:32627>, <bewitchment:wood_ash>, <gregtech:cable:237> * 8]);
WitchesCauldron.addRecipe([<gregtech:cable:5071> * 8, <gregtech:meta_item_1:32762>], [full_wr_cell, <gregtech:cable:71> * 8]);
WitchesCauldron.addRecipe([<gregtech:cable:5071> * 8, <bewitchment:empty_jar>, <bewitchment:empty_jar>], [<bewitchment:essence_of_vitality>, <bewitchment:fiery_unguent>, <gregtech:meta_item_1:32627>, <gregtech:meta_item_1:32627>, <bewitchment:wood_ash>, <gregtech:cable:71> * 8]);

// Witches' Rubber Fixes

<gregtech:meta_item_1:479>.displayName = "Tiny Pile of Witches' Rubber Pulp";
<gregtech:meta_item_1:1479>.displayName = "Small Pile of Witches' Rubber Pulp";
<gregtech:meta_item_1:2479>.displayName = "Witches' Rubber Pulp";
<gregtech:meta_item_1:9479>.displayName = "Witches' Rubber Chip";
<gregtech:meta_item_1:10479>.displayName = "Witches' Rubber Bar";
<gregtech:meta_item_1:12479>.displayName = "Witches' Rubber Sheet";

recipes.remove(<gregtech:meta_item_1:12479>);

recipes.remove(<gregtech:meta_item_1:18479>);
recipes.addShaped("correct_wr_ring", <gregtech:meta_item_1:18479>, [[null, <ore:craftingToolKnife>, null], [null, <gregtech:meta_item_1:12479>, null]]);