// Bewitchment.zs

import mods.naturesaura.TreeRitual;
import moretweaker.bewitchment.WitchesOven;
import moretweaker.bewitchment.WitchesCauldron;
import moretweaker.bewitchment.Distillery;

// Helpful Elder Tree Sapling Recipe

TreeRitual.addRecipe("elder_sapling", <minecraft:sapling>, <bewitchment:elder_sapling>, 20, [<ore:nuggetNetherite>, <ore:nuggetNetherite>, <ore:netherrack>, <ore:netherrack>]);

// Essence of Vitality

WitchesOven.addRecipe(<naturesaura:ancient_sapling>, <bewitchment:essence_of_vitality>, <bewitchment:wood_ash>, 100, true);
