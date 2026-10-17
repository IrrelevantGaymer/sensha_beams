$return run compute default integer { \
    type: "minecraft:conditional", \
    condition: { \
        type: "minecraft:float_value_check", \
        value: $(length_to_place), \
        test: {min: "sb.placing:max_segment_length"}}, \
    on_true: 1, \
    on_false: 0 \
}