// Astral Sorecry
// By CJWilk

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

mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lightwell");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/nocturnalpowder");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/sextant");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/cc_parchment");


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

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("adg_gt:shaped/internal/altar/lightwell", <astralsorcery:blockwell>, 200, 60, [<astralsorcery:blockmarble:6>, <ore:gemZanite>, <astralsorcery:blockmarble:6>, 
																																<astralsorcery:blockmarble:4>, <aether_legacy:aerogel>, <astralsorcery:blockmarble:4>, 
																																<ore:gemAquamarine>, <astralsorcery:blockmarble:6>, <ore:gemAquamarine>]);

// Aerogel Description

<aether_legacy:aerogel>.addTooltip(format.bold(format.white("Obtained from placing lava on the ground in the Aether.")));
