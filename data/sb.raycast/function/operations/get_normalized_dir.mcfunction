# SAFETY: make sure that pitch and yaw have been converted to radians first

$data modify entity @s data.dir_x set \
    compute default float {type: "minecraft:negate", input: {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:sin", input: $(yaw_r)}, \
        {type: "minecraft:cos", input: $(pitch_r)} \
    ]}}
$data modify entity @s data.dir_y set \
    compute default float {type: "minecraft:negate", input: {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:sin", input: $(pitch_r)} \
    ]}}
$data modify entity @s data.dir_z set \
    compute default float {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:cos", input: $(yaw_r)}, \
        {type: "minecraft:cos", input: $(pitch_r)} \
    ]}
