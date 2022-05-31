// Contenttweaker.zs
// By CJWilk

// Imports

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;


// Items

var skyroot = VanillaFactory.createItem("skyroot");
skyroot.register();

// Blocks

var holystone_aquamarine = VanillaFactory.createBlock("ore_holy_aquamarine", <blockmaterial:rock>);
holystone_aquamarine.register();

var holystone_rockcrystal = VanillaFactory.createBlock("ore_holy_rockcrystal", <blockmaterial:rock>);
holystone_rockcrystal.register();

var holystone_sulfur = VanillaFactory.createBlock("ore_holy_sulfur", <blockmaterial:rock>);
holystone_sulfur.register();

// ADG Coins

var stone_coin = VanillaFactory.createItem("adg_stone_coin");
stone_coin.register();

var bronze_coin = VanillaFactory.createItem("adg_bronze_coin");
bronze_coin.register();

var steel_coin = VanillaFactory.createItem("adg_steel_coin");
steel_coin.register();

var aluminium_coin = VanillaFactory.createItem("adg_aluminium_coin");
aluminium_coin.register();

var stainless_coin = VanillaFactory.createItem("adg_stainless_coin");
stainless_coin.register();

var titanium_coin = VanillaFactory.createItem("adg_titanium_coin");
titanium_coin.register();

var tungstensteel_coin = VanillaFactory.createItem("adg_tungstensteel_coin");
tungstensteel_coin.register();

var palladium_coin = VanillaFactory.createItem("adg_palladium_coin");
palladium_coin.register();