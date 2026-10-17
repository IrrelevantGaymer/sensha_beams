$data modify entity @s data.cost set compute default integer { \
    type: "minecraft:from_float", input: { \
        type: "minecraft:round", input: { \
            type: "minecraft:mul", \
            inputs: [ \
                $(length), \
                4.0 \
            ] \
        } \
    } \
}