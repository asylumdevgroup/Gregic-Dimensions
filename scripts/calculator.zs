// Calculator.zs
// By CJWilk

#reloadable

// Imports

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

// GT Machines

val assembler as RecipeMap = <recipemap:assembler>;


// Disabled

var removals as IItemStack[] = [
	<calculator:powercube>,
	<calculator:advancedpowercube>,
	<calculator:creativepowercube>
];
	for i in removals {
	mods.jei.JEI.removeAndHide(i);
}

// Basic Calculator
recipes.remove(<calculator:calculator>);

assembler.recipeBuilder()
	.inputs(<metaitem:plateSteel> * 2, <calculator:calculatorscreen>, <metaitem:wireFineRedAlloy> * 16, <metaitem:screwSteel> * 2, <calculator:calculatorassembly>, <ore:circuitLv> * 2)
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<calculator:calculator>.withTag({}))
	.duration(100)
	.EUt(30)
	.buildAndRegister();
	
// Calculator Screen
recipes.remove(<calculator:calculatorscreen>);

assembler.recipeBuilder()
	.inputs(<metaitem:plateGlass>, <metaitem:wireFineCopper> * 8, <metaitem:foilSteel> * 4)
	.outputs(<calculator:calculatorscreen>)
	.duration(50)
	.EUt(30)
	.buildAndRegister();

// Calculator Assembly
recipes.remove(<calculator:calculatorassembly>);

assembler.recipeBuilder()
	.inputs(<metaitem:plateSteel>, <minecraft:stone_button> * 8, <ore:circuitLv>, <metaitem:wireFineCopper> * 4)
	.outputs(<calculator:calculatorassembly>)
	.duration(50)
	.EUt(30)
	.buildAndRegister();
	
// Reinforced Steel
<calculator:reinforcedironsword>.displayName = "Reinforced Steel Sword";
<calculator:reinforcedironaxe>.displayName = "Reinforced Steel Axe";
<calculator:reinforcedironshovel>.displayName = "Reinforced Steel Shovel";
<calculator:reinforcedironhoe>.displayName = "Reinforced Steel Hoe";
<calculator:reinforcedironpickaxe>.displayName = "Reinforced Steel Pickaxe";
<calculator:material:3>.displayName = "Reinforced Steel Block";
<calculator:reinforcedironingot>.displayName = "Reinforced Steel Ingot";

<ore:ingotReinforcedSteel>.add(<calculator:reinforcedironingot>);

// Reinforced Furnace

recipes.remove(<calculator:reinforcedfurnace>);

assembler.recipeBuilder()
	.inputs(<tconstruct:seared_furnace_controller>, <metaitem:plateReinforcedSteel> * 2, <sonarcore:reinforcedstoneblock> * 4)
	.outputs(<calculator:reinforcedfurnace>)
	.duration(100)
	.EUt(30)
	.buildAndRegister();