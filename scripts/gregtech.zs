// GregTech.zs
// By CJWilk and MCAdventureCity

#reloadable

// Imports

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

// Machines

val compressor as RecipeMap = RecipeMap.getByName("compressor");
val mixer as RecipeMap = <recipemap:mixer>;
val pbf as RecipeMap = <recipemap:primitive_blast_furnace>;
val distillery as RecipeMap = <recipemap:distillery>;
val chemical_reactor as RecipeMap = <recipemap:chemical_reactor>;
val centrifuge as RecipeMap = <recipemap:centrifuge>;
val brewery as RecipeMap = <recipemap:brewery>;
val electrolyzer as RecipeMap = <recipemap:electrolyzer>;
val ebf as RecipeMap = <recipemap:electric_blast_furnace>;
val unifier as RecipeMap = <recipemap:unifier>;

// Empty Wooden Form

recipes.addShaped("wooden_form_knife", <gregtech:meta_item_1:347>, [[<ore:plankWood>],[<ore:craftingToolKnife>]]);

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
recipes.addShaped("steam_miner", <gregtech:machine:21>, [[<ore:gemDiamond>, <ore:pipeSmallFluidBronze>, <ore:gemDiamond>], [<bewitchment:cold_iron_pickaxe>, <gregtech:steam_casing>, <bewitchment:cold_iron_pickaxe>], [<ore:rotorSteel>, <ore:pipeSmallFluidBronze>, <ore:rotorSteel>]]);

// Firebricks

mixer.recipeBuilder()
	.inputs([<metaitem:brick.fireclay> * 4, <ore:dustGypsum>])
	.fluidInputs([<liquid:concrete> * 250])
	.outputs(<gregtech:metal_casing:1>)
	.duration(100)
	.EUt(16)
	.buildAndRegister();
	
recipes.remove(<gregtech:metal_casing:1>);
recipes.remove(<forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000}));

// Concrete

<recipemap:mixer>.findRecipe(16, [<metaitem:dustClay>, <metaitem:dustStone> * 3], [<liquid:water> * 500]).remove();
<recipemap:mixer>.findRecipe(16, [<metaitem:dustStone> * 2, <metaitem:dustCalcite>, <metaitem:dustGypsum>], [<liquid:water> * 1000]).remove();
<recipemap:mixer>.findRecipe(16, [<metaitem:dustStone> * 2, <metaitem:dustMarble>, <metaitem:dustGypsum>], [<liquid:water> * 1000]).remove();

mixer.recipeBuilder()
	.inputs([<metaitem:dustStone> *3, <metaitem:dustCalcite>, <metaitem:dustClay>])
	.fluidInputs([<liquid:water> * 1000])
	.fluidOutputs([<liquid:concrete> * 1500])
	.duration(200)
	.EUt(16)
	.buildAndRegister();

// Steam Machine Fixes

recipes.remove(<gregtech:machine:15>);
recipes.addShaped("steam_furnace", <gregtech:machine:15>, [[<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>], [<ore:pipeSmallFluidBronze>, <gregtech:steam_casing:1>, <ore:pipeSmallFluidBronze>], [<ore:pipeSmallFluidBronze>, <tconstruct:seared_furnace_controller>, <ore:pipeSmallFluidBronze>]]);

recipes.remove(<gregtech:machine:17>);
recipes.addShaped("steam_alloy_smelter", <gregtech:machine:17>, [[<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>], [<tconstruct:seared_furnace_controller>, <gregtech:steam_casing:1>, <tconstruct:seared_furnace_controller>], [<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>]]);

recipes.remove(<gregtech:machine:9>);
recipes.addShaped("steam_macerator", <gregtech:machine:9>, [[<ore:gemFlint>, <ore:pipeSmallFluidBronze>, <ore:gemFlint>], [<ore:pipeSmallFluidBronze>, <gregtech:steam_casing>, <ore:pipeSmallFluidBronze>], [<ore:craftingPiston>, <ore:pipeSmallFluidBronze>, <ore:craftingPiston>]]);


