// GregTech.zs
// By CJWilk and MCAdventureCity

// Imports

import crafttweaker.item.IItemStack;
import moretweaker.bewitchment.WitchesCauldron;
import moretweaker.bewitchment.Distillery;
import crafttweaker.liquid.ILiquidStack;

// Witches' Rubber Cell

var full_wr_cell = <gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "witches_rubber", Amount: 1000}});
WitchesCauldron.addRecipe([full_wr_cell, <bewitchment:empty_jar>, <bewitchment:empty_jar>], [<bewitchment:essence_of_vitality>, <bewitchment:fiery_unguent>, <metaitem:rubber_drop>, <metaitem:rubber_drop>, <bewitchment:wood_ash>, <gregtech:meta_item_1:78>]);

// Coated Circuit Board

WitchesCauldron.addRecipe([<metaitem:board.coated> * 3, <bewitchment:empty_jar>, <bewitchment:empty_jar>], [<bewitchment:essence_of_vitality>, <bewitchment:fiery_unguent>, <metaitem:rubber_drop>, <metaitem:rubber_drop>, <bewitchment:wood_ash>, <gregtech:meta_plate:1617> * 3]);
WitchesCauldron.addRecipe([<metaitem:board.coated> * 3, <gregtech:meta_item_1:78>], [<gregtech:meta_plate:1617> * 3, full_wr_cell]);

// 1x ULV/LV Wires w/ Witches' Rubber

WitchesCauldron.addRecipe([<gregtech:cable_single:2517> * 8, <gregtech:meta_item_1:78>], [full_wr_cell, <gregtech:wire_single:2517> * 8]);
WitchesCauldron.addRecipe([<gregtech:cable_single:2517> * 8, <bewitchment:empty_jar>, <bewitchment:empty_jar>], [<bewitchment:essence_of_vitality>, <bewitchment:fiery_unguent>, <metaitem:rubber_drop>, <metaitem:rubber_drop>, <bewitchment:wood_ash>, <gregtech:wire_single:2517> * 8]);
WitchesCauldron.addRecipe([<gregtech:cable_single:112> * 8, <gregtech:meta_item_1:78>], [full_wr_cell, <gregtech:wire_single:112> * 8]);
WitchesCauldron.addRecipe([<gregtech:cable_single:112> * 8, <bewitchment:empty_jar>, <bewitchment:empty_jar>], [<bewitchment:essence_of_vitality>, <bewitchment:fiery_unguent>, <metaitem:rubber_drop>, <metaitem:rubber_drop>, <bewitchment:wood_ash>, <gregtech:wire_single:112> * 8]);