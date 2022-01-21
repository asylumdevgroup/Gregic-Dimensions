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
recipes.addShaped("ore_unifier", <requious:ore_unifier>, [[<ore:plateSteel>,<ore:circuitBasic>,<ore:plateSteel>],[<ore:gemZanite>,<gregtech:machine:986>,<ore:gemZanite>],[<ore:plateSteel>, <ore:plateInfusedIron>,<ore:plateSteel>]]);
