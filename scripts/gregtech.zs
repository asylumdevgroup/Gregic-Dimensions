// GregTech.zs
// By CJWilk and MCAdventureCity

// Imports

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import moretweaker.bewitchment.WitchesCauldron;
import moretweaker.bewitchment.Distillery;


// Machines

val compressor as RecipeMap = RecipeMap.getByName("compressor");
val mixer as RecipeMap = RecipeMap.getByName("mixer");
val pbf as RecipeMap = <recipemap:primitive_blast_furnace>;

// Wood Pulp from Mortar and Wood
recipes.addShaped("wood_pulp_mortar", <gregtech:meta_dust:1617> * 2, [[<ore:logWood>],[<ore:craftingToolMortar>]]);

// GT Steam Boilers

recipes.remove(<gregtech:machine:1>);
recipes.addShaped("small_steam_coal_boiler", <gregtech:machine:1>, [[<ore:plateBronze>, <ore:plateInfusedIron>, <ore:plateBronze>], [<ore:plateBronze>, null, <ore:plateBronze>], [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);
<gregtech:machine:1>.addTooltip(format.red("Not recommended if you have not used them before, as Thermal Dynamos are safer."));

// GT Crafting Station can any OreDict workbench (Not Just Vanilla)
recipes.remove(<gregtech:machine:1647>);
recipes.addShaped("gt_crafting_station",<gregtech:machine:1647>, [[<ore:chestWood>, <ore:workbench>, <ore:chestWood>], [<ore:plateBronze>, <gregtech:steam_casing>, <ore:plateBronze>], [<ore:plateBronze>, <ore:craftingToolHardHammer>, <ore:plateBronze>]]);

// Bronze Casings

recipes.remove(<gregtech:steam_casing>);
recipes.remove(<gregtech:steam_casing:1>);

recipes.addShaped("regular_bronze_casing", <gregtech:steam_casing>, [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [<ore:plateInfusedIron>, <ore:craftingToolHardHammer>, <ore:plateInfusedIron>], [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]]);
recipes.addShaped("bricked_bronze_casing", <gregtech:steam_casing:1>, [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [<ore:plateInfusedIron>, <ore:craftingToolHardHammer>, <ore:plateInfusedIron>], [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);

// Steam Chunk Miner

recipes.remove(<gregtech:machine:21>);
recipes.addShaped("steam_miner", <gregtech:machine:21>, [[<ore:gemDiamond>, <ore:pipeSmallFluidBronze>, <ore:gemDiamond>], [<bewitchment:cold_iron_pickaxe>, <gregtech:machine_casing:10>, <bewitchment:cold_iron_pickaxe>], [<ore:rotorSteel>, <ore:pipeSmallFluidBronze>, <ore:rotorSteel>]]);

// Firebricks

recipes.remove(<gregtech:metal_casing:1>);
mixer.recipeBuilder()
	.inputs([<metaitem:brick.fireclay> * 4, <ore:dustGypsum>])
	.fluidInputs([<liquid:concrete> * 250])
	.outputs(<gregtech:metal_casing:1>)
	.duration(100)
	.EUt(16)
	.buildAndRegister();
	
// Steam Machine Fixes

recipes.remove(<gregtech:machine:15>);
recipes.addShaped("steam_furnace", <gregtech:machine:15>, [[<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>], [<ore:pipeSmallFluidBronze>, <gregtech:machine_casing:11>, <ore:pipeSmallFluidBronze>], [<ore:pipeSmallFluidBronze>, <tconstruct:seared_furnace_controller>, <ore:pipeSmallFluidBronze>]]);

recipes.remove(<gregtech:machine:17>);
recipes.addShaped("steam_alloy_smelter", <gregtech:machine:17>, [[<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>], [<tconstruct:seared_furnace_controller>, <gregtech:machine_casing:11>, <tconstruct:seared_furnace_controller>], [<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>]]);

// HP Steam Recipe Buffs

recipes.remove(<gregtech:machine:16>);
recipes.addShaped("hp_steam_furnace", <gregtech:machine:16>, [[<ore:plateWroughtIron>, <ore:pipeTinyFluidSteel>, <ore:plateWroughtIron>], [<ore:pipeTinyFluidSteel>, <gregtech:steam_casing:3>, <ore:pipeTinyFluidSteel>], [<ore:plateWroughtIron>, <tconstruct:seared_furnace_controller>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:8>);
recipes.addShaped("hp_steam_extractor", <gregtech:machine:8>, [[<ore:plateWroughtIron>, <ore:pipeTinyFluidSteel>, <ore:plateWroughtIron>], [<ore:craftingPiston>, <gregtech:steam_casing:2>, <ore:blockGlass>], [<ore:plateWroughtIron>, <ore:pipeTinyFluidSteel>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:10>);
recipes.addShaped("hp_steam_macerator", <gregtech:machine:10>, [[<ore:gemDiamond>, <ore:plateWroughtIron>, <ore:gemDiamond>], [<ore:pipeTinyFluidSteel>, <gregtech:steam_casing:2>, <ore:pipeTinyFluidSteel>], [<ore:craftingPiston>, <ore:plateWroughtIron>, <ore:craftingPiston>]]);

recipes.remove(<gregtech:machine:12>);
recipes.addShaped("hp_steam_compressor", <gregtech:machine:12>, [[<ore:plateWroughtIron>, <ore:pipeTinyFluidSteel>, <ore:plateWroughtIron>], [<ore:craftingPiston>, <gregtech:steam_casing:2>, <ore:craftingPiston>], [<ore:plateWroughtIron>, <ore:pipeTinyFluidSteel>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:14>);
recipes.addShaped("hp_steam_forge_hammer", <gregtech:machine:14>, [[<ore:plateWroughtIron>, <ore:craftingPiston>, <ore:plateWroughtIron>], [<ore:pipeTinyFluidSteel>, <gregtech:steam_casing:2>, <ore:pipeTinyFluidSteel>], [<ore:plateWroughtIron>, <ore:craftingAnvil>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:18>);
recipes.addShaped("hp_steam_alloy_smelter", <gregtech:machine:18>, [[<ore:plateWroughtIron>, <ore:pipeTinyFluidSteel>, <ore:plateWroughtIron>], [<tconstruct:seared_furnace_controller>, <gregtech:steam_casing:3>, <tconstruct:seared_furnace_controller>], [<ore:plateWroughtIron>, <ore:pipeTinyFluidSteel>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:6>);
recipes.addShaped("hp_lava_boiler", <gregtech:machine:6>, [[<ore:plateWroughtIron>, <ore:plateSteel>, <ore:plateWroughtIron>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:plateWroughtIron>, <gregtech:steam_casing:3>, <ore:plateWroughtIron>]]);

recipes.remove(<gregtech:machine:2>);
recipes.addShaped("hp_coal_boiler", <gregtech:machine:2>, [[<ore:plateWroughtIron>, <ore:plateSteel>, <ore:plateWroughtIron>], [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>], [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);

// Steel Steam Hulls

recipes.remove(<gregtech:steam_casing:2>);
recipes.remove(<gregtech:steam_casing:3>);

recipes.addShaped("regular_steel_casing", <gregtech:steam_casing:2>, [[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>], [<ore:plateSteel>, <ore:craftingToolHardHammer>, <ore:plateSteel>], [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);
recipes.addShaped("bricked_steel_casing", <gregtech:steam_casing:3>, [[<ore:plateWroughtIron>, <ore:plateSteel>, <ore:plateWroughtIron>], [<ore:plateWroughtIron>, <ore:craftingToolHardHammer>, <ore:plateWroughtIron>], [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]]);


// Primitive Blast Furnace Changes

recipes.remove(<gregtech:machine:1000>);
recipes.addShaped("gt_pbf", <gregtech:machine:1000>, [[<ore:craftingToolHardHammer>, <ore:stickWroughtIron>, <ore:screwWroughtIron>], [<ore:plateWroughtIron>, <gregtech:metal_casing:1>, <ore:stickWroughtIron>], [<ore:craftingToolScrewdriver>, <ore:stickWroughtIron>, <ore:screwWroughtIron>]]);

pbf.recipeBuilder()
	.inputs(<ore:ingotInfusedIron> * 1)
	.outputs(<ore:ingotSteel>.firstItem * 1)
	.duration(400)
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

var full_wr_cell = <gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "witches_rubber", Amount: 1000}});

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

<gregtech:meta_dust_tiny:32003>.displayName = "Tiny Pile of Witches' Rubber Pulp";
<gregtech:meta_dust_small:32003>.displayName = "Small Pile of Witches' Rubber Pulp";
<gregtech:meta_dust:32003>.displayName = "Witches' Rubber Pulp";
<gregtech:meta_nugget:32003>.displayName = "Witches' Rubber Chip";
<gregtech:meta_ingot:32003>.displayName = "Witches' Rubber Bar";
<gregtech:meta_plate:32003>.displayName = "Witches' Rubber Sheet";

recipes.remove(<gregtech:meta_plate:32003>);

recipes.remove(<gregtech:meta_ring:32003>);
recipes.addShaped("correct_wr_ring", <gregtech:meta_ring:32003>, [[null, <ore:craftingToolKnife>, null], [null, <ore:plateWitchesRubber>, null]]);