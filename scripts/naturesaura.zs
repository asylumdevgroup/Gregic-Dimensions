// Nature's Aura.zs
// By CJWilk


// Imports

import mods.roots.Pyre;

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

Pyre.addRecipe("na_gold_leaf", <naturesaura:gold_leaf>*10, [<naturesaura:gold_leaf>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>]);

//Add Ritual of the Forest Recipe for Gold Stone Bricks