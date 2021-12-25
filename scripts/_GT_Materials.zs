// GT Materials
// By CJWilk and MCAdventureCity

#priority 1000

// Imports

#loader gregtech
import mods.gregtech.material.MaterialRegistry;


// Infused Iron (Nature's Aura) GT Material

var infused_iron = MaterialRegistry.createIngotMaterial(476, "infused_iron", 0x00802b, "METALLIC", 3, null, 16.0f, 6, 2560);
infused_iron.addFlags(["GENERATE_PLATE", "SMELT_INTO_FLUID"]);

// Netherite

var netherite = MaterialRegistry.createIngotMaterial(477, "netherite", 0x4c4143, "METALLIC", 4);
netherite.addFlags(["GENERATE_PLATE"]);

// Witches' Rubber

val witchesRubber = MaterialRegistry.createIngotMaterial(479, "witches_rubber", 0x2b2827, "DULL", 1);
witchesRubber.addFlags(["GENERATE_PLATE", "GENERATE_FOIL", "GENERATE_RING"]);

// Redstone Alloy

val redstoneAlloy = MaterialRegistry.createIngotMaterial(480, "redstone_alloy", 0xb53333, "SHINY", 1);
redstoneAlloy.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);
redstoneAlloy.setCableProperties(32, 1, 0);

// Alloyium & Infinity

val alloyium = MaterialRegistry.createIngotMaterial(481, "alloyium", 0x84053e, "shiny", 2);
val infinity = MaterialRegistry.createIngotMaterial(482, "infinity", 0xf8e9fe, "shiny", 2);
infinity.setCableProperties(2147483647, 16, 0);

// Starmetal

val starmetal = MaterialRegistry.createIngotMaterial(483, "starmetal", 0x0003b5, "shiny", 2);
starmetal.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);

// Fluix Steel

val fluixSteel = MaterialRegistry.createIngotMaterial(484, "fluix_steel", 0x5c00a3, "dull", 2);
fluixSteel.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);