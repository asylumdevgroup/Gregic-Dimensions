// Pyrotech.zs

// Imports

import mods.pyrotech.DryingRack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.pyrotech.SoakingPot;
import mods.roots.Pyre;
import mods.pyrotech.Bloomery;
import mods.pyrotech.PitKiln;


mods.pyrotech.DryingRack.removeRecipes(<pyrotech:material:13>);



mods.pyrotech.SoakingPot.removeRecipes(<pyrotech:material:26>);

PitKiln.removeRecipes(<minecraft:stone>);
PitKiln.addRecipe("faster_stone", <minecraft:stone>, <minecraft:cobblestone>, 2400, 0.33, [<pyrotech:material>, <pyrotech:rock> * 5]);
PitKiln.removeRecipes(<minecraft:stone_slab>);
PitKiln.addRecipe("faster_stone_slab", <minecraft:stone_slab>, <minecraft:stone_slab:3>, 2400, 0.33, [<pyrotech:material>, <pyrotech:rock> * 3]);
PitKiln.removeRecipes(<minecraft:stone:1>);
PitKiln.addRecipe("faster_granite", <minecraft:stone:1>, <pyrotech:cobblestone:2>, 2400, 0.33, [<pyrotech:material>, <pyrotech:rock:1> * 5]);
PitKiln.removeRecipes(<minecraft:stone:3>);
PitKiln.addRecipe("faster_diorite", <minecraft:stone:3>, <pyrotech:cobblestone:1>, 2400, 0.33, [<pyrotech:material>, <pyrotech:rock:2> * 5]);
PitKiln.removeRecipes(<minecraft:stone:5>);
PitKiln.addRecipe("faster_andesite", <minecraft:stone:5>, <pyrotech:cobblestone>, 2400, 0.33, [<pyrotech:material>, <pyrotech:rock:3> * 5]);
PitKiln.removeRecipes(<pyrotech:limestone>);
PitKiln.addRecipe("faster_limestone", <pyrotech:limestone>, <pyrotech:cobblestone:3>, 2400, 0.33, [<pyrotech:material>, <pyrotech:rock:8> * 5]);
PitKiln.removeRecipes(<minecraft:hardened_clay>);
PitKiln.addRecipe("faster_terracotta", <minecraft:hardened_clay>, <minecraft:clay>, 2400, 0.33, [<pyrotech:material>, <pyrotech:material:7>, <pyrotech:material:6>]);
PitKiln.removeRecipes(<pyrotech:bucket_clay>);
PitKiln.addRecipe("faster_clay_bucket", <pyrotech:bucket_clay>, <pyrotech:bucket_clay_unfired>, 2400, 0.33, [<pyrotech:material>, <pyrotech:material:7>, <pyrotech:material:6>]);
PitKiln.removeRecipes(<pyrotech:clay_shears>);
PitKiln.addRecipe("faster_clay_shears", <pyrotech:clay_shears>, <pyrotech:unfired_clay_shears>, 2400, 0.33, [<pyrotech:material>, <pyrotech:material:7>, <pyrotech:material:6>]);
PitKiln.removeRecipes(<minecraft:brick>);
PitKiln.addRecipe("faster_brick", <minecraft:brick>, <pyrotech:material:24>, 2400, 0.33, [<pyrotech:material>, <pyrotech:material:7>, <pyrotech:material:6>]);
PitKiln.removeRecipes(<pyrotech:material:15>);
PitKiln.addRecipe("faster_charcoal_flakes", <pyrotech:material:15>, <pyrotech:rock:7>, 2400, 0.33, [<pyrotech:material>]);

// Faster Soaking Pot

SoakingPot.removeRecipes(<pyrotech:material:3>);
SoakingPot.removeRecipes(<pyrotech:material:8>);
SoakingPot.removeRecipes(<minecraft:mossy_cobblestone>);
SoakingPot.removeRecipes(<pyrotech:planks_tarred>);
SoakingPot.removeRecipes(<pyrotech:material:23>);

SoakingPot.addRecipe("moss_stone_soak", <minecraft:mossy_cobblestone>, <liquid:water> * 500, <minecraft:cobblestone>, 600);
SoakingPot.addRecipe("flint_clay_soak", <pyrotech:material:3>, <liquid:liquid_clay> * 500, <ore:dustFlint>, 600);
SoakingPot.addRecipe("lime_clay_soak", <pyrotech:material:8>, <liquid:liquid_clay> * 500, <pyrotech:material:22>, 600);
SoakingPot.addRecipe("tarred_planks_soak", <pyrotech:planks_tarred>, <liquid:wood_tar> * 125, <ore:plankWood>, true, 600);
SoakingPot.addRecipe("tarred_board_soak", <pyrotech:material:23>, <liquid:wood_tar> * 50, <pyrotech:material:20>, true, 200);

Pyre.addRecipe("refractory_brick_pyre", <pyrotech:material:5>*10, [<pyrotech:material:9>, <pyrotech:material:9>, <pyrotech:material:9>, <pyrotech:material:9>, <pyrotech:material:9>]);

// Bloomery Ore Processing Changes

Bloomery.removeAllBloomeryRecipes();
Bloomery.removeAllWitherForgeRecipes();

Bloomery.createBloomeryBuilder("iron_bloomery_recipe", <minecraft:iron_ingot>, <ore:oreEarlyIron>)
	.setAnvilTiers(["granite", "ironclad"])
	.setBurnTimeTicks(2400)
	.setFailureChance(0)
	.setBloomYield(0,0)
	.register();
	
Bloomery.createBloomeryBuilder("prec_bloomery_recipe", <minecraft:gold_ingot>, <ore:oreEarlyPrecMetal>)
	.setAnvilTiers(["granite", "ironclad"])
	.setBurnTimeTicks(2400)
	.setFailureChance(0)
	.setBloomYield(0,0)
	.register();

Bloomery.createBloomeryBuilder("tin_bloomery_recipe", <metaitem:ingotTin>, <ore:oreEarlyTin>)
	.setAnvilTiers(["granite", "ironclad"])
	.setBurnTimeTicks(2400)
	.setFailureChance(0)
	.setBloomYield(0,0)
	.register();
	
Bloomery.createBloomeryBuilder("copper_bloomery_recipe", <metaitem:ingotCopper>, <ore:oreEarlyCopper>)
	.setAnvilTiers(["granite", "ironclad"])
	.setBurnTimeTicks(2400)
	.setFailureChance(0)
	.setBloomYield(0,0)
	.register();
	
val precMetalBloom = <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 0, maxIntegrity: 0, langKey: "tile.ore_block", recipeId: "crafttweaker:prec_bloomery_recipe"}});

precMetalBloom.displayName = "Precious Metal Ore Bloom";