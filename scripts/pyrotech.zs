// Pyrotech.zs
// By CJWilk

#reloadable


// Imports

import mods.tconstruct.Drying;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


// Fix Cobble Slab Recipe
recipes.remove(<minecraft:stone_slab:3>);
recipes.addShaped("cobble_slab_fixed", <minecraft:stone_slab:3>, [[<pyrotech:rock>,<pyrotech:rock>,<pyrotech:rock>],[<pyrotech:rock>,<minecraft:clay_ball>,<pyrotech:rock>]]);

// Disable Drying Rack

mods.jei.JEI.removeAndHide(<pyrotech:drying_rack>);
mods.jei.JEI.removeAndHide(<pyrotech:drying_rack:1>);


// Dried Fibers

mods.tconstruct.Drying.addRecipe(<pyrotech:material:13>, <pyrotech:material:12>, 600);
mods.tconstruct.Drying.addRecipe(<pyrotech:material:2>, <minecraft:wheat>, 600);

// Remove Twine

val stringOreDict = <ore:string>;
stringOreDict.removeItems([<pyrotech:material:26>, <pyrotech:material:14>]);

mods.jei.JEI.removeAndHide(<pyrotech:material:26>);
mods.jei.JEI.removeAndHide(<pyrotech:material:14>);


// Harder Straw

recipes.remove(<pyrotech:material:2>);
recipes.addShaped(<pyrotech:material:2>, [[<ore:string>, <ore:string>], [<ore:string>, <pyrotech:material:13>]]);


// Harder (But Faster) Pit Kiln

recipes.remove(<pyrotech:kiln_pit>);
recipes.addShaped(<pyrotech:kiln_pit>, [[<pyrotech:material:13>, <pyrotech:material:13>, <pyrotech:material:13>], [<pyrotech:material:2>, <pyrotech:material:2>, <pyrotech:material:2>]]);



// Harder Tinder

recipes.remove(<pyrotech:tinder>);
recipes.addShapedMirrored(<pyrotech:tinder>, [[null, <pyrotech:material:13>, <ore:stickWood>], [<pyrotech:material:13>, <ore:stickWood>, <pyrotech:material:13>], [<ore:stickWood>, <pyrotech:material:13>, null]]);




// Remove Lumps of Clay

mods.jei.JEI.removeAndHide(<pyrotech:material:17>);

recipes.remove(<minecraft:brick>, <pyrotech:material:24>);
recipes.remove(<pyrotech:bucket_clay_unfired>);

recipes.addShaped("unfired_clay_bucket", <pyrotech:bucket_clay_unfired>, [[<minecraft:clay_ball>, null, <minecraft:clay_ball>],[null,<minecraft:clay_ball>,null]]);



// Pyrotech Bricks Require Mold

recipes.remove(<pyrotech:material:9>);
recipes.addShapeless(<pyrotech:material:9>, [<pyrotech:material:4>, <metaitem:wooden_form.brick>]);

recipes.remove(<pyrotech:material:24>);
recipes.addShapeless(<pyrotech:material:24>, [<minecraft:clay_ball>, <metaitem:wooden_form.brick>]);


// Refractory Bricks Require Pyre

furnace.remove(<pyrotech:material:5>);



mods.jei.JEI.removeAndHide(<pyrotech:wither_forge>);

