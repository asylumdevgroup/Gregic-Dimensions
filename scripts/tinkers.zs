// Tinkers.zs
// By CJWilk


// Imports

import mods.pyrotech.SoakingPot;
import mods.pyrotech.Burn;
import mods.pyrotech.GraniteAnvil;


// Drying Rack

recipes.remove(<tconstruct:rack:1>);
recipes.addShaped(<tconstruct:rack:1>, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<mysticalworld:silk_thread>, null, <mysticalworld:silk_thread>]]);


// Grout

recipes.remove(<tconstruct:soil>);
SoakingPot.addRecipe("grout", <tconstruct:soil>, <liquid:water>, <enderio:item_material:22>, 300);


// Seared Bricks

furnace.remove(<ore:ingotBrickSeared>, <tconstruct:soil>);

Burn.createBuilder("grout_seared_stone", <tconstruct:seared>, "tconstruct:soil")
	.setBurnStages(1)
	.setTotalBurnTimeTicks(1200)
	.setFluidProduced(<liquid:stone> * 500)
	.setFailureChance(0)
	.setRequiresRefractoryBlocks(true)
	.register();

GraniteAnvil.addRecipe("seared_bricks_anvil", <tconstruct:materials>, <tconstruct:seared>, 2, "pickaxe");


