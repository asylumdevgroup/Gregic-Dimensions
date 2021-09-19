// requious.zs
// By MCAdventureCity

// Imports
import mods.requious.ComponentFace;
import mods.requious.SlotVisual;

// Ore Unifier Setup
var ore_unifier = <assembly:ore_unifier>;

ore_unifier.setItemSlot(2, 2, ComponentFace.all(), 64)
       .setAccess(true, false)
       .setHandAccess(true, true)
       .setGroup("input");
ore_unifier.setDurationSlot(4, 2)
       .setVisual(SlotVisual.arrowRight());
ore_unifier.setItemSlot(6, 2, ComponentFace.all(), 64)
       .setAccess(false, true)
       .setHandAccess(false, true)
       .setGroup("output");

// Ore Unifier Recipes
