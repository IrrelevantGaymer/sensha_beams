# tellraw @a [ \
#     "checking voxel (", \
#     {storage: "sensha_beams:raycast", nbt: "voxel.x"}, \
#     ", ", \
#     {storage: "sensha_beams:raycast", nbt: "voxel.y"}, \
#     ", ", \
#     {storage: "sensha_beams:raycast", nbt: "voxel.z"}, \
#     ")" \
# ]

execute \
    positioned ~ ~ ~ \
    unless block ~ ~ ~ #sb.raycast:passthrough \
    if predicate sb.raycast:is_full_block \
    run return run function sb.raycast:check_voxel/store_raycast_result
return 0