# let dir: [f32; 3];
# let max_distance: f32;
# let mut distance: f32;
# let mut voxel: [i32; 3];
# let mut step: [i32; 3];
# let mut t_max: [f32; 3];
# let t_delta: [f32; 3];

# loop {
    execute if function sb.raycast:check_voxel/init run return 1
    function sb.raycast:operations/update_distance with entity @s data
    function sb.raycast:operations/find_nearest_boundary with entity @s data
    function sb.raycast:operations/advance_along_axis with entity @s data
    execute if function sb.raycast:predicates/does_distance_exceed_max run return 0
    return run function sb.raycast:loop with entity @s data
# }

