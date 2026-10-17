# SAFETY: make sure the voxel, origin, and dir are initialized and that dir is normalized

$data modify entity @s data.t_max_x set compute default float \
    {type: "minecraft:number_dispatcher", default: "sb.raycast:max_float", cases: [ \
        { \
            "condition": {type: "minecraft:inverted", \
                term: {type: "minecraft:float_value_check", value: $(dir_x), test: {max: 0.0}} \
            }, \
            "value": { \
                type: "minecraft:div", \
                left: {type: "minecraft:add", inputs: [ \
                    $(voxel_x), \
                    1.0, \
                    {type: "minecraft:negate", input: $(origin_x)} \
                ]}, \
                right: $(dir_x) \
            } \ 
        }, \
        { \
            "condition": {type: "minecraft:inverted", \
                term: {type: "minecraft:float_value_check", value: $(dir_x), test: {min: 0.0}} \
            }, \
            "value": { \
                type: "minecraft:div", \
                left: {type: "minecraft:sub", left: $(voxel_x), right: $(origin_x)}, \
                right: $(dir_x) \
            } \ 
        } \
    ]}
$data modify entity @s data.t_max_y set compute default float \
    {type: "minecraft:number_dispatcher", default: "sb.raycast:max_float", cases: [ \
        { \
            "condition": {type: "minecraft:inverted", \
                term: {type: "minecraft:float_value_check", value: $(dir_y), test: {max: 0.0}} \
            }, \
            "value": { \
                type: "minecraft:div", \
                left: {type: "minecraft:add", inputs: [ \
                    $(voxel_y), \
                    1.0, \
                    {type: "minecraft:negate", input: $(origin_y)} \
                ]}, \
                right: $(dir_y) \
            } \ 
        }, \
        { \
            "condition": {type: "minecraft:inverted", \
                term: {type: "minecraft:float_value_check", value: $(dir_y), test: {min: 0.0}} \
            }, \
            "value": { \
                type: "minecraft:div", \
                left: {type: "minecraft:sub", left: $(voxel_y), right: $(origin_y)}, \
                right: $(dir_y) \
            } \ 
        } \
    ]}
$data modify entity @s data.t_max_z set compute default float \
    {type: "minecraft:number_dispatcher", default: "sb.raycast:max_float", cases: [ \
        { \
            "condition": {type: "minecraft:inverted", \
                term: {type: "minecraft:float_value_check", value: $(dir_z), test: {max: 0.0}} \
            }, \
            "value": { \
                type: "minecraft:div", \
                left: {type: "minecraft:add", inputs: [ \
                    $(voxel_z), \
                    1.0, \
                    {type: "minecraft:negate", input: $(origin_z)} \
                ]}, \
                right: $(dir_z) \
            } \ 
        }, \
        { \
            "condition": {type: "minecraft:inverted", \
                term: {type: "minecraft:float_value_check", value: $(dir_z), test: {min: 0.0}} \
            }, \
            "value": { \
                type: "minecraft:div", \
                left: {type: "minecraft:sub", left: $(voxel_z), right: $(origin_z)}, \
                right: $(dir_z) \
            } \ 
        } \
    ]}

# tellraw @a ["t_max (", {nbt: "data.t_max_x", entity: "@s"}, ", ", {nbt: "data.t_max_y", entity: "@s"}, ", ", {nbt: "data.t_max_z", entity: "@s"}, ")"]