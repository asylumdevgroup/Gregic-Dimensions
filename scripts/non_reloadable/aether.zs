// Aether.zs

import mods.roots.Bark;
import mods.aether_legacy.Enchanter;

import moretweaker.bewitchment.WitchesCauldron;

// Gravitite

Enchanter.removeEnchantment(<aether_legacy:gravitite_ore>);

// Skyroot

WitchesCauldron.addRecipe([<contenttweaker:skyroot>, <bewitchment:empty_jar> * 3], [<naturesaura:sky_ingot>, <naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"}), <roots:wildroot>, <bewitchment:mandrake_root>, <bewitchment:cloudy_oil>, <bewitchment:oak_spirit>, <bewitchment:heaven_extract>, <wizardry:orb:1>]);
Bark.addRecipe("skyroot_bark", <aether_legacy:aether_log>, <contenttweaker:skyroot>);