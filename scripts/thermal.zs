// Thermal Series
// By CJWilk

// Imports

#reloadable

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

// GT Machines

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");

// Steam Dynamo

recipes.remove(<thermalexpansion:dynamo>);

var fancyDynamo = <thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Energy: 0, Level: 1 as byte, Augments: [{Slot: 0, id: "thermalexpansion:augment", Count: 1 as byte, Damage: 576 as short}]});

recipes.addShaped("thermal_steam_boiler", fancyDynamo, [[null, <ore:pipeLargeFluidBronze>, null], [<ore:plateBronze>, <gregtech:steam_casing>, <ore:plateBronze>], [<ore:plateIron>, <ore:plateInfusedIron>, <ore:plateIron>]]);

// Reinforced Upgrade Kit

recipes.remove(<thermalfoundation:upgrade:1>);
recipes.addShaped("tf_reinforced_kit", <thermalfoundation:upgrade:1>, [[null, <ore:ingotGold>, null], [<ore:ingotGold>, <ore:ingotInfusedIron>, <ore:ingotGold>], [<ore:gearBronze>, <ore:ingotGold>, <ore:gearBronze>]]);

// Transmission Coil Augments

recipes.remove(<thermalexpansion:augment:512>);
recipes.addShaped("tf_coil_augment", <thermalexpansion:augment:512>, [[<ore:plateSilver>, <ore:plateIron>, <ore:plateSilver>], [<ore:plateIron>, <thermalfoundation:material:514>, <ore:plateIron>], [<ore:plateSilver>, <ore:plateIron>, <ore:plateSilver>]]);

// TF Coils

var thermalCoils as IItemStack[] = [
	<thermalfoundation:material:515>,
	<thermalfoundation:material:514>,
	<thermalfoundation:material:513>
];
	for i in thermalCoils {
	recipes.remove(i);
}

alloy_smelter.recipeBuilder()
	.inputs([<ore:dustRedstone> * 4, <ore:stickGold>])
	.outputs(<thermalfoundation:material:513>)
	.duration(100)
	.EUt(24)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs([<ore:dustRedstone> * 4, <ore:stickSilver>])
	.outputs(<thermalfoundation:material:514>)
	.duration(100)
	.EUt(24)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs([<ore:dustRedstone> * 4, <ore:stickElectrum>])
	.outputs(<thermalfoundation:material:515>)
	.duration(100)
	.EUt(24)
	.buildAndRegister();