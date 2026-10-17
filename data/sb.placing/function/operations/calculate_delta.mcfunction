$data modify entity @s data.delta_x set compute default float {type: "minecraft:mul", inputs: [ \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:float_value_check", value: $(dir_x), test: 0.0}, \
        on_true: 0.0, \
        on_false: { \
            type: "minecraft:div", \
            left: {type: "minecraft:abs", input: $(dir_x)}, \
            right: {type: "minecraft:negate", input: $(dir_x)} \
        } \
    }, \
    "sb.placing:delta" \
]}
$data modify entity @s data.delta_y set compute default float {type: "minecraft:mul", inputs: [ \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:float_value_check", value: $(dir_y), test: 0.0}, \
        on_true: 0.0, \
        on_false: { \
            type: "minecraft:div", \
            left: {type: "minecraft:abs", input: $(dir_y)}, \
            right: {type: "minecraft:negate", input: $(dir_y)} \
        } \
    }, \
    "sb.placing:delta" \
]}
$data modify entity @s data.delta_z set compute default float {type: "minecraft:mul", inputs: [ \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:float_value_check", value: $(dir_z), test: 0.0}, \
        on_true: 0.0, \
        on_false: { \
            type: "minecraft:div", \
            left: {type: "minecraft:abs", input: $(dir_z)}, \
            right: {type: "minecraft:negate", input: $(dir_z)} \
        } \
    }, \
    "sb.placing:delta" \
]}