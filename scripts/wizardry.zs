// Wizardry.zs
// By CJWilk

// Imports

import mods.gregtech.recipe.RecipeMap;


// GT Machines

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");

// Glass Orb

recipes.remove(<wizardry:orb>);

alloy_smelter.recipeBuilder()
	.inputs([<ore:dustSmallGlass> * 2, <gregtech:meta_item_1:32307>])
	.outputs(<wizardry:orb>)
	.duration(60)
	.EUt(24)
	.buildAndRegister();
