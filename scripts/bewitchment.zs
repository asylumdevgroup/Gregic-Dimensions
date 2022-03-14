// Bewitchment.zs
// By CJWilk

// Imports

import crafttweaker.item.IItemStack;
import mods.naturesaura.TreeRitual;
import moretweaker.bewitchment.WitchesOven;
import moretweaker.bewitchment.WitchesCauldron;
import moretweaker.bewitchment.Distillery;
import mods.gregtech.recipe.RecipeMap;

// GT Machines

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val implosion_compressor as RecipeMap = RecipeMap.getByName("implosion_compressor");

// Remove Other Altars

var otherAltars as IItemStack[] = [
	<bewitchment:stone_witches_altar>,
	<bewitchment:nether_brick_witches_altar>,
	<bewitchment:coquina_witches_altar>,
	<bewitchment:embittered_brick_witches_altar>,
	<bewitchment:scorned_brick_witches_altar>
];
	for i in otherAltars {
	mods.jei.JEI.removeAndHide(i);
}

// Obsidian Altar Changes

<bewitchment:obsidian_witches_altar>.displayName = "Witches' Altar";

recipes.remove(<bewitchment:obsidian_witches_altar>);
recipes.addShaped("witches_altar", <bewitchment:obsidian_witches_altar> * 2, [[<ore:plateNetherite>, <ore:dustRegularSalt>, <ore:plateNetherite>], [<ore:obsidian>, <bewitchment:elder_wood>, <ore:obsidian>], [<ore:obsidian>, <bewitchment:elder_wood>, <ore:obsidian>]]);

// Helpful Elder Tree Sapling Recipe

TreeRitual.addRecipe("elder_sapling", <minecraft:sapling>, <bewitchment:elder_sapling>, 20, [<ore:nuggetNetherite>, <ore:nuggetNetherite>, <ore:netherrack>, <ore:netherrack>]);

// Bewitchment Basic "Machines"

recipes.remove(<bewitchment:witches_oven>);
recipes.remove(<bewitchment:distillery>);
recipes.remove(<bewitchment:witches_cauldron>);

recipes.addShaped("witches_oven", <bewitchment:witches_oven>, [[null, <ore:plateNetherite>, null], [<ore:plateNetherite>, <ore:barsIron>, <ore:plateNetherite>], [<ore:plateNetherite>, <ore:plateSteel>, <ore:plateNetherite>]]);
recipes.addShaped("bw_distillery", <bewitchment:distillery>, [[<metaitem:component.glass.tube>, null, null], [<ore:gemOpal>, <ore:pipeSmallFluidBronze>, <metaitem:component.glass.tube>], [<ore:plateNetherite>, null, <ore:plateNetherite>]]);
recipes.addShaped("witches_cauldron", <bewitchment:witches_cauldron>, [[<ore:nuggetNetherite>, null, <ore:nuggetNetherite>], [<ore:plateNetherite>, null, <ore:plateNetherite>], [<ore:plateNetherite>, <ore:plateSteel>, <ore:plateNetherite>]]);

// Essence of Vitality

WitchesOven.addRecipe(<naturesaura:ancient_sapling>, <bewitchment:essence_of_vitality>, <bewitchment:wood_ash>, 100, true);

// Sigil Table

recipes.remove(<bewitchment:sigil_table>);
recipes.addShaped("sigil_table", <bewitchment:sigil_table>, [[<astralsorcery:blockmarbleslab>, <bloodmagic:slate>, <astralsorcery:blockmarbleslab>], [<bewitchment:elder_wood>, <bewitchment:dragons_blood_resin>, <bewitchment:elder_wood>], [<bewitchment:elder_wood>, <bewitchment:demonic_elixir>, <bewitchment:elder_wood>]]);

// Empty Jar

recipes.remove(<bewitchment:empty_jar>);

alloy_smelter.recipeBuilder()
	.inputs([<ore:clay> * 2, <metaitem:shape.mold.bottle>])
	.outputs([<bewitchment:empty_jar>])
	.duration(100)
	.EUt(24)
	.buildAndRegister();
	
// Ritual Chalk

recipes.remove(<bewitchment:ritual_chalk>);

implosion_compressor.recipeBuilder()
	.inputs([<ore:dustCalcite> * 6, <bewitchment:stone_ichor>])
	.outputs([<bewitchment:ritual_chalk> * 2])
	.property("explosives", 2)
	.duration(10)
	.EUt(480)
	.buildAndRegister();