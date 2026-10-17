$data modify entity @s Pos[0] set compute default float \
    { \
        type: "minecraft:div", \
        left: {type: "minecraft:add", inputs: [$(start_pos_x), $(end_pos_x)]}, \
        right: 2.0 \
    }
$data modify entity @s Pos[1] set compute default float \
    { \
        type: "minecraft:div", \
        left: {type: "minecraft:add", inputs: [$(start_pos_y), $(end_pos_y)]}, \
        right: 2.0 \
    }
$data modify entity @s Pos[2] set compute default float \
    { \
        type: "minecraft:div", \
        left: {type: "minecraft:add", inputs: [$(start_pos_z), $(end_pos_z)]}, \
        right: 2.0 \
    }