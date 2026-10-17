$data modify entity @s data.beam_center_x set compute default float \
    {type: "minecraft:add", inputs: [ \
        $(beam_start_pos_x), \
        {type: "minecraft:mul", inputs: [ \
            0.5, \
            {type: "minecraft:sub", left: $(beam_length), right: "sb.placing:scale"}, \
            $(beam_u_forward_x) \
        ]} \
    ]}
$data modify entity @s data.beam_center_y set compute default float \
    {type: "minecraft:add", inputs: [ \
        $(beam_start_pos_y), \
        {type: "minecraft:mul", inputs: [ \
            0.5, \
            {type: "minecraft:sub", left: $(beam_length), right: "sb.placing:scale"}, \
            $(beam_u_forward_y) \
        ]} \
    ]}
$data modify entity @s data.beam_center_z set compute default float \
    {type: "minecraft:add", inputs: [ \
        $(beam_start_pos_z), \
        {type: "minecraft:mul", inputs: [ \
            0.5, \
            {type: "minecraft:sub", left: $(beam_length), right: "sb.placing:scale"}, \
            $(beam_u_forward_z) \
        ]} \
    ]}

# tellraw @a ["beam_center (", {nbt: "data.beam_center_x", entity: "@s"}, ", ", {nbt: "data.beam_center_y", entity: "@s"}, ", ", {nbt: "data.beam_center_z", entity: "@s"}, ")"]