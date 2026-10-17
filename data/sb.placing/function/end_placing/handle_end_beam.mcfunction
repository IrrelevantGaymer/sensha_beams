# round(hit * 16.0) / 16.0 + sign(dir) * delta
$data modify entity @s data.end_pos_x set compute default float {type: "minecraft:add", inputs: [ \
    { \
        type: "minecraft:div", \
        left: { \
            type: "minecraft:round", \
            input: {type: "minecraft:mul", inputs: ["sb.placing:snap_grid_size", $(hit_x)]} \
        }, \
        right: "sb.placing:snap_grid_size" \
    }, \
    $(delta_x) \
]}
$data modify entity @s data.end_pos_y set compute default float {type: "minecraft:add", inputs: [ \
    { \
        type: "minecraft:div", \
        left: { \
            type: "minecraft:round", \
            input: {type: "minecraft:mul", inputs: ["sb.placing:snap_grid_size", $(hit_y)]} \
        }, \
        right: "sb.placing:snap_grid_size" \
    }, \
    $(delta_y) \
]}
$data modify entity @s data.end_pos_z set compute default float {type: "minecraft:add", inputs: [ \
    { \
        type: "minecraft:div", \
        left: { \
            type: "minecraft:round", \
            input: {type: "minecraft:mul", inputs: ["sb.placing:snap_grid_size", $(hit_z)]} \
        }, \
        right: "sb.placing:snap_grid_size" \
    }, \
    $(delta_z) \
]}

function sb.placing:operations/calculate_length with entity @s data
function sb.placing:operations/calculate_cost with entity @s data
function sb.placing:operations/calculate_scale with entity @s data
data modify entity @s transformation.scale[0] set compute default float sb.placing:scale_plus_delta
data modify entity @s transformation.scale[1] set compute default float sb.placing:scale_plus_delta
data modify entity @s transformation.scale[2] set from entity @s data.scale
function sb.placing:operations/calculate_midpoint with entity @s data
function sb.placing:operations/calculate_rot with entity @s data

execute \
    if function sb.placing:predicates/is_valid_beam \
    run return run data modify entity @s item.id set value "minecraft:lime_concrete"

data modify entity @s item.id set value "minecraft:red_concrete"

return 1