$data modify entity @s data.length set compute default float \
    {type: "minecraft:add", inputs: [ \
        {type: "minecraft:length", inputs: [ \
            {type: "minecraft:sub", left: $(end_pos_x), right: $(start_pos_x)}, \
            {type: "minecraft:sub", left: $(end_pos_y), right: $(start_pos_y)}, \
            {type: "minecraft:sub", left: $(end_pos_z), right: $(start_pos_z)}, \
        ]}, \
        "sb.placing:scale" \
    ]}