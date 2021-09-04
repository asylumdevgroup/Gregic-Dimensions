// Pyrotech.zs
// By CJWilk


// Imports

import mods.pyrotech.DryingRack;
import mods.tconstruct.Drying;
import mods.pyrotech.SoakingPot;
import mods.roots.Pyre;
import crafttweaker.item.IIngredient;
import mods.pyrotech.Bloomery;


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

SoakingPot.addRecipe("moss_stone_soak", <minecraft:mossy_cobblestone>, <liquid:water> * 500, <minecraft:cobblestone>, 600);
SoakingPot.addRecipe("flint_clay_soak", <pyrotech:material:3>, <liquid:liquid_clay> * 500, <ore:dustFlint>, 600);
SoakingPot.addRecipe("lime_clay_soak", <pyrotech:material:8>, <liquid:liquid_clay> * 500, <pyrotech:material:22>, 600);


// Remove Unfired Bricks / Lumps of Clay

mods.jei.JEI.removeAndHide(<pyrotech:material:24>);
mods.jei.JEI.removeAndHide(<pyrotech:material:17>);
mods.jei.JEI.removeAndHide(<pyrotech:material:35>);

recipes.remove(<minecraft:brick>, <pyrotech:material:24>);
recipes.remove(<pyrotech:bucket_clay_unfired>);

recipes.addShaped(<pyrotech:bucket_clay_unfired>, [[<gregtech:meta_item_2:32013>, null, <gregtech:meta_item_2:32013>], [null, <gregtech:meta_item_2:32013>, null]]);


// Refractory Bricks Require Mold

recipes.remove(<pyrotech:material:9>);
recipes.addShapeless(<pyrotech:material:9>, [<pyrotech:material:4>, <gregtech:meta_item_2:32012>]);


// Refractory Bricks Require Pyre

furnace.remove(<pyrotech:material:5>);
Pyre.addRecipe("refractory_brick_pyre", <pyrotech:material:5>*10, [<pyrotech:material:9>, <pyrotech:material:9>, <pyrotech:material:9>, <pyrotech:material:9>, <pyrotech:material:9>]);


// Bloomery Ore Processing Changes

Bloomery.removeAllBloomeryRecipes();
Bloomery.removeAllWitherForgeRecipes();
mods.jei.JEI.removeAndHide(<pyrotech:wither_forge>);

Bloomery.createBloomeryBuilder("iron_bloomery_recipe", <minecraft:iron_ingot>, <ore:oreEarlyIron>)
	.setAnvilTiers(["granite", "ironclad"])
	.setBurnTimeTicks(2400)
	.setFailureChance(0)
	.setBloomYield(0,0)
	.register();
	
Bloomery.createBloomeryBuilder("prec_bloomery_recipe", <gregtech:meta_item_1:10827>, <ore:oreEarlyPrecMetal>)
	.setAnvilTiers(["granite", "ironclad"])
	.setBurnTimeTicks(2400)
	.setFailureChance(0)
	.setBloomYield(0,0)
	.register();

Bloomery.createBloomeryBuilder("tin_bloomery_recipe", <gregtech:meta_item_1:10071>, <ore:oreEarlyTin>)
	.setAnvilTiers(["granite", "ironclad"])
	.setBurnTimeTicks(2400)
	.setFailureChance(0)
	.setBloomYield(0,0)
	.register();
	
Bloomery.createBloomeryBuilder("copper_bloomery_recipe", <gregtech:meta_item_1:10018>, <ore:oreEarlyCopper>)
	.setAnvilTiers(["granite", "ironclad"])
	.setBurnTimeTicks(2400)
	.setFailureChance(0)
	.setBloomYield(0,0)
	.register();
	
val precMetalBloom = <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 0, maxIntegrity: 0, langKey: "tile.ore_block", recipeId: "crafttweaker:prec_bloomery_recipe"}});

precMetalBloom.displayName = "Precious Metal Ore Bloom";