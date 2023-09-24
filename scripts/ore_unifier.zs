// ore_unifier.zs
// By MCAdventureCity

#reloadable

import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;



var unifier = <recipemap:unifier>;

unifier.recipeBuilder()
	.inputs([<gregtech:ore_rockcrystal_1>])
	.outputs(<astralsorcery:blockcustomore>)
	.duration(100)
	.EUt(7)
	.buildAndRegister();