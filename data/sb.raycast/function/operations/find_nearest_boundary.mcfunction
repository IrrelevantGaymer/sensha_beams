# SAFETY: make sure t_max is initialized

# enum Axis {
    # x: 0,
    # y: 1,
    # z: 2,
# }

$data modify entity @s data.axis set compute default integer \
    {type: "minecraft:number_dispatcher", default: 0, cases: [ \
        {value: 1, condition: {type: "minecraft:all_of", terms: [ \
            {type: "minecraft:float_value_check", value: $(t_max_y), test: {max: $(t_max_x)}}, \
            {type: "minecraft:float_value_check", value: $(t_max_y), test: {max: $(t_max_z)}} \
        ]}}, \
        {value: 2, condition: {type: "minecraft:all_of", terms: [ \
            {type: "minecraft:float_value_check", value: $(t_max_z), test: {max: $(t_max_x)}}, \
            {type: "minecraft:float_value_check", value: $(t_max_z), test: {max: $(t_max_y)}} \
        ]}}, \
    ]}

# tellraw @a ["axis is ", {nbt: "data.axis", entity: "@s"}]
