// GT Materials
// By CJWilk and MCAdventureCity

#priority 1000

// Imports

#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.devtech.unification.IStoneType;
import mods.devtech.unification.IBlockStatePredicate;
import crafttweaker.block.IBlockState;
import mods.devtech.unification.IOrePrefix;
import mods.devtech.unification.IMaterialIconType;
import mods.devtech.unification.IMaterialPredicate;

// Infused Iron (Nature's Aura) GT Material
var infused_iron = MaterialRegistry.createIngotMaterial(476, "infused_iron", 0x00802b, "METALLIC", 3);
infused_iron.addFlags(["GENERATE_PLATE"]);
