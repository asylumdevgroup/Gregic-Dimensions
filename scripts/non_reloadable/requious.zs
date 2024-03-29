// requious.zs
// By MCAdventureCity

// Imports
import mods.requious.ComponentFace;
import mods.requious.SlotVisual;
import mods.requious.AssemblyRecipe;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Ore Unifier Setup
var ore_unifier = <assembly:ore_unifier>;

ore_unifier.setItemSlot(2, 2, ComponentFace.all(), 64)
       .setAccess(true, false)
       .setHandAccess(true, true)
       .setGroup("input");
ore_unifier.setDurationSlot(4, 2)
       .setVisual(SlotVisual.arrowRight())
       .setGroup("duration");
ore_unifier.setItemSlot(6, 2, ComponentFace.all(), 64)
       .setAccess(false, true)
       .setHandAccess(false, true)
       .setGroup("output");

//JEI Handler

ore_unifier.setJEIItemSlot(0,0,"input");
ore_unifier.setJEIItemSlot(2,0,"output");
ore_unifier.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());

// Ore Unifier Recipe
<requious:ore_unifier>.addTooltip(format.red("Deprecated. Use the DevTech Version."));

function oreUnifierRecipe(output as IItemStack, input as IIngredient, duration as int) {
       var recipe = AssemblyRecipe.create(function(container) {
       container.addItemOutput("output", output);
       }).requireItem("input", input).requireDuration("duration", duration);
       <assembly:ore_unifier>.addRecipe(recipe);
       <assembly:ore_unifier>.addJEIRecipe(recipe);
}