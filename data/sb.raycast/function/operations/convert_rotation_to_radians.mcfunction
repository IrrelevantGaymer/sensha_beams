$data modify entity @s data.yaw_r set \
    compute default float {type: "minecraft:mul", inputs: [ \
        $(yaw), \
        "sb.raycast:pi", \
        {type: "minecraft:div", left: 1.0, right: 180.0} \
    ]}
$data modify entity @s data.pitch_r set \
    compute default float {type: "minecraft:mul", inputs: [ \
        $(pitch), \
        "sb.raycast:pi", \
        {type: "minecraft:div", left: 1.0, right: 180.0} \
    ]}