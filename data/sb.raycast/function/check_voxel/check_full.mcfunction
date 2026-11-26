# tellraw @a [ \
#     "checking voxel (", \
#     {storage: "sensha_beams:raycast", nbt: "voxel.x"}, \
#     ", ", \
#     {storage: "sensha_beams:raycast", nbt: "voxel.y"}, \
#     ", ", \
#     {storage: "sensha_beams:raycast", nbt: "voxel.z"}, \
#     ")" \
# ]

function sb.raycast:check_voxel/store_raycast_result
return 1