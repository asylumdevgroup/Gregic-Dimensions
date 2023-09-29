// vending_machine.zs
// By MCAdventureCity

#reloadable

// Stone Age
recipes.addShaped("wood_coins", <minecraft:log> * 32,
 [[<contenttweaker:adg_stone_coin>, null, null],
 [null, null, null],
  [null, null, null]]);

recipes.addShaped("stone_coins", <minecraft:cobblestone> * 32,
 [[null, <contenttweaker:adg_stone_coin>, null],
 [null, null, null],
  [null, null, null]]);

recipes.addShaped("granite_coins", <minecraft:stone:1> * 32,
 [[null, null,  <contenttweaker:adg_stone_coin>],
 [null, null, null],
  [null, null, null]]);

recipes.addShaped("wheatseeds_coins", <minecraft:wheat_seeds> * 16,
 [[null, null,  null],
 [<contenttweaker:adg_stone_coin>, null, null],
  [null, null, null]]);

recipes.addShaped("beetroot_seed_coins",<minecraft:beetroot_seeds> * 16,
 [[<contenttweaker:adg_stone_coin>, null,  null],
 [<contenttweaker:adg_stone_coin>, null, null],
  [null, null, null]]);

recipes.addShaped("carrot_coins",<minecraft:carrot> * 16,
 [[<contenttweaker:adg_stone_coin>, <contenttweaker:adg_stone_coin>,  null],
 [null, null, null],
  [null, null, null]]);

recipes.addShaped("potato_coins",<minecraft:potato> * 16,
 [[<contenttweaker:adg_stone_coin>, null,  null],
 [null, <contenttweaker:adg_stone_coin>, null],
  [null, null, null]]);

  recipes.addShaped("silk_coins",<mysticalworld:silk_thread> * 32,
 [[<contenttweaker:adg_stone_coin>, null,  null],
 [null, null, null],
  [<contenttweaker:adg_stone_coin>, null, null]]);

  recipes.addShaped("sapling_coins",<minecraft:sapling> * 16,
 [[<contenttweaker:adg_stone_coin>, null,  <contenttweaker:adg_stone_coin>],
 [null, null, null],
  [null, null, null]]);

    recipes.addShaped("coal_ore_coins",<gregtech:ore_coal_0> * 32,
 [[<contenttweaker:adg_stone_coin>, <contenttweaker:adg_stone_coin>,  <contenttweaker:adg_stone_coin>],
 [null, null, null],
  [null, null, null]]);

  recipes.addShaped("iron_ore_coins",<gregtech:ore_iron_0> * 32,
 [[<contenttweaker:adg_stone_coin>, null, null ],
 [<contenttweaker:adg_stone_coin>, null, null],
  [<contenttweaker:adg_stone_coin>, null, null]]);

recipes.addShaped("copper_ore_coins",<gregtech:ore_copper_0> * 32,
 [[<contenttweaker:adg_stone_coin>, null, null ],
 [null, <contenttweaker:adg_stone_coin>, null],
  [null, null, <contenttweaker:adg_stone_coin>]]);

  recipes.addShaped("pyrite_ore_coins",<gregtech:ore_pyrite_0> * 32,
 [[null, <contenttweaker:adg_stone_coin>, null ],
 [null, <contenttweaker:adg_stone_coin>, null],
  [null, <contenttweaker:adg_stone_coin>, null ]]);

    recipes.addShaped("magnetite_ore_coins",<gregtech:ore_magnetite_0> * 32,
 [[null,null, <contenttweaker:adg_stone_coin>],
 [null,null, <contenttweaker:adg_stone_coin>],
  [null,null, <contenttweaker:adg_stone_coin>]]);

  recipes.addShaped("chalcopyrite_ore_coins",<gregtech:ore_chalcopyrite_0> * 32,
 [[null, null, <contenttweaker:adg_stone_coin> ],
 [null, <contenttweaker:adg_stone_coin>, null],
  [<contenttweaker:adg_stone_coin>, null, null]]);

  recipes.addShaped("gold_ore_coins",<gregtech:ore_gold_0> * 16,
 [[null, null, null],
 [<contenttweaker:adg_stone_coin>, <contenttweaker:adg_stone_coin>,  <contenttweaker:adg_stone_coin>],
  [null, null, null]]);

    recipes.addShaped("vanadiummag_ore_coins",<gregtech:ore_vanadium_magnetite_0> * 16,
 [[null, null, null],
 [null, null, null],
 [<contenttweaker:adg_stone_coin>, <contenttweaker:adg_stone_coin>,  <contenttweaker:adg_stone_coin>]]);


  