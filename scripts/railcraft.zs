// Railcraft.zs
// By CJWilk

// Imports


// Coke Oven Brick
recipes.remove(<railcraft:coke_oven>);
// recipes.addShaped("railcraft_coke_oven", <railcraft:coke_oven>, [[<gregtech:meta_item_2:32016>, <gregtech:meta_item_2:32016>], [<gregtech:meta_item_2:32016>, <gregtech:meta_item_2:32016>]]);


// Water Tank

recipes.remove(<railcraft:tank_water>);
recipes.addShaped("railcraft_water_tank", <railcraft:tank_water> * 4, [[<ore:plankWood>, <ore:plateBronze>, <ore:plankWood>], [<ore:screwBronze>, <gregtech:meta_item_1:32627>, <ore:screwBronze>], [<ore:plankWood>, <ore:craftingToolScrewdriver>, <ore:plankWood>]]);

// Boiler Tanks

recipes.remove(<railcraft:boiler_tank_pressure_high>);
recipes.remove(<railcraft:boiler_tank_pressure_low>);

recipes.addShaped("lp_rc_boiler", <railcraft:boiler_tank_pressure_low> * 2, [[<ore:plateIron>, <ore:plateInvar>, <ore:plateIron>], [<ore:plateIron>, null, <ore:plateIron>], [<ore:screwIron>, <ore:plateIron>, <ore:screwIron>]]);
recipes.addShaped("hp_rc_boiler", <railcraft:boiler_tank_pressure_high> * 2, [[<ore:plateWroughtIron>, <ore:plateInvar>, <ore:plateWroughtIron>], [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>], [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]]);

// Fireboxes

recipes.remove(<railcraft:boiler_firebox_fluid>);
recipes.remove(<railcraft:boiler_firebox_solid>);

recipes.addShaped("fluid_firebox", <railcraft:boiler_firebox_fluid>, [[<ore:plateWroughtIron>, <ore:plateSteel>, <ore:plateWroughtIron>], [<ore:plateWroughtIron>, <gregtech:machine:812>, <ore:plateWroughtIron>], [<ore:plateWroughtIron>, <tconstruct:seared_furnace_controller>, <ore:plateWroughtIron>]]);
recipes.addShaped("solid_firebox", <railcraft:boiler_firebox_solid>, [[<ore:blockSeared>, <ore:plateIron>, <ore:blockSeared>], [<ore:plateIron>, null, <ore:plateIron>], [<ore:blockSeared>, <tconstruct:seared_furnace_controller>, <ore:blockSeared>]]);