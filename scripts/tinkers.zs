// Tinkers.zs
// By CJWilk and MCAdventureCity

#reloadable


// Blank Pattern
recipes.remove(<tconstruct:pattern>);
recipes.addShapedMirrored("blank_pattern", <tconstruct:pattern> * 8, [[<pyrotech:material:23>, <thermalfoundation:material:801>],[<thermalfoundation:material:801>,<pyrotech:material:23>]]);

// Drying Rack

recipes.remove(<tconstruct:rack:1>);
recipes.addShaped(<tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab", Count: 1 as byte, Damage: 0 as short}}), [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<mysticalworld:silk_thread>, null, <mysticalworld:silk_thread>]]);


// Grout

recipes.remove(<tconstruct:soil>);


// Seared Bricks

furnace.remove(<ore:ingotBrickSeared>, <tconstruct:soil>);


// Seared Melter and Furnace

recipes.remove(<tcomplement:melter>);
recipes.remove(<tconstruct:seared_furnace_controller>);


// Tool & Crafting Stations

recipes.remove(<tconstruct:tooltables>);
recipes.remove(<tconstruct:tooltables:3>);

recipes.addShaped("tinkers_crafting_station", <tconstruct:tooltables>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:ingotIron>, <ore:plankWood>], [<ore:logWood>, null, <ore:logWood>]]);
recipes.addShaped("tinkers_tool_station", <tconstruct:tooltables:3>, [[<ore:plankWood>, <tconstruct:pattern>, <ore:plankWood>], [<ore:plankWood>, <ore:ingotBronze>, <ore:plankWood>], [<ore:logWood>, null, <ore:logWood>]]);

