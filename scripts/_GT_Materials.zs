// GT Materials
// By CJWilk


// Imports

#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.devtech.unification.IStoneType;
import mods.devtech.unification.IBlockStatePredicate;
import crafttweaker.block.IBlockState;
import mods.devtech.unification.IOrePrefix;
import mods.devtech.unification.IMaterialIconType;
import mods.devtech.unification.IMaterialPredicate;


// Gems

var gravitite = MaterialRegistry.createGemMaterial(475, "gravitite", 0xc498d2, "DIAMOND", 3);
gravitite.addFlags(["GENERATE_LENSE", "GENERATE_ORE"]);