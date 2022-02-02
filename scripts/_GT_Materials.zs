// GT Materials
// By CJWilk and MCAdventureCity

#priority 1000

// Imports

#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.StoneType;
import mods.gregtech.material.Elements;


// Infused Iron (Nature's Aura) GT Material

var infused_iron = MaterialBuilder(32001, "infused_iron")
.fluid("fluid", true)
.ingot()
.color(0x00802b)
.iconSet("METALLIC")
.flags(["generate_plate"])
.build();

// var infused_iron = MaterialRegistry.createIngotMaterial(476, "infused_iron", 0x00802b, "METALLIC", 3, null, 16.0f, 6, 2560);
// infused_iron.addFlags(["GENERATE_PLATE", "SMELT_INTO_FLUID"]);

// Netherite

var netherite = MaterialBuilder(32002, "netherite")
.fluid("fluid", true)
.ingot()
.color(0x4c4143)
.iconSet("METALLIC")
.flags(["generate_plate"])
.build();
// var netherite = MaterialRegistry.createIngotMaterial(477, "netherite", 0x4c4143, "METALLIC", 4);
// netherite.addFlags(["GENERATE_PLATE"]);

// Witches' Rubber
var witchesRubber = MaterialBuilder(32003, "witches_rubber")
.fluid("fluid", true)
.ingot()
.color(0x2b2827)
.flags(["generate_plate", "generate_foil", "generate_ring"])
.build();
// val witchesRubber = MaterialRegistry.createIngotMaterial(479, "witches_rubber", 0x2b2827, "DULL", 1);
// witchesRubber.addFlags(["GENERATE_PLATE", "GENERATE_FOIL", "GENERATE_RING"]);

// Redstone Alloy

var redstone_alloy = MaterialBuilder(32004, "redstone_alloy")
.fluid("fluid", true)
.ingot()
.color(0xb53333)
.iconSet("SHINY")
.flags(["generate_plate", "generate_rod", "generate_bolt_screw"])
.cableProperties(32, 1, 0)
.components([<material:redstone> * 3, <material:silicon> * 1, <material:steel> * 2])
.build();
// val redstoneAlloy = MaterialRegistry.createIngotMaterial(480, "redstone_alloy", 0xb53333, "SHINY", 1);
// redstoneAlloy.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);
// redstoneAlloy.setCableProperties(32, 1, 0);

// Alloyium & Infinity

var alloyium = MaterialBuilder(32005, "alloyium")
.fluid("fluid", true)
.ingot()
.color(0x84053e)
.iconSet("SHINY")
.build();

var infinity = MaterialBuilder(32006, "infinity")
.fluid("fluid", true)
.ingot()
.color(0xf8e9fe)
.iconSet("SHINY")
.cableProperties(2147483647, 16, 0)
.build();
// val alloyium = MaterialRegistry.createIngotMaterial(481, "alloyium", 0x84053e, "shiny", 2);
// val infinity = MaterialRegistry.createIngotMaterial(482, "infinity", 0xf8e9fe, "shiny", 2);
// infinity.setCableProperties(2147483647, 16, 0);

// Starmetal

var starmetal = MaterialBuilder(32007, "starmetal")
.fluid("fluid", true)
.ingot()
.color(0x0003b5)
.iconSet("SHINY")
.flags(["generate_plate", "generate_rod", "generate_bolt_screw"])
.build();
// val starmetal = MaterialRegistry.createIngotMaterial(483, "starmetal", 0x0003b5, "shiny", 2);
// starmetal.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);

// Fluix Steel

var fluixSteel = MaterialBuilder(32008, "fluix_steel")
.fluid("fluid", true)
.ingot()
.color(0x5c00a3)
.flags(["generate_plate", "generate_rod", "generate_bolt_screw"])
.build();
// val fluixSteel = MaterialRegistry.createIngotMaterial(484, "fluix_steel", 0x5c00a3, "dull", 2);
// fluixSteel.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);

// Holystone Stone Type
var holystone = MaterialBuilder(32009, "holystone")
.dust(1)
.build();

var holystoneBlockState = "aether_legacy:holystone";

StoneType.create(16, "holystone", "oreHolystone", holystone, holystoneBlockState);

var mana_element = Elements.add(666, 666, -1, null, "Mana", "Ma", false);

var mana_fluid = MaterialBuilder(32016, "mana_fluid")
.fluid("fluid", true)
.color(0x66fffc)
.element("Mana")
.build();

var mana = MaterialBuilder(32015, "mana")
.fluid("fluid", true)
.color(0x66fffc)
.components([<material:mana_fluid> * 2, <material:redstone> * 9])
.build();

var ambrosium = MaterialBuilder(32010, "ambrosium")
.gem()
.color(0xffff33)
.ore()
.components([<material:sulfur> * 3, <material:mana> * 1])
.build();

var zanite = MaterialBuilder(32011, "zanite")
.gem()
.color(0x751aff)
.ore()
.components([<material:oxygen> * 2, <material:mana> * 1, <material:aluminium> * 2])
.build();

var gravitite = MaterialBuilder(32012, "gravitite")
.gem()
.color(0xff4d88)
.ore()
.components([<material:oxygen> * 3, <material:mana> * 1, <material:aluminium> * 2])
.build();

var aquamarine = MaterialBuilder(32013, "aquamarine")
.gem()
.color(0x00e6e6)
.ore()
.components([<material:water> * 2, <material:mana> * 1, <material:aluminium> * 2])
.build();

var rockcrystal = MaterialBuilder(32014, "rockcrystal")
.gem()
.color(0xf2f2f2)
.ore()
.build();