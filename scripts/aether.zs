// Aether.zs
// By CJWilk

#reloadable

// Imports

import mods.gregtech.recipe.RecipeMap;

// GT Machines

val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

// Gravitite

autoclave.recipeBuilder()
	.inputs(<ore:oreGravitite>)
	.fluidInputs([<liquid:astralsorcery.liquidstarlight> * 250])
	.outputs(<aether_legacy:enchanted_gravitite>)
	.duration(80)
	.EUt(120)
	.buildAndRegister();
	
// Skyroot Bucket

recipes.remove(<aether_legacy:skyroot_bucket>);

assembler.recipeBuilder()
	.inputs([<contenttweaker:skyroot> * 3])
	.fluidInputs([<liquid:witches_rubber> * 1000])
	.outputs(<aether_legacy:skyroot_bucket>)
	.circuit(1)
	.duration(200)
	.EUt(30)
	.buildAndRegister();