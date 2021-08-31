// Aether.zs
// By CJWilk


// Imports

import mods.aether_legacy.Enchanter;
import mods.gregtech.recipe.RecipeMap;


// GT Machines

val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");


// Gravitite

Enchanter.removeEnchantment(<aether_legacy:gravitite_ore>);

autoclave.recipeBuilder()
	.inputs(<aether_legacy:gravitite_ore>)
	.fluidInputs([<liquid:astralsorcery.liquidstarlight> * 250])
	.outputs(<aether_legacy:enchanted_gravitite>)
	.duration(80)
	.EUt(30)
	.buildAndRegister();