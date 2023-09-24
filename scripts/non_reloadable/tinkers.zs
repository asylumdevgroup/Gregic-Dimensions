// Tinkers.zs

// Imports

import mods.pyrotech.SoakingPot;
import mods.pyrotech.Burn;
import mods.pyrotech.GraniteAnvil;
import mods.naturesaura.TreeRitual;


SoakingPot.addRecipe("grout", <tconstruct:soil>, <liquid:water>, <enderio:item_material:22>, 300);


Burn.createBuilder("grout_seared_stone", <tconstruct:seared>, "tconstruct:soil")
	.setBurnStages(1)
	.setTotalBurnTimeTicks(1200)
	.setFluidProduced(<liquid:stone> * 500)
	.setFailureChance(0)
	.setRequiresRefractoryBlocks(true)
	.register();

GraniteAnvil.addRecipe("seared_bricks_anvil", <tconstruct:materials>, <tconstruct:seared>, 2, "pickaxe");

TreeRitual.addRecipe("tinkers_melter", <minecraft:sapling>, <tcomplement:melter>, 160, [<tconstruct:seared_tank>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]);
TreeRitual.addRecipe("tinkers_furnace", <minecraft:sapling>, <tconstruct:seared_furnace_controller>, 160, [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]);
