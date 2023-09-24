// Astral Sorecry
// By CJWilk

#reloadable

// Imports

import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// GT Machines

val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");

// Removals

var astralRemovals as IItemStack[] = [
	<astralsorcery:blockaltar>,
	<astralsorcery:itemwand>.withTag({astralsorcery: {}}),
	<astralsorcery:itemcraftingcomponent:5>
];
for i in astralRemovals {
	recipes.remove(i);
}




// Early Recipes

recipes.addShaped("resonating_wand", <astralsorcery:itemwand>.withTag({astralsorcery: {}}), [[null, <ore:gemAquamarine>, <ore:gemZanite>],[null, <ore:holystone>, <ore:gemAquamarine>],[<aether_legacy:aether_log:1>, null, null]]);
recipes.addShaped("luminous_table", <astralsorcery:blockaltar>, [[<ore:stoneMarble>, <astralsorcery:blockblackmarble>, <ore:stoneMarble>], [<aether_legacy:aether_log>, <ore:blockZanite>, <aether_legacy:aether_log>], [<aether_legacy:aerogel>, null, <aether_legacy:aerogel>]]);

chemical_bath.recipeBuilder()
	.inputs(<ore:plateGlass>)
	.fluidInputs([<liquid:astralsorcery.liquidstarlight> * 100])
	.outputs(<astralsorcery:itemcraftingcomponent:3>)
	.duration(50)
	.EUt(30)
	.buildAndRegister();


// Aerogel Description

<aether_legacy:aerogel>.addTooltip(format.bold(format.white("Obtained from placing lava on the ground in the Aether.")));
