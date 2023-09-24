// Applied Energistics 2
// By CJWilk

#reloadable

// Imports

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

// GT Machines

val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

// Removals

var removals as IItemStack[] = [
	<appliedenergistics2:inscriber>,
	<appliedenergistics2:charger>,
	<threng:machine:1>,
	<threng:machine:2>,
	<threng:machine:5>,
	<threng:machine>,
	<threng:machine>,
	<threng:material:7>,
	<threng:material:8>,
	<threng:material:9>,
	<threng:material:10>,
	<threng:material:11>,
	<threng:material:12>,
	<threng:material:13>,
	<threng:material:14>
];
	for i in removals {
	mods.jei.JEI.removeAndHide(i);
}


// Fluix Steel

mods.jei.JEI.removeAndHide(<threng:material:2>);
furnace.remove(<threng:material>);

// Carbonic Fluix Mix

recipes.remove(<threng:material:1>);
mixer.recipeBuilder()
	.inputs([<ore:dustCarbon> * 2, <ore:dustFluix> * 2, <ore:dustSilicon>])
	.outputs([<threng:material:1> *5])
	.duration(120)
	.EUt(30)
	.buildAndRegister();
	
// ME Controller

recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped("me_controller", <appliedenergistics2:controller>, [[<appliedenergistics2:smooth_sky_stone_block>, <ore:plateFluixSteel>, <appliedenergistics2:smooth_sky_stone_block>],[<ore:plateStarmetal>, <threng:material:6>, <ore:plateStarmetal>],[<appliedenergistics2:smooth_sky_stone_block>, <ore:plateFluixSteel>, <appliedenergistics2:smooth_sky_stone_block>]]);

// ME Drive

recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped("me_drive", <appliedenergistics2:drive>, [[<ore:plateStainlessSteel>, <appliedenergistics2:part:16>, <ore:plateStainlessSteel>],[<ore:plateFluixSteel>, <appliedenergistics2:material:24>, <ore:plateFluixSteel>],[<ore:plateStainlessSteel>, <appliedenergistics2:part:16>, <ore:plateStainlessSteel>]]);