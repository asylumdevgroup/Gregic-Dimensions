// Botania
// By CJWilk

// Imports

import mods.gregtech.recipe.RecipeMap;

// GT Machines

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

// Terrestrial Agglomeration Plate

recipes.remove(<botania:terraplate>);
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12483> * 3, <ore:screwStainlessSteel> * 2, <ore:manaDiamond>, <ore:runeManaB>])
	.fluidInputs([<liquid:astralsorcery.liquidstarlight> * 100])
	.outputs(<botania:terraplate> * 1)
	.duration(100)
	.EUt(500)
	.buildAndRegister();