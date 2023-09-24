// Nether Backport.zs
// By CJWilk

#reloadable

// Imports

import mods.gregtech.recipe.RecipeMap;

// GT Machines

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");


// Netherite Ingots

recipes.remove(<netherbackport:netheriteingot>);

alloy_smelter.recipeBuilder()
	.inputs([<ore:ingotDemonicMetal>, <netherbackport:netheritescrap> * 4])
	.outputs(<netherbackport:netheriteingot> * 1)
	.duration(100)
	.EUt(16)
	.buildAndRegister();