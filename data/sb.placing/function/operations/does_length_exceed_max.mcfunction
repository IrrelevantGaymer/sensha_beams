$return run compute default integer { \
    type: "minecraft:conditional", \
    condition: { \
        type: "minecraft:float_value_check", \
        value: $(length), \
        test: {max: "sb.placing:max_length"}}, \
    on_true: 0, \
    on_false: 1 \
}