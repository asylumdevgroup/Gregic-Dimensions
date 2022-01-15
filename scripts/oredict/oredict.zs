// oredict.zs
// By MCAdventureCity & Gregicality Community Pack Team & CJWilk
// Credit to Gregicality team for most of the code in this script

#priority 999

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.jei.JEI;

static mods as string[] = ["minecraft", "gregtech", "gcym", "thermalfoundation", "enderio", "pyrotech", "nuclearcraft", "qmd", "mysticalworld", "calculator"];
static size as int = mods.length - 1;

function unify_oredicts (oredict as [IOreDictEntry]) {
    for ore in oredict {

        // Checks if Ore Dict is empty, true = stop
        if (ore.empty != true) { 

            // If more than 1 item in ore dict
            if (ore.itemArray.length > 1) { 
                unify(ore, 0);
            }
        }
    }
}

function unify (ore as IOreDictEntry, p as int) {
    var pos = p;
    var foundMod as bool = false;

    // For every item in the ore dict, check if one is from the <mod>
    for item in ore.itemArray { 

        // check any item is from current mod
        if (item.definition.owner == mods[pos]) {
            foundMod = true;
        }
    }
    
    // If it is from <mod>, remove everything except the item from <mod>, else try next mod until all mods are exhausted
    if (foundMod) {
        for item in ore.itemArray {

            if (item.definition.owner != mods[pos]) {
                ore.remove(item);
                JEI.hide(item);
            }
        }
    } else if (pos < size) {
        pos += 1;
        unify(ore, pos);
    }

}

//
<ore:blockAluminum>.remove(<ore:blockAluminum>.firstItem);
<ore:ingotAluminum>.remove(<ore:ingotAluminum>.firstItem);

// Certus Compatability
<ore:crystalCertusQuartz>.add(<metaitem:gemCertusQuartz>);
<ore:gemCertusQuartz>.remove(<ore:gemCertusQuartz>.firstItem);
<ore:crystalChargedCertusQuartz>.add(<appliedenergistics2:material:1>);

// Manganese Dioxide Compatibility
<ore:dustManganeseDioxide>.add(<ore:dustRegularPyrolusite>.firstItem);

// NC Bioplastic -> Polystyrene
<ore:bioplastic>.add(<ore:platePolystyrene>.firstItem); 


unify_oredicts(<ore:ingot*>);
unify_oredicts(<ore:plate*>);
unify_oredicts(<ore:block*>);
unify_oredicts(<ore:dust*>);
unify_oredicts(<ore:gear*>);
unify_oredicts(<ore:stick*>);
unify_oredicts(<ore:crystal*>);
unify_oredicts(<ore:nugget*>);

unify(<ore:bioplastic>, 0);
unify(<ore:itemSilicon>, 0);


// Early Ore OreDict Creation

oreDict.oreEarlyIron;
oreDict.oreEarlyCopper;
oreDict.oreEarlyPrecMetal;
oreDict.oreEarlyTin;

val oreDictEntIron = <ore:oreEarlyIron>;
val oreDictEntCopper = <ore:oreEarlyCopper>;
val oreDictEntPrecMetal = <ore:oreEarlyPrecMetal>;
val oreDictEntTin = <ore:oreEarlyTin>;

oreDictEntIron.addAll(<ore:oreIron>);
oreDictEntIron.addAll(<ore:oreMagnetite>);
oreDictEntIron.addAll(<ore:orePyrite>);
oreDictEntIron.addAll(<ore:oreBrownLimonite>);
oreDictEntIron.addAll(<ore:oreYellowLimonite>);
oreDictEntIron.addAll(<ore:oreBandedIron>);

oreDictEntCopper.addAll(<ore:oreCopper>);
oreDictEntCopper.addAll(<ore:oreChalcopyrite>);

oreDictEntPrecMetal.addAll(<ore:oreGold>);

oreDictEntTin.addAll(<ore:oreTin>);
oreDictEntTin.addAll(<ore:oreCassiterite>);

// New GT Materials OreDict Fix

<ore:ingotInfusedIron>.add(<naturesaura:infused_iron>);
<ore:ingotNetherite>.add(<netherbackport:netheriteingot>);

// Rubber Ring OreDict

oreDict.oreRubberRing;

val oreDictRubberRingEnt = <ore:oreRubberRing>;

oreDictRubberRingEnt.add(<gregtech:meta_ring:1068>);
oreDictRubberRingEnt.add(<gregtech:meta_ring:32003>);
oreDictRubberRingEnt.add(<gregtech:meta_ring:1004>);
oreDictRubberRingEnt.add(<gregtech:meta_ring:1000>);

<ore:ingotAstralStarmetal>.add(<gregtech:meta_ingot:32007>);
<ore:ingotStarmetal>.add(<astralsorcery:itemcraftingcomponent:1>);

<ore:ingotUltimate>.addAll(<ore:ingotAlloyium>);
<ore:nuggetUltimate>.addAll(<ore:nuggetAlloyium>);
<ore:blockUltimate>.addAll(<ore:blockAlloyium>);

<ore:ingotAlloyium>.addAll(<ore:ingotUltimate>);
<ore:nuggetAlloyium>.addAll(<ore:nuggetUltimate>);
<ore:blockAlloyium>.addAll(<ore:blockUltimate>);
