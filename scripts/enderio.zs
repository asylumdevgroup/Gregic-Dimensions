// Ender IO.zs
// By CJWilk

// Imports

import mods.enderio.AlloySmelter;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

// GT Machines

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val assembler as RecipeMap = RecipeMap.getByName("assembler");

// Quite Clear Glass

mods.tconstruct.Casting.addBasinRecipe(<enderio:block_fused_glass>, <ore:blockGlass>, <liquid:glass>, 500);

alloy_smelter.recipeBuilder()
	.inputs([<ore:blockGlass> * 2, <ore:dustNetherQuartz>])
	.outputs(<enderio:block_fused_glass> * 3)
	.duration(60)
	.EUt(32)
	.buildAndRegister();
	
// Early Conduits (LV)

recipes.remove(<enderio:item_item_conduit>);
recipes.remove(<enderio:item_liquid_conduit:1>);
recipes.remove(<enderio:item_redstone_conduit>);

assembler.recipeBuilder()
	.inputs([<minecraft:hopper>, <thermaldynamics:duct_32> * 2, <ore:itemConduitBinder> * 4])
	.fluidInputs([<liquid:nutrient_distillation> * 100])
	.outputs(<enderio:item_item_conduit>)
	.property("circuit", 0)
	.duration(100)
	.EUt(30)
	.buildAndRegister();