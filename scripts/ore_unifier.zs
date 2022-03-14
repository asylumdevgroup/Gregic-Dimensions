// ore_unifier.zs
// By MCAdventureCity

import mods.requious.AssemblyRecipe;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

function oreUnifierRecipe(output as IItemStack, input as IIngredient, duration as int) {
       var recipe = AssemblyRecipe.create(function(container) {
       container.addItemOutput("output", output);
       }).requireItem("input", input).requireDuration("duration", duration);
       <assembly:ore_unifier>.addRecipe(recipe);
       <assembly:ore_unifier>.addJEIRecipe(recipe);
}

var unifier = <recipemap:unifier>;

unifier.recipeBuilder()
	.inputs([<gregtech:ore_rockcrystal_1>])
	.outputs(<astralsorcery:blockcustomore>)
	.duration(100)
	.EUt(7)
	.buildAndRegister();