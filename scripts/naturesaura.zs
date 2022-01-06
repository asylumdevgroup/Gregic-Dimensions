// Nature's Aura.zs
// By CJWilk


// Imports

import mods.roots.Pyre;
import mods.naturesaura.TreeRitual;

// Wooden Stand

recipes.remove(<naturesaura:wood_stand>);
recipes.addShaped("na_wood_stand", <naturesaura:wood_stand>, [[<ore:craftingToolSaw>, <ore:logWood>]]);


// Gold Leaf/Powder

mods.jei.JEI.removeAndHide(<naturesaura:golden_leaves>);
mods.jei.JEI.removeAndHide(<naturesaura:gold_fiber>);

<naturesaura:gold_leaf>.displayName = "Precious Leaf";
<naturesaura:gold_powder>.displayName = "Precious Powder";

recipes.remove(<naturesaura:gold_powder>);

recipes.addShaped("na_gold_powder", <naturesaura:gold_powder>, [[<ore:craftingToolMortar>, <naturesaura:gold_leaf>]]);

Pyre.addRecipe("na_gold_leaf", <naturesaura:gold_leaf>*10, [<ore:ingotGold>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>]);

// Gold Stone Bricks

<naturesaura:gold_brick>.displayName = "Brilliant Bricks";

TreeRitual.addRecipe("na_gold_bricks", <minecraft:sapling>, <naturesaura:gold_brick> * 4, 40, [<naturesaura:gold_powder>, <naturesaura:gold_powder>, <naturesaura:gold_powder>, <naturesaura:gold_powder>, <minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]);


// Add Recipe to convert NA Infused Iron to the GT Material Version.

recipes.addShapeless("gt_infused_iron", <gregtech:meta_item_1:10476>, [<naturesaura:infused_iron>]);


// Natural Altar

TreeRitual.removeRecipe(<naturesaura:nature_altar>);
TreeRitual.addRecipe("na_natural_altar", <minecraft:sapling>, <naturesaura:nature_altar>, 160, [<ore:stone>, <ore:stone>, <ore:stone>, <ore:stone>, <naturesaura:gold_leaf>, <naturesaura:gold_leaf>, <ore:ingotBronze>, <ore:ingotBronze>]);

// Remove Wither Proofer

TreeRitual.removeRecipe(<auraddons:block_wither_proofer>);
mods.jei.JEI.hide(<auraddons:block_wither_proofer>);