# round(hit * 16.0) / 16.0 + sign(dir) * delta
$data modify entity @s Pos[0] set compute default float {type: "minecraft:add", inputs: [ \
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
$data modify entity @s Pos[1] set compute default float {type: "minecraft:add", inputs: [ \
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
$data modify entity @s Pos[2] set compute default float {type: "minecraft:add", inputs: [ \
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

data modify entity @s transformation.scale[0] set compute default float sb.placing:highlight_scale
data modify entity @s transformation.scale[1] set compute default float sb.placing:highlight_scale
data modify entity @s transformation.scale[2] set compute default float sb.placing:highlight_scale
data modify entity @s item.id set value "minecraft:white_stained_glass"
data modify entity @s Rotation set value [0.0, 0.0]
data modify entity @s brightness set value {block: 15, sky: 15}

return 1