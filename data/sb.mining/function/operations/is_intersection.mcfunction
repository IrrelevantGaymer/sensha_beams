# tellraw @a ["checking intersection with t_min ", {nbt: "data.beam_t_min", entity: "@s"}]
# tellraw @a ["checking intersection with t_max ", {nbt: "data.beam_t_max", entity: "@s"}]

# tellraw @a ["shit ", {nbt: "data", entity: "@s"}]

$return run compute default integer \
    {type: "minecraft:mul", inputs: [ \ 
        {type: "minecraft:conditional", \
            condition: {type: "minecraft:float_value_check", \
                value: $(beam_t_min), \
                test: {min: 0.0, max: $(beam_t_max)} \
            }, \
            on_true: 1, \
            on_false: 0 \
        }, \
        $(beam_if_dir_zero_then_origin_in_bounds) \
    ]}