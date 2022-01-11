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