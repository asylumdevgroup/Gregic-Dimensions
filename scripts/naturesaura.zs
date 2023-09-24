// Nature's Aura.zs
// By CJWilk

#reloadable

// Imports


// Wooden Stand

recipes.remove(<naturesaura:wood_stand>);
recipes.addShaped("na_wood_stand", <naturesaura:wood_stand>, [[<ore:craftingToolSaw>, <ore:logWood>]]);


// Gold Leaf/Powder

mods.jei.JEI.removeAndHide(<naturesaura:golden_leaves>);
mods.jei.JEI.removeAndHide(<naturesaura:gold_fiber>);

<naturesaura:gold_leaf>.displayName = "Precious Leaf";
<naturesaura:gold_powder>.displayName = "Precious Powder";

recipes.remove(<naturesaura:gold_powder>);

recipes.addShaped("na_gold_powder", <naturesaura:gold_powder>, [[<ore:craftingToolMortar>, <naturesaura:gold_leaf>]]);



// Gold Stone Bricks

<naturesaura:gold_brick>.displayName = "Brilliant Bricks";



// Add Recipe to convert NA Infused Iron to the GT Material Version.

recipes.addShapeless("gt_infused_iron", <metaitem:ingotInfusedIron>, [<naturesaura:infused_iron>]);





mods.jei.JEI.hide(<auraddons:block_wither_proofer>);