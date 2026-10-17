tag @s add sb.holding_beam

$summon item_display ~ ~ ~ {data: {UUID: $(UUID)}, Tags: ["placing_sensha_beam"]}

function sb.placing:holding/update_holding with entity @s