// Contenttweaker.zs
// By CJWilk

// Imports

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


// Enchanted Gravitite

var enchGravitite = VanillaFactory.createItem("enchGravitite");
enchGravitite.glowing;
enchGravitite.rarity = "epic";
enchGravitite.register();