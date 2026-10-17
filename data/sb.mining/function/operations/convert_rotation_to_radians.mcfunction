$data modify entity @s data.beam_yaw_r set \
    compute default float {type: "minecraft:mul", inputs: [ \
        $(beam_yaw), \
        "sb.raycast:pi", \
        {type: "minecraft:div", left: 1.0, right: 180.0} \
    ]}
$data modify entity @s data.beam_pitch_r set \
    compute default float {type: "minecraft:mul", inputs: [ \
        $(beam_pitch), \
        "sb.raycast:pi", \
        {type: "minecraft:div", left: 1.0, right: 180.0} \
    ]}

# tellraw @a ["beam_yaw (radians) ", {nbt:"data.beam_yaw_r", entity:"@s"}]
# tellraw @a ["beam_pitch (radians) ", {nbt:"data.beam_pitch_r", entity:"@s"}]