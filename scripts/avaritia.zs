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
    .fluidOutputs(<liquid:draconium> * 50)
    .duration(32)
    .EUt(30720)
    .property("eu_to_start", 140000)
    .buildAndRegister();