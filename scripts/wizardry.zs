// Wizardry.zs
// By CJWilk

#reloadable

// Imports

import mods.gregtech.recipe.RecipeMap;


// GT Machines

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");

// Glass Orb

recipes.remove(<wizardry:orb>);

alloy_smelter.recipeBuilder()
	.inputs([<ore:dustSmallGlass> * 2, <metaitem:shape.mold.ball>])
	.outputs(<wizardry:orb>)
	.duration(60)
	.EUt(24)
	.buildAndRegister();
