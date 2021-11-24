// Roots.zs
// By CJWilk

// Imports
import mods.roots.Mortar;

// Mortar & Pestle

recipes.remove(<roots:mortar>);
recipes.remove(<roots:pestle>);
recipes.addShaped(<roots:pestle>, [[<minecraft:cobblestone>, null, null],[null, <minecraft:cobblestone>, <minecraft:cobblestone>], [null, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<roots:mortar>, [[<minecraft:cobblestone>, null, <minecraft:cobblestone>],[<minecraft:cobblestone>, null, <minecraft:cobblestone>], [null, <minecraft:cobblestone>, null]]);


// Make Pyre require Sawmill

recipes.remove(<roots:pyre>);
recipes.addShaped(<roots:pyre>, [[null, <pyrotech:material:20>, null], [<pyrotech:material:20>, <roots:wildroot>, <pyrotech:material:20>], [<ore:cobblestone>, <roots:terra_moss>, <ore:cobblestone>]]);


// Make Fey Crafter Require Skyroot

recipes.remove(<roots:fey_crafter>);
recipes.addShaped("roots_fey", <roots:fey_crafter>, [[<ore:treeSapling>, <contenttweaker:skyroot>, <ore:treeSapling>], [<roots:terra_moss>, <ore:treeSapling>, <roots:terra_moss>], [<ore:treeSapling>, <bewitchment:elder_wood>, <ore:treeSapling>]]);

// Make Staff Require Aether Materials

recipes.remove(<roots:staff>);
recipes.addShaped("roots_staff", <roots:staff>.withTag({}), [[null, <contenttweaker:skyroot>, <ore:gemZanite>], [null, <ore:stickWood>, <contenttweaker:skyroot>], [<ore:stickWood>, null, null]]);

// Sky Soarer Spell
