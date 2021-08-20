// Mysticalworld.zs
// By CJWilk


// Remove Silk from String OreDict

val silkOreDict = <ore:string>;
silkOreDict.remove(<mysticalworld:silk_thread>);


// Make Silk to String 3:1 instead of 2:1
recipes.removeShapeless(<ore:string>, [<mysticalworld:silk_thread>, <mysticalworld:silk_thread>]);
recipes.addShapeless("silk_to_string", <minecraft:string>, [<mysticalworld:silk_thread>, <mysticalworld:silk_thread>, <mysticalworld:silk_thread>]);