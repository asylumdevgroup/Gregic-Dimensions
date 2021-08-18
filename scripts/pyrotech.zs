// Pyrotech.zs
// By CJWilk


// Imports

import mods.pyrotech.DryingRack;
import mods.tconstruct.Drying;
import mods.pyrotech.SoakingPot;


// Disable Drying Rack

mods.jei.JEI.removeAndHide(<pyrotech:drying_rack>);
mods.jei.JEI.removeAndHide(<pyrotech:drying_rack:1>);
mods.pyrotech.DryingRack.removeRecipes(<pyrotech:material:13>);


// Dried Fibers

mods.tconstruct.Drying.addRecipe(<pyrotech:material:13>, <pyrotech:material:12>, 600);


// Remove Twine

val stringOreDict = <ore:string>;
stringOreDict.removeItems([<pyrotech:material:26>, <pyrotech:material:14>]);

mods.jei.JEI.removeAndHide(<pyrotech:material:26>);
mods.jei.JEI.removeAndHide(<pyrotech:material:14>);
mods.pyrotech.SoakingPot.removeRecipes(<pyrotech:material:26>);


// Harder Straw

recipes.remove(<pyrotech:material:2>);
recipes.addShaped(<pyrotech:material:2>, [[<ore:string>, <ore:string>], [<ore:string>, <pyrotech:material:13>]]);


// Harder Pit Kiln

recipes.remove(<pyrotech:kiln_pit>);
recipes.addShaped(<pyrotech:kiln_pit>, [[<pyrotech:material:13>, <pyrotech:material:13>, <pyrotech:material:13>], [<pyrotech:material:2>, <pyrotech:material:2>, <pyrotech:material:2>]]);


// Harder Tinder

recipes.remove(<pyrotech:tinder>);
recipes.addShapedMirrored(<pyrotech:tinder>, [[null, <pyrotech:material:13>, <ore:stickWood>], [<pyrotech:material:13>, <ore:stickWood>, <pyrotech:material:13>], [<ore:stickWood>, <pyrotech:material:13>, null]]);


// Faster Soaking Pot

SoakingPot.removeRecipes(<pyrotech:material:3>);
SoakingPot.removeRecipes(<pyrotech:material:8>);
SoakingPot.removeRecipes(<minecraft:mossy_cobblestone>);

SoakingPot.addRecipe("moss_stone_soak", <minecraft:mossy_cobblestone>, <liquid:water>, <minecraft:cobblestone>, 600);
SoakingPot.addRecipe("flint_clay_soak", <pyrotech:material:3>, <liquid:liquid_clay>, <ore:dustFlint>, 600);
SoakingPot.addRecipe("moss_stone_soak", <minecraft:mossy_cobblestone>, <liquid:water>, <minecraft:cobblestone>, 600);
