$data modify entity @s data.beam_if_dir_zero_then_origin_in_bounds_x set compute default integer \
    {type: "minecraft:conditional", \
        condition: {type: "minecraft:any_of", terms: [ \
            {type: "minecraft:inverted", term: { \
                type: "minecraft:float_value_check", \
                value: $(transformed_dir_x), \
                test: {min: \
                    {type: "minecraft:negate", input: "sb.math:delta"}, \
                    max: "sb.math:delta" \
                } \
            }}, \
            {type: "minecraft:float_value_check", \
                value: $(transformed_origin_x), \
                test: {min: $(beam_min_x), max: $(beam_max_x)} \
            } \
        ]}, \
        on_true: 1, \
        on_false: 0 \
    }
$data modify entity @s data.beam_if_dir_zero_then_origin_in_bounds_y set compute default integer \
    {type: "minecraft:conditional", \
        condition: {type: "minecraft:any_of", terms: [ \
            {type: "minecraft:inverted", term: { \
                type: "minecraft:float_value_check", \
                value: $(transformed_dir_y), \
                test: {min: \
                    {type: "minecraft:negate", input: "sb.math:delta"}, \
                    max: "sb.math:delta" \
                } \
            }}, \
            {type: "minecraft:float_value_check", \
                value: $(transformed_origin_y), \
                test: {min: $(beam_min_y), max: $(beam_max_y)} \
            } \
        ]}, \
        on_true: 1, \
        on_false: 0 \
    }
$data modify entity @s data.beam_if_dir_zero_then_origin_in_bounds_z set compute default integer \
    {type: "minecraft:conditional", \
        condition: {type: "minecraft:any_of", terms: [ \
            {type: "minecraft:inverted", term: { \
                type: "minecraft:float_value_check", \
                value: $(transformed_dir_z), \
                test: {min: \
                    {type: "minecraft:negate", input: "sb.math:delta"}, \
                    max: "sb.math:delta" \
                } \
            }}, \
            {type: "minecraft:float_value_check", \
                value: $(transformed_origin_z), \
                test: {min: $(beam_min_z), max: $(beam_max_z)} \
            } \
        ]}, \
        on_true: 1, \
        on_false: 0 \
    }

$data modify entity @s data.beam_t_min_x set compute default float \
    {type: "minecraft:number_dispatcher", \
        default: {type: "minecraft:negate", input: "sb.raycast:max_float"}, \
        cases: [ \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_x), \
                        test: {max: "sb.math:delta"} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_min_x), \
                        right: $(transformed_origin_x) \
                    }, \
                    right: $(transformed_dir_x) \
                } \
            }, \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_x), \
                        test: {min: {type: "minecraft:negate", input: "sb.math:delta"}} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_max_x), \
                        right: $(transformed_origin_x) \
                    }, \
                    right: $(transformed_dir_x) \
                } \
            } \
        ] \
    }
$data modify entity @s data.beam_t_min_y set compute default float \
    {type: "minecraft:number_dispatcher", \
        default: {type: "minecraft:negate", input: "sb.raycast:max_float"}, \
        cases: [ \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_y), \
                        test: {max: "sb.math:delta"} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_min_y), \
                        right: $(transformed_origin_y) \
                    }, \
                    right: $(transformed_dir_y) \
                } \
            }, \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_y), \
                        test: {min: {type: "minecraft:negate", input: "sb.math:delta"}} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_max_y), \
                        right: $(transformed_origin_y) \
                    }, \
                    right: $(transformed_dir_y) \
                } \
            } \
        ] \
    }
$data modify entity @s data.beam_t_min_z set compute default float \
    {type: "minecraft:number_dispatcher", \
        default: {type: "minecraft:negate", input: "sb.raycast:max_float"}, \
        cases: [ \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_z), \
                        test: {max: "sb.math:delta"} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_min_z), \
                        right: $(transformed_origin_z) \
                    }, \
                    right: $(transformed_dir_z) \
                } \
            }, \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_z), \
                        test: {min: {type: "minecraft:negate", input: "sb.math:delta"}} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_max_z), \
                        right: $(transformed_origin_z) \
                    }, \
                    right: $(transformed_dir_z) \
                } \
            } \
        ] \
    }

$data modify entity @s data.beam_t_max_x set compute default float \
    {type: "minecraft:number_dispatcher", \
        default: "sb.raycast:max_float", \
        cases: [ \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_x), \
                        test: {max: "sb.math:delta"} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_max_x), \
                        right: $(transformed_origin_x) \
                    }, \
                    right: $(transformed_dir_x) \
                } \
            }, \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_x), \
                        test: {min: {type: "minecraft:negate", input: "sb.math:delta"}} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_min_x), \
                        right: $(transformed_origin_x) \
                    }, \
                    right: $(transformed_dir_x) \
                } \
            } \
        ] \
    }
$data modify entity @s data.beam_t_max_y set compute default float \
    {type: "minecraft:number_dispatcher", \
        default: "sb.raycast:max_float", \
        cases: [ \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_y), \
                        test: {max: "sb.math:delta"} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_max_y), \
                        right: $(transformed_origin_y) \
                    }, \
                    right: $(transformed_dir_y) \
                } \
            }, \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_y), \
                        test: {min: {type: "minecraft:negate", input: "sb.math:delta"}} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_min_y), \
                        right: $(transformed_origin_y) \
                    }, \
                    right: $(transformed_dir_y) \
                } \
            } \
        ] \
    }
$data modify entity @s data.beam_t_max_z set compute default float \
    {type: "minecraft:number_dispatcher", \
        default: "sb.raycast:max_float", \
        cases: [ \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_z), \
                        test: {max: "sb.math:delta"} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_max_z), \
                        right: $(transformed_origin_z) \
                    }, \
                    right: $(transformed_dir_z) \
                } \
            }, \
            { \
                "condition": {type: "minecraft:inverted", \
                    term: {type: "minecraft:float_value_check", \
                        value: $(transformed_dir_z), \
                        test: {min: {type: "minecraft:negate", input: "sb.math:delta"}} \
                    } \
                }, \
                "value": {type: "minecraft:div", \
                    left: {type: "minecraft:sub", \
                        left: $(beam_min_z), \
                        right: $(transformed_origin_z) \
                    }, \
                    right: $(transformed_dir_z) \
                } \
            } \
        ] \
    }

# tellraw @a ["t_mins (", {nbt: "data.beam_t_min_x", entity: "@s"}, ", ", {nbt: "data.beam_t_min_y", entity: "@s"}, ", ", {nbt: "data.beam_t_min_z", entity: "@s"}, ")"]
# tellraw @a ["t_maxs (", {nbt: "data.beam_t_max_x", entity: "@s"}, ", ", {nbt: "data.beam_t_max_y", entity: "@s"}, ", ", {nbt: "data.beam_t_max_z", entity: "@s"}, ")"]