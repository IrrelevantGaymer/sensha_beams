$loot spawn ~ ~ ~ loot { \
    "pools": [ \
        { \
            "rolls": 1, \
            "entries": [ \
                { \
                    "type": "minecraft:loot_table", \
                    "value": "sb.items:$(sensha_beam)_beam", \
                    "modifier": [ \
                        { \
                            "type": "minecraft:set_count","count": $(cost) \
                        } \
                    ] \
                } \
            ] \
        } \
    ] \
}