// Steam Mixer
recipes.addShaped("steam_mixer", <gregtech:machine:32016>, [[<ore:blockGlassColorless>,<ore:rotorBronze>,<ore:blockGlassColorless>],[<ore:blockGlassColorless>,<gregtech:steam_casing>,<ore:blockGlassColorless>],[<ore:pipeSmallFluidBronze>,<ore:pipeSmallFluidBronze>,<ore:pipeSmallFluidBronze>]]);

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
	.inputs([<ore:ingotInfusedIron> * 1, <minecraft:coal> * 2])
	.outputs(<ore:ingotSteel>.firstItem)
	.duration(400)
	.buildAndRegister();

pbf.recipeBuilder()
	.inputs([<ore:ingotInfusedIron> * 1, <minecraft:coal:1> * 2])
	.outputs(<ore:ingotSteel>.firstItem)
	.duration(400)
	.buildAndRegister();

pbf.recipeBuilder()
	.inputs([<ore:ingotInfusedIron> * 1, <ore:fuelCoke> * 1])
	.outputs(<ore:ingotSteel>.firstItem)
	.duration(400)
	.buildAndRegister();

pbf.recipeBuilder()
	.inputs([<ore:ingotInfusedIron> * 1, <ore:dustCoke> * 1])
	.outputs(<ore:ingotSteel>.firstItem)
	.duration(400)
	.buildAndRegister();


// Early GT Wires Require Bewitchment

var earlyGTCables as IItemStack[] = [
	<gregtech:cable_quadruple:23>, // 4x Cobalt
	<gregtech:cable_quadruple:2517>, // 4x Red Alloy
	<gregtech:cable_quadruple:112>, // 4x Tin
	<gregtech:cable_quadruple:55>, // 4x Lead
	<gregtech:cable_double:23>,
	<gregtech:cable_double:2517>,
	<gregtech:cable_double:112>,
	<gregtech:cable_double:55>,
	<gregtech:cable_single:23>,
	<gregtech:cable_single:2517>,
	<gregtech:cable_single:112>,
	<gregtech:cable_single:55>
];
for i in earlyGTCables {
	recipes.remove(i);
}

// Fixing Cable Combination

recipes.addShapeless(<gregtech:cable_single:23> * 2, [<gregtech:cable_double:23>]);
recipes.addShapeless(<gregtech:cable_double:23> * 2, [<gregtech:cable_quadruple:23>]);
recipes.addShapeless(<gregtech:cable_quadruple:23> * 2, [<gregtech:cable_octal:23>]);
recipes.addShapeless(<gregtech:cable_double:23>, [<gregtech:cable_single:23> * 2]);
recipes.addShapeless(<gregtech:cable_quadruple:23>, [<gregtech:cable_double:23> * 2]);

recipes.addShapeless(<gregtech:cable_single:55> * 2, [<gregtech:cable_double:55>]);
recipes.addShapeless(<gregtech:cable_double:55> * 2, [<gregtech:cable_quadruple:55>]);
recipes.addShapeless(<gregtech:cable_quadruple:55> * 2, [<gregtech:cable_octal:55>]);
recipes.addShapeless(<gregtech:cable_double:55>, [<gregtech:cable_single:55>, <gregtech:cable_double:55>]);
recipes.addShapeless(<gregtech:cable_quadruple:55>, [<gregtech:cable_double:55>, <gregtech:cable_double:55>]);

recipes.addShapeless(<gregtech:cable_single:112> * 2, [<gregtech:cable_double:112>]);
recipes.addShapeless(<gregtech:cable_double:112> * 2, [<gregtech:cable_quadruple:112>]);
recipes.addShapeless(<gregtech:cable_quadruple:112> * 2, [<gregtech:cable_octal:112>]);
recipes.addShapeless(<gregtech:cable_double:112>, [<gregtech:cable_single:112>, <gregtech:cable_single:112>]);
recipes.addShapeless(<gregtech:cable_quadruple:112>, [<gregtech:cable_double:112>, <gregtech:cable_double:112>]);

