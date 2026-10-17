# SAFETY: make sure that dir is initialized and normalized

$data modify entity @s data.t_delta_x set compute default float \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:float_value_check", value: $(dir_x), test: 0.0}, \
        on_true: "sb.raycast:max_float", \
        on_false: {type: "minecraft:div", left: 1.0, right: {type:"minecraft:abs", input: $(dir_x)}} \
    }
$data modify entity @s data.t_delta_y set compute default float \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:float_value_check", value: $(dir_y), test: 0.0}, \
        on_true: "sb.raycast:max_float", \
        on_false: {type: "minecraft:div", left: 1.0, right: {type:"minecraft:abs", input: $(dir_y)}} \
    }
$data modify entity @s data.t_delta_z set compute default float \
    { \
        type: "minecraft:conditional", \
        condition: {type: "minecraft:float_value_check", value: $(dir_z), test: 0.0}, \
        on_true: "sb.raycast:max_float", \
        on_false: {type: "minecraft:div", left: 1.0, right: {type:"minecraft:abs", input: $(dir_z)}} \
    }

# tellraw @a ["t_delta (", {nbt: "data.t_delta_x", entity: "@s"}, ", ", {nbt: "data.t_delta_y", entity: "@s"}, ", ", {nbt: "data.t_delta_z", entity: "@s"}, ")"]