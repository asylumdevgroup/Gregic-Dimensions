//scannable.zs
//By MCAdventureCity

import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = <recipemap:assembler>;

//Scanner
recipes.remove(<scannable:scanner>);
assembler.recipeBuilder()
	.inputs(<ore:plateColdIron> * 2, <metaitem:sensor.lv>, <ore:circuitLv> * 2, <metaitem:cableGtSingleTin> * 2, <ore:plateGold> * 2)
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<scannable:scanner>)
	.duration(200)
	.EUt(30)
	.buildAndRegister();

// Blank Scanner Module
recipes.remove(<scannable:module_blank>);
assembler.recipeBuilder()
	.inputs(<ore:plateColdIron> * 2, <metaitem:circuit_board.basic>, <metaitem:wireFineElectrum> * 4, <metaitem:wireGtSingleRedAlloy> * 2)
	.fluidInputs([<liquid:soldering_alloy> * 72])
	.outputs(<scannable:module_blank>)
	.duration(100)
	.EUt(30)
	.buildAndRegister();

//Common Ore Module
recipes.remove(<scannable:module_ore_common>);
assembler.recipeBuilder()
	.inputs(<scannable:module_blank>, <metaitem:plateBronze> * 2, <ore:circuitLv>)
	.outputs(<scannable:module_ore_common>)
	.duration(100)
	.EUt(30)
	.buildAndRegister();

//Rare Ore Module
recipes.remove(<scannable:module_ore_rare>);
assembler.recipeBuilder()
	.inputs(<scannable:module_blank>, <metaitem:plateDiamond> * 2, <ore:circuitLv>)
	.outputs(<scannable:module_ore_rare>)
	.duration(100)
	.EUt(30)
	.buildAndRegister();

//Block Module
recipes.remove(<scannable:module_block>);
assembler.recipeBuilder()
	.inputs(<scannable:module_blank>, <aether_legacy:enchanted_gravitite> * 2, <ore:circuitMv> * 2)
	.outputs(<scannable:module_block>)
	.duration(100)
	.EUt(120)
	.buildAndRegister();

//Range Module
recipes.remove(<scannable:module_range>);
assembler.recipeBuilder()
	.inputs(<scannable:module_blank>, <metaitem:plateEnderPearl> *2, <metaitem:emitter.lv>, <ore:circuitMv>)
	.outputs(<scannable:module_range>)
	.duration(100)
	.EUt(120)
	.buildAndRegister();