// recipes.addShapeless(<gregtech:cable:5080> * 2, [<gregtech:cable:6080>]);
// recipes.addShapeless(<gregtech:cable:6080> * 2, [<gregtech:cable:7080>]);
// recipes.addShapeless(<gregtech:cable:7080> * 2, [<gregtech:cable:8080>]);
// recipes.addShapeless(<gregtech:cable:6080>, [<gregtech:cable:5080> * 2]);
// recipes.addShapeless(<gregtech:cable:7080>, [<gregtech:cable:6080> * 2]);

// recipes.addShapeless(<gregtech:cable:5037> * 2, [<gregtech:cable:6037>]);
// recipes.addShapeless(<gregtech:cable:6037> * 2, [<gregtech:cable:7037>]);
// recipes.addShapeless(<gregtech:cable:7037> * 2, [<gregtech:cable:8037>]);
// recipes.addShapeless(<gregtech:cable:6037>, [<gregtech:cable:5037> * 2]);
// recipes.addShapeless(<gregtech:cable:7037>, [<gregtech:cable:6037> * 2]);

// Empty Cell Early

recipes.addShaped("empty_cell", <gregtech:meta_item_1:78>, [[<ore:craftingToolHardHammer>, <ore:plateIron>]]);


// LV Conveyor from Witches' Rubber

recipes.addShaped("lv_conveyor_witch", <metaitem:conveyor.module.lv>, [[<metaitem:plateWitchesRubber>, <metaitem:plateWitchesRubber>, <metaitem:plateWitchesRubber>],[<metaitem:electric.motor.lv>, <metaitem:cableGtSingleTin>, <metaitem:electric.motor.lv>],[<metaitem:plateWitchesRubber>, <metaitem:plateWitchesRubber>, <metaitem:plateWitchesRubber>]]);

// Coated Circuit Board

recipes.remove(<metaitem:board.coated>);


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

// LV Ore Unifier
recipes.addShaped("ore_unifier", <gregtech:machine:32003>, [[<ore:plateSteel>,<ore:circuitLv>,<ore:plateSteel>],[<ore:gemZanite>,<gregtech:machine:986>,<ore:gemZanite>],[<ore:plateSteel>, <ore:plateInfusedIron>,<ore:plateSteel>]]);

// LV Distillery & Centrifuge Nerf

recipes.remove(<gregtech:machine:260>);
recipes.addShaped("lv_distillery", <gregtech:machine:260>, [[<ore:blockGlass>, <ore:springAluminium>, <ore:blockGlass>],[<ore:circuitLv>, <gregtech:machine:986>, <ore:circuitLv>],[<ore:cableGtSingleTin>, <metaitem:electric.pump.lv>, <ore:cableGtSingleTin>]]);

recipes.remove(<gregtech:machine:185>);
recipes.addShaped("lv_centrifuge", <gregtech:machine:185>, [[<ore:circuitLv>, <ore:plateAluminium>, <ore:circuitLv>],[<ore:cableGtSingleTin>, <gregtech:machine:986>, <ore:cableGtSingleTin>],[<ore:circuitLv>, <metaitem:electric.motor.lv>, <ore:circuitLv>]]);

// LV Distillery / Centrifuge Recipes to Bewitchment


// Early Aluminium Changes

<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:gemRuby>], null).remove();
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:gemGreenSapphire>], null).remove();
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:gemSapphire>], null).remove();
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:dustSapphire>], null).remove();
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:dustRuby>], null).remove();
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:dustGreenSapphire>], null).remove();

