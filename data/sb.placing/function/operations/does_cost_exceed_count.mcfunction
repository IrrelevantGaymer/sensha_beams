$return run compute default integer { \
    type: "minecraft:conditional", \
    condition: { \
        type: "minecraft:float_value_check", \
        value: $(cost), \
        test: {max: $(count)} \
    }, \
    on_true: 0, \
    on_false: 1 \
}