// Thermal Series
// By CJWilk


// Steam Dynamo

recipes.remove(<thermalexpansion:dynamo>);

var fancyDynamo = <thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Energy: 0, Level: 1 as byte, Augments: [{Slot: 0, id: "thermalexpansion:augment", Count: 1 as byte, Damage: 576 as short}]});

recipes.addShaped("thermal_steam_boiler", fancyDynamo, [[null, <ore:pipeLargeBronze>, null], [<ore:plateBronze>, <gregtech:machine_casing:10>, <ore:plateBronze>], [<ore:plateIron>, <ore:plateInfusedIron>, <ore:plateIron>]]);
