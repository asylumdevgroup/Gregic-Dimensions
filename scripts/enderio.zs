// Ender IO.zs
// By CJWilk

// Imports

import mods.enderio.AlloySmelter;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;

// GT Machines

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");

// Quite Clear Glass

mods.enderio.AlloySmelter.removeRecipe(<enderio:block_fused_glass>);

mods.tconstruct.Casting.addBasinRecipe(<enderio:block_fused_glass>, <ore:blockGlass>, <liquid:glass>, 500);

alloy_smelter.recipeBuilder()
	.inputs([<ore:blockGlass> * 2, <ore:dustNetherQuartz>])
	.outputs(<enderio:block_fused_glass> * 3)
	.duration(60)
	.EUt(32)
	.buildAndRegister();