// Custom GT Machines
// By CJWilk

// Imports
import mods.gregtech.machine.MachineBuilder;
import mods.gregtech.recipe.RecipeMapBuilder;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.machine.Renderer;
import mods.gregtech.machine.MoveType;

// Ore Unifier

val unifierRecipes as RecipeMap = RecipeMapBuilder.create("unifier")
	.setInputs(1)
	.setOutputs(1)
	.setFluidInputs(1)
	.setDurationBar("textures/gui/progress_bar/progress_bar_arrow.png",MoveType.RIGHT)
	.build();

// Vending Machine

val vendingRecipes as RecipeMap = RecipeMapBuilder.create("vending_machine")
	.setInputs(1)
	.setOutputs(9)
	.setDurationBar("textures/gui/progress_bar/progress_bar_arrow.png",MoveType.RIGHT)
	.build();

MachineBuilder.create(32000, "ore_unifier")
	.addSteamTier(false, true)
	.addSteamTier(true)
	.addTierRange(1,3)
	.setRecipeMap(unifierRecipes)
	/*.setRenderer(Renderer.create("machines/ore_unifier", "front", "top", "side"))*/
	.setRenderer("machines/forge_hammer")
	.buildAndRegister();

MachineBuilder.create(32016, "steam_mixer")
	.addSteamTier(false, false)
	.addSteamTier(true)
	.setRecipeMap(<recipemap:mixer>)
	.setRenderer("machines/mixer")
	.buildAndRegister();

MachineBuilder.create(32032, "vending_machine")
	.addTierRange(1,14)
	.addSteamTier(false, false)
	.addSteamTier(true)
	.setRecipeMap(vendingRecipes)
	.setRenderer("machines/assembler")
	.buildAndRegister();