tag @s remove sb.holding_beam
tag @s remove sb.start_place
tag @s remove sb.end_place
execute if entity @s[tag=sb.invalid_end] run function sb.placing:clear_error

$kill @e[ \
    type=minecraft:item_display, \
    tag=placing_sensha_beam, \
    nbt={data: {Owner: $(UUID)}} \
]