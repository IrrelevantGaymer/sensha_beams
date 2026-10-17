data modify entity @s data.beam_min_x set compute default float \
    {type: "minecraft:negate", input: { \
        type: "minecraft:div", \
        left: "sb.placing:scale_plus_delta", \
        right: 2.0 \
    }}
data modify entity @s data.beam_min_y set compute default float \
    {type: "minecraft:negate", input: { \
        type: "minecraft:div", \
        left: "sb.placing:scale_plus_delta", \
        right: 2.0 \
    }}
$data modify entity @s data.beam_min_z set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:div", \
        left: {type: "minecraft:add", inputs: [ \
            $(beam_length), \
            "sb.placing:scale_delta" \
        ]}, \
        right: 2.0 \
    }}

data modify entity @s data.beam_max_x set compute default float \
    {type: "minecraft:div", left: "sb.placing:scale_plus_delta", right: 2.0}
data modify entity @s data.beam_max_y set compute default float \
    {type: "minecraft:div", left: "sb.placing:scale_plus_delta", right: 2.0}
$data modify entity @s data.beam_max_z set compute default float \
    {type: "minecraft:div", \
        left: {type: "minecraft:add", inputs: [ \
            $(beam_length), \
            "sb.placing:scale_delta" \
        ]}, \
        right: 2.0 \
    }

# tellraw @a ["min (", {nbt: "data.beam_min_x", entity: "@s"}, ", ", {nbt: "data.beam_min_y", entity: "@s"}, ", ", {nbt: "data.beam_min_z", entity: "@s"}, ")"]
# tellraw @a ["max (", {nbt: "data.beam_max_x", entity: "@s"}, ", ", {nbt: "data.beam_max_y", entity: "@s"}, ", ", {nbt: "data.beam_max_z", entity: "@s"}, ")"]