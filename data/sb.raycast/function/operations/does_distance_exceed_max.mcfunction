# SAFETY: make sure distance and max_distance are initialized

$return run compute default integer { \
    type: "minecraft:conditional", \
    condition: {type: "minecraft:float_value_check", value: $(distance), test: {max: $(max_distance)}}, \
    on_true: 0, \
    on_false: 1 \
}