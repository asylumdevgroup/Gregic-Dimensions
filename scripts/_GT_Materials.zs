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

var infused_iron = MaterialRegistry.createIngotMaterial(476, "infused_iron", 0x00802b, "METALLIC", 3, null, 16.0f, 6, 2560);
infused_iron.addFlags(["GENERATE_PLATE", "SMELT_INTO_FLUID"]);

// Netherite

var netherite = MaterialRegistry.createIngotMaterial(477, "netherite", 0x4c4143, "METALLIC", 4);
netherite.addFlags(["GENERATE_PLATE"]);