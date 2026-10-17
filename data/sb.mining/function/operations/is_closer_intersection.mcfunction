$return run compute default integer \
    {type: "minecraft:conditional", \
        condition: {type: "minecraft:float_value_check", \
            value: $(beam_t_min), \
            test: {max: $(closest_beam_distance)} \
        }, \
        on_true: 1, \
        on_false: 0 \
    }