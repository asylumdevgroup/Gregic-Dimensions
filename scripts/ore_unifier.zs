// ore_unifier.zs
// By MCAdventureCity

import mods.requious.AssemblyRecipe;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

function oreUnifierRecipe(output as IItemStack, input as IIngredient, duration as int) {
       var recipe = AssemblyRecipe.create(function(container) {
       container.addItemOutput("output", output);
       }).requireItem("input", input).requireDuration("duration", duration);
       <assembly:ore_unifier>.addRecipe(recipe);
       <assembly:ore_unifier>.addJEIRecipe(recipe);
}

oreUnifierRecipe(<astralsorcery:blockcustomore>, <contenttweaker:ore_holy_rockcrystal>, 100);
oreUnifierRecipe(<astralsorcery:blockcustomsandore>, <contenttweaker:ore_holy_aquamarine>, 100);
oreUnifierRecipe(<gregtech:ore_sulfur_0>, <contenttweaker:ore_holy_sulfur>, 100);
