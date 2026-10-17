# SAFETY: make sure that dir is initialized and normalized

$data modify entity @s data.step_x set compute default float \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:float_value_check", value: $(dir_x), test: 0.0}, \
        on_true: 0.0, \
        on_false: { \
            type: "minecraft:div", \
            left: {type: "minecraft:abs", input: $(dir_x)}, \
            right: $(dir_x) \
        } \
    }
$data modify entity @s data.step_y set compute default float \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:float_value_check", value: $(dir_y), test: 0.0}, \
        on_true: 0.0, \
        on_false: { \
            type: "minecraft:div", \
            left: {type: "minecraft:abs", input: $(dir_y)}, \
            right: $(dir_y) \
        } \
    }
$data modify entity @s data.step_z set compute default float \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:float_value_check", value: $(dir_z), test: 0.0}, \
        on_true: 0.0, \
        on_false: { \
            type: "minecraft:div", \
            left: {type: "minecraft:abs", input: $(dir_z)}, \
            right: $(dir_z) \
        } \
    }
