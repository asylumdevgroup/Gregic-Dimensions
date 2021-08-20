// Roots.zs
// By CJWilk


// Mortar & Pestle

recipes.remove(<roots:mortar>);
recipes.remove(<roots:pestle>);
recipes.addShaped(<roots:pestle>, [[<minecraft:cobblestone>, null, null],[null, <minecraft:cobblestone>, <minecraft:cobblestone>], [null, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<roots:mortar>, [[<minecraft:cobblestone>, null, <minecraft:cobblestone>],[<minecraft:cobblestone>, null, <minecraft:cobblestone>], [null, <minecraft:cobblestone>, null]]);


// Make Pyre require Sawmill

recipes.remove(<roots:bonfire>);
recipes.addShaped(<roots:bonfire>, [[null, <pyrotech:material:20>, null], [<pyrotech:material:20>, <roots:wildroot>, <pyrotech:material:20>], [<ore:cobblestone>, <roots:terra_moss>, <ore:cobblestone>]]);