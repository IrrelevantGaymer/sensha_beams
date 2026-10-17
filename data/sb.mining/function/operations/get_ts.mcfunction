$data modify entity @s data.beam_if_dir_zero_then_origin_in_bounds set compute default integer \
    {type: "minecraft:mul", inputs: [ \
        $(beam_if_dir_zero_then_origin_in_bounds_x), \
        $(beam_if_dir_zero_then_origin_in_bounds_y), \
        $(beam_if_dir_zero_then_origin_in_bounds_z) \
    ]}
$data modify entity @s data.beam_t_min set compute default float \
    {type: "minecraft:max", inputs: [ \
        $(beam_t_min_x), \
        $(beam_t_min_y), \
        $(beam_t_min_z) \
    ]}
$data modify entity @s data.beam_t_max set compute default float \
    {type: "minecraft:min", inputs: [ \
        $(beam_t_max_x), \
        $(beam_t_max_y), \
        $(beam_t_max_z) \
    ]}

# tellraw @a ["beam_t_min ", {nbt: "data.beam_t_min", entity: "@s"}]
# tellraw @a ["beam_t_max ", {nbt: "data.beam_t_max", entity: "@s"}]