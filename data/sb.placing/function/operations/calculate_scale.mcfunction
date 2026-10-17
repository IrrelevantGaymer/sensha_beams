$data modify entity @s data.scale set compute default float \
    {type: "minecraft:add", inputs: [ \
        "sb.placing:scale_delta", \
        $(length) \
    ]}