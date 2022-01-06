// Avaritia.zs
// By CJWilk

// Imports

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;

// GT Machines

var fusionReactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");


// Infinity

mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:6>);
fusionReactor.recipeBuilder()
	.fluidInputs([<liquid:alloyium> * 20, <liquid:periodicium>*20])
    .fluidOutputs(<liquid:infinity> * 50)
    .duration(50)
    .EUt(130720)
    .property("eu_to_start", 150000000)
    .buildAndRegister();
