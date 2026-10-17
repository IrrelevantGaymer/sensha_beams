$data modify entity @s data.transformed_origin_x set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: [$(offset_x), $(beam_u_right_x)]}, \
        {type: "minecraft:mul", inputs: [$(offset_y), $(beam_u_right_y)]}, \
        {type: "minecraft:mul", inputs: [$(offset_z), $(beam_u_right_z)]} \
    ]}
$data modify entity @s data.transformed_origin_y set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: [$(offset_x), $(beam_u_up_x)]}, \
        {type: "minecraft:mul", inputs: [$(offset_y), $(beam_u_up_y)]}, \
        {type: "minecraft:mul", inputs: [$(offset_z), $(beam_u_up_z)]} \
    ]}
$data modify entity @s data.transformed_origin_z set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: [$(offset_x), $(beam_u_forward_x)]}, \
        {type: "minecraft:mul", inputs: [$(offset_y), $(beam_u_forward_y)]}, \
        {type: "minecraft:mul", inputs: [$(offset_z), $(beam_u_forward_z)]} \
    ]}

$data modify entity @s data.transformed_dir_x set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: [$(dir_x), $(beam_u_right_x)]}, \
        {type: "minecraft:mul", inputs: [$(dir_y), $(beam_u_right_y)]}, \
        {type: "minecraft:mul", inputs: [$(dir_z), $(beam_u_right_z)]} \
    ]}
$data modify entity @s data.transformed_dir_y set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: [$(dir_x), $(beam_u_up_x)]}, \
        {type: "minecraft:mul", inputs: [$(dir_y), $(beam_u_up_y)]}, \
        {type: "minecraft:mul", inputs: [$(dir_z), $(beam_u_up_z)]} \
    ]}
$data modify entity @s data.transformed_dir_z set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: [$(dir_x), $(beam_u_forward_x)]}, \
        {type: "minecraft:mul", inputs: [$(dir_y), $(beam_u_forward_y)]}, \
        {type: "minecraft:mul", inputs: [$(dir_z), $(beam_u_forward_z)]} \
    ]}

# tellraw @a ["transformed_origin (", {nbt: "data.transformed_origin_x", entity: "@s"}, ", ", {nbt: "data.transformed_origin_y", entity: "@s"}, ", ", {nbt: "data.transformed_origin_z", entity: "@s"}, ")"]
# tellraw @a ["transformed_dir (", {nbt: "data.transformed_dir_x", entity: "@s"}, ", ", {nbt: "data.transformed_dir_y", entity: "@s"}, ", ", {nbt: "data.transformed_dir_z", entity: "@s"}, ")"]