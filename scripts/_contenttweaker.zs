// Contenttweaker.zs
// By CJWilk

// Imports

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;


// Tinkers Materials


val infusedIronTC = mods.contenttweaker.tconstruct.MaterialBuilder.create("infused_iron");
infusedIronTC.color = 0x00802b;
infusedIronTC.craftable = true;
infusedIronTC.liquid = <liquid:infused_iron>;
infusedIronTC.castable = true;
infusedIronTC.addHeadMaterialStats(750, 7.0f, 6.0f, 5);
infusedIronTC.addMaterialTrait("ecological", "head");
infusedIronTC.itemLocalizer = function(thisMaterial, itemName){return itemName;};
infusedIronTC.localizedName = "Infused Iron";
infusedIronTC.register();