<recipemap:electrolyzer>.findRecipe(30, [<metaitem:dustSapphire> * 5], null).remove();
<recipemap:electrolyzer>.findRecipe(30, [<metaitem:dustGreenSapphire> * 5], null).remove();
<recipemap:electrolyzer>.findRecipe(60, [<metaitem:dustRuby> * 6], null).remove();

ebf.recipeBuilder()
	.inputs([<metaitem:gemZanite>])
	.outputs([<metaitem:nuggetAluminium> * 6, <metaitem:dustTinyDarkAsh>])
	.duration(320)
	.EUt(120)
	.property("temperature",1200)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs([<metaitem:gemGravitite>])
	.outputs([<metaitem:nuggetAluminium> * 6, <metaitem:dustTinyDarkAsh>])
	.duration(320)
	.EUt(120)
	.property("temperature",1200)
	.buildAndRegister();
	
ebf.recipeBuilder()
	.inputs([<metaitem:gemAquamarine>])
	.outputs([<metaitem:nuggetAluminium> * 6, <metaitem:dustTinyDarkAsh>])
	.duration(320)
	.EUt(120)
	.property("temperature",1200)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs([<metaitem:dustZanite>])
	.outputs([<metaitem:nuggetAluminium> * 6])
	.duration(400)
	.EUt(120)
	.property("temperature",1200)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs([<metaitem:dustGravitite>])
	.outputs([<metaitem:nuggetAluminium> * 6])
	.duration(400)
	.EUt(120)
	.property("temperature",1200)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs([<metaitem:dustAquamarine>])
	.outputs([<metaitem:nuggetAluminium> * 6])
	.duration(400)
	.EUt(120)
	.property("temperature",1200)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs([<metaitem:dustRuby> * 6])
	.outputs([<metaitem:dustChrome>, <metaitem:dustAluminium> * 2])
	.fluidOutputs([<liquid:oxygen> * 3000])
	.EUt(120)
	.duration(80)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs([<metaitem:dustSapphire> * 5])
	.outputs([<metaitem:dustAluminium> * 2])
	.fluidOutputs([<liquid:oxygen> * 3000])
	.EUt(120)
	.duration(80)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs([<metaitem:dustGreenSapphire> * 5])
	.outputs([<metaitem:dustAluminium> * 2])
	.fluidOutputs([<liquid:oxygen> * 3000])
	.EUt(120)
	.duration(80)
	.buildAndRegister();

// Mana Recipe Fix

<recipemap:electrolyzer>.findRecipe(30, null, [<liquid:mana> * 1000]).remove();

// Redstone * 9
electrolyzer.recipeBuilder()
	.fluidInputs([<liquid:mana> * 11000])
	.outputs([<minecraft:redstone> * 9])
	.fluidOutputs([<liquid:mana_fluid> * 2000])
	.duration(2000)
	.EUt(30)
	.buildAndRegister();



// Redstone Alloy

mixer.recipeBuilder()
	.inputs([<minecraft:redstone> * 3,<metaitem:dustSilicon>, <metaitem:dustSteel> * 2])
	.outputs([<metaitem:dustRedstoneAlloy> * 6])
	.EUt(30)
	.duration(60)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs([<metaitem:dustRedstoneAlloy>])
	.outputs([<metaitem:ingotRedstoneAlloy>])
	.EUt(120)
	.duration(1500)
	.property("temperature", 1200)
	.buildAndRegister();
	
// Electric Blast Furnace

recipes.remove(<metaitem:electric_blast_furnace>);
recipes.addShaped("ebf_new", <metaitem:electric_blast_furnace>, [[<calculator:reinforcedfurnace>, <gregtech:metal_casing:2>, <calculator:reinforcedfurnace>], [<ore:circuitLv>, <gregtech:metal_casing:2>, <ore:circuitLv>], [<metaitem:cableGtSingleTin>, <ore:circuitLv>, <metaitem:cableGtSingleTin>]]); 