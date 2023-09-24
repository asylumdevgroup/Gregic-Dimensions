// Imports

import mods.roots.Pyre;
import mods.naturesaura.TreeRitual;

Pyre.addRecipe("na_gold_leaf", <naturesaura:gold_leaf>*10, [<ore:ingotGold>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>]);

TreeRitual.addRecipe("na_gold_bricks", <minecraft:sapling>, <naturesaura:gold_brick> * 4, 40, [<naturesaura:gold_powder>, <naturesaura:gold_powder>, <naturesaura:gold_powder>, <naturesaura:gold_powder>, <minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]);

// Natural Altar

TreeRitual.removeRecipe(<naturesaura:nature_altar>);
TreeRitual.addRecipe("na_natural_altar", <minecraft:sapling>, <naturesaura:nature_altar>, 160, [<ore:stone>, <ore:stone>, <ore:stone>, <ore:stone>, <naturesaura:gold_leaf>, <naturesaura:gold_leaf>, <ore:ingotBronze>, <ore:ingotBronze>]);

// Remove Wither Proofer

TreeRitual.removeRecipe(<auraddons:block_wither_proofer>);