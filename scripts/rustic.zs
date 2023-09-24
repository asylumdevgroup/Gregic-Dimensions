// Rustic.zs
// By CJWilk


#reloadable

// Earlier Alchemic Condensor

recipes.remove(<rustic:retort>);
recipes.remove(<rustic:condenser>);

recipes.addShaped("rustic_alchemic_condensor", <rustic:condenser>, [[null, <pyrotech:material:5>, null], [<pyrotech:material:5>, <pyrotech:bucket_clay>, <pyrotech:material:5>], [<pyrotech:material:5>, <ore:hardenedClay>, <pyrotech:material:5>]]);
recipes.addShaped("rustic_retort", <rustic:retort>, [[null, <pyrotech:material:5>, null], [<ore:ingotBrick>, <pyrotech:bucket_clay>, null], [null, <pyrotech:material:5>, null]]);


