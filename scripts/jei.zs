// JEI.zs
// By CJWilk

// Imports

import crafttweaker.item.IItemStack;

// Remove and Hide

var removeHide as IItemStack[] = [
	<enderio:block_simple_alloy_smelter>,
	<enderio:block_alloy_smelter>,
	<enderio:block_enhanced_alloy_smelter>,
	<enderio:block_vat>,
	<enderio:block_enhanced_vat>
];

for i in removeHide {
	mods.jei.JEI.removeAndHide(i);
}

// Remove
