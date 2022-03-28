// Minecraft.zs
// By CJwilk and MCAdventureCity

// Chest
recipes.remove(<minecraft:chest>);
recipes.addShaped("chest_early", <minecraft:chest>, [[<ore:logWood>, <ore:plankWood>, <ore:logWood>], [<pyrotech:material:20>, <ore:nuggetIron>, <pyrotech:material:20>], [<ore:logWood>, <ore:plankWood>, <ore:logWood>]]);

// Disable Vanilla Crafting Table & Furnace

recipes.remove(<minecraft:crafting_table>);
recipes.remove(<minecraft:furnace>);
<recipemap:assembler>.findRecipe(6, [<metaitem:plateWood> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 4})], null).remove();
<recipemap:assembler>.findRecipe(7, [<minecraft:cobblestone:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();

<minecraft:crafting_table>.addTooltip(format.red("Disabled. Use Tinkers' Crafting Station instead."));
<minecraft:furnace>.addTooltip(format.red("Disabled. Use Tinkers' Seared Furnace or GT Furnaces instead."));