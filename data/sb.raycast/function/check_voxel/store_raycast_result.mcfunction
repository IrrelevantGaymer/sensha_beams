# SAFETY: the normal generation assumes full voxels, this can be worked around by manually setting axis

function sb.raycast:check_voxel/clear_raycast_result

$data modify entity @s data.hit_x set compute default float \
    {type: "minecraft:add", inputs: [ \
        $(origin_x), \
        {type: "minecraft:mul", inputs: [$(distance), $(dir_x)]} \
    ]}
$data modify entity @s data.hit_y set compute default float \
    {type: "minecraft:add", inputs: [ \
        $(origin_y), \
        {type: "minecraft:mul", inputs: [$(distance), $(dir_y)]} \
    ]}
$data modify entity @s data.hit_z set compute default float \
    {type: "minecraft:add", inputs: [ \
        $(origin_z), \
        {type: "minecraft:mul", inputs: [$(distance), $(dir_z)]} \
    ]}

$data modify entity @s data.normal_x set compute default float \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:int_value_check", value: $(axis), test: 0}, \
        on_true: {type: "minecraft:negate", input: $(step_x)}, \
        on_false: 0.0 \
    }
$data modify entity @s data.normal_y set compute default float \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:int_value_check", value: $(axis), test: 1}, \
        on_true: {type: "minecraft:negate", input: $(step_y)}, \
        on_false: 0.0 \
    }
$data modify entity @s data.normal_z set compute default float \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:int_value_check", value: $(axis), test: 2}, \
        on_true: {type: "minecraft:negate", input: $(step_z)}, \
        on_false: 0.0 \
    }

execute \
    if data storage sb.debug {raycast: true} \
    run function sb.raycast:check_voxel/print_raycast_result

return 1