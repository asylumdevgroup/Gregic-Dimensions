// Aether.zs
// By CJWilk


// Imports

import mods.aether_legacy.Enchanter;
import mods.gregtech.recipe.RecipeMap;
import moretweaker.bewitchment.WitchesCauldron;

// GT Machines

val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

// Gravitite

Enchanter.removeEnchantment(<aether_legacy:gravitite_ore>);

autoclave.recipeBuilder()
	.inputs(<aether_legacy:gravitite_ore>)
	.fluidInputs([<liquid:astralsorcery.liquidstarlight> * 250])
	.outputs(<aether_legacy:enchanted_gravitite>)
	.duration(80)
	.EUt(30)
	.buildAndRegister();
	
// Skyroot Bucket

recipes.remove(<aether_legacy:skyroot_bucket>);

assembler.recipeBuilder()
	.inputs([<contenttweaker:skyroot> * 3])
	.fluidInputs([<liquid:witches_rubber> * 1000])
	.outputs(<aether_legacy:skyroot_bucket>)
	.property("circuit", 1)
	.duration(200)
	.EUt(30)
	.buildAndRegister();
	
// Skyroot

WitchesCauldron.addRecipe([<contenttweaker:skyroot>, <bewitchment:empty_jar> * 3], [<naturesaura:sky_ingot>, <naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"}), <roots:wildroot>, <bewitchment:mandrake_root>, <bewitchment:cloudy_oil>, <bewitchment:oak_spirit>, <bewitchment:heaven_extract>, <wizardry:orb:1>]);
