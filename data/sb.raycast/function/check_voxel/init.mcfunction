execute positioned ~ ~ ~ if block ~ ~ ~ #sb.raycast:passthrough run return 0
execute positioned ~ ~ ~ if predicate sb.raycast:is_full_block run return run function sb.raycast:check_voxel/check_full

#halves
execute positioned ~ ~ ~ if predicate sb.raycast:halves/bottom_half run return run function sb.raycast:check_voxel/check_halves/bottom_half
execute positioned ~ ~ ~ if predicate sb.raycast:halves/bottom_half run return run function sb.raycast:check_voxel/check_halves/bottom_half

#stairs
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_north run return run function sb.raycast:check_voxel/check_stairs/top_north
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_south run return run function sb.raycast:check_voxel/check_stairs/top_south
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_east run return run function sb.raycast:check_voxel/check_stairs/top_east
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_west run return run function sb.raycast:check_voxel/check_stairs/top_west
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_inner_northwest run return run function sb.raycast:check_voxel/check_stairs/top_inner_northwest
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_inner_southwest run return run function sb.raycast:check_voxel/check_stairs/top_inner_southwest
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_inner_southeast run return run function sb.raycast:check_voxel/check_stairs/top_inner_southeast
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_inner_northeast run return run function sb.raycast:check_voxel/check_stairs/top_inner_northeast
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_outer_northwest run return run function sb.raycast:check_voxel/check_stairs/top_outer_northwest
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_outer_southwest run return run function sb.raycast:check_voxel/check_stairs/top_outer_southwest
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_outer_southeast run return run function sb.raycast:check_voxel/check_stairs/top_outer_southeast
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/top_outer_northeast run return run function sb.raycast:check_voxel/check_stairs/top_outer_northeast
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_north run return run function sb.raycast:check_voxel/check_stairs/bottom_north
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_south run return run function sb.raycast:check_voxel/check_stairs/bottom_south
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_east run return run function sb.raycast:check_voxel/check_stairs/bottom_east
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_west run return run function sb.raycast:check_voxel/check_stairs/bottom_west
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_inner_northwest run return run function sb.raycast:check_voxel/check_stairs/bottom_inner_northwest
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_inner_southwest run return run function sb.raycast:check_voxel/check_stairs/bottom_inner_southwest
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_inner_southeast run return run function sb.raycast:check_voxel/check_stairs/bottom_inner_southeast
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_inner_northeast run return run function sb.raycast:check_voxel/check_stairs/bottom_inner_northeast
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_outer_northwest run return run function sb.raycast:check_voxel/check_stairs/bottom_outer_northwest
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_outer_southwest run return run function sb.raycast:check_voxel/check_stairs/bottom_outer_southwest
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_outer_southeast run return run function sb.raycast:check_voxel/check_stairs/bottom_outer_southeast
execute positioned ~ ~ ~ if predicate sb.raycast:stairs/bottom_outer_northeast run return run function sb.raycast:check_voxel/check_stairs/bottom_outer_northeast

#campfire
execute positioned ~ ~ ~ if predicate sb.raycast:campfires run return run function sb.raycast:check_voxel/check_campfires

#stonecutter
execute positioned ~ ~ ~ if predicate sb.raycast:stonecutter run return run function sb.raycast:check_voxel/check_stonecutter

#beds
execute positioned ~ ~ ~ if predicate sb.raycast:beds/north run return run function sb.raycast:check_voxel/check_beds/north
execute positioned ~ ~ ~ if predicate sb.raycast:beds/south run return run function sb.raycast:check_voxel/check_beds/south
execute positioned ~ ~ ~ if predicate sb.raycast:beds/east run return run function sb.raycast:check_voxel/check_beds/east
execute positioned ~ ~ ~ if predicate sb.raycast:beds/west run return run function sb.raycast:check_voxel/check_beds/west

#panes
execute positioned ~ ~ ~ if predicate sb.raycast:panes/all_pane run return run function sb.raycast:check_voxel/check_panes/all_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/north_south_east_pane run return run function sb.raycast:check_voxel/check_panes/north_south_east_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/north_south_west_pane run return run function sb.raycast:check_voxel/check_panes/north_south_west_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/north_south_pane run return run function sb.raycast:check_voxel/check_panes/north_south_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/north_east_west_pane run return run function sb.raycast:check_voxel/check_panes/north_east_west_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/north_east_pane run return run function sb.raycast:check_voxel/check_panes/north_east_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/north_west_pane run return run function sb.raycast:check_voxel/check_panes/north_west_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/north_pane run return run function sb.raycast:check_voxel/check_panes/north_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/south_east_west_pane run return run function sb.raycast:check_voxel/check_panes/south_east_west_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/south_east_pane run return run function sb.raycast:check_voxel/check_panes/south_east_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/south_west_pane run return run function sb.raycast:check_voxel/check_panes/south_west_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/south_pane run return run function sb.raycast:check_voxel/check_panes/south_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/east_west_pane run return run function sb.raycast:check_voxel/check_panes/east_west_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/east_pane run return run function sb.raycast:check_voxel/check_panes/east_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/west_pane run return run function sb.raycast:check_voxel/check_panes/west_pane
execute positioned ~ ~ ~ if predicate sb.raycast:panes/pane run return run function sb.raycast:check_voxel/check_panes/pane

#chains
execute positioned ~ ~ ~ if predicate sb.raycast:chains/x run return run function sb.raycast:check_voxel/check_chains/x
execute positioned ~ ~ ~ if predicate sb.raycast:chains/y run return run function sb.raycast:check_voxel/check_chains/y
execute positioned ~ ~ ~ if predicate sb.raycast:chains/z run return run function sb.raycast:check_voxel/check_chains/z

#rods
execute positioned ~ ~ ~ if predicate sb.raycast:rods/x run return run function sb.raycast:check_voxel/check_rods/x
execute positioned ~ ~ ~ if predicate sb.raycast:rods/y run return run function sb.raycast:check_voxel/check_rods/y
execute positioned ~ ~ ~ if predicate sb.raycast:rods/z run return run function sb.raycast:check_voxel/check_rods/z

#panels
execute positioned ~ ~ ~ if predicate sb.raycast:panels/top run return run function sb.raycast:check_voxel/check_panels/top
execute positioned ~ ~ ~ if predicate sb.raycast:panels/bottom run return run function sb.raycast:check_voxel/check_panels/bottom
execute positioned ~ ~ ~ if predicate sb.raycast:panels/north run return run function sb.raycast:check_voxel/check_panels/north
execute positioned ~ ~ ~ if predicate sb.raycast:panels/south run return run function sb.raycast:check_voxel/check_panels/south
execute positioned ~ ~ ~ if predicate sb.raycast:panels/east run return run function sb.raycast:check_voxel/check_panels/east
execute positioned ~ ~ ~ if predicate sb.raycast:panels/west run return run function sb.raycast:check_voxel/check_panels/west

#carpets
execute positioned ~ ~ ~ if predicate sb.raycast:carpets run return run function sb.raycast:check_voxel/check_carpets

#fences
execute positioned ~ ~ ~ if predicate sb.raycast:fences/all_fence run return run function sb.raycast:check_voxel/check_fences/all_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/north_south_east_fence run return run function sb.raycast:check_voxel/check_fences/north_south_east_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/north_south_west_fence run return run function sb.raycast:check_voxel/check_fences/north_south_west_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/north_south_fence run return run function sb.raycast:check_voxel/check_fences/north_south_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/north_east_west_fence run return run function sb.raycast:check_voxel/check_fences/north_east_west_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/north_east_fence run return run function sb.raycast:check_voxel/check_fences/north_east_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/north_west_fence run return run function sb.raycast:check_voxel/check_fences/north_west_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/north_fence run return run function sb.raycast:check_voxel/check_fences/north_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/south_east_west_fence run return run function sb.raycast:check_voxel/check_fences/south_east_west_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/south_east_fence run return run function sb.raycast:check_voxel/check_fences/south_east_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/south_west_fence run return run function sb.raycast:check_voxel/check_fences/south_west_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/south_fence run return run function sb.raycast:check_voxel/check_fences/south_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/east_west_fence run return run function sb.raycast:check_voxel/check_fences/east_west_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/east_fence run return run function sb.raycast:check_voxel/check_fences/east_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/west_fence run return run function sb.raycast:check_voxel/check_fences/west_fence
execute positioned ~ ~ ~ if predicate sb.raycast:fences/fence run return run function sb.raycast:check_voxel/check_fences/fence

#anvils
execute positioned ~ ~ ~ if predicate sb.raycast:anvils/x run return run function sb.raycast:check_voxel/check_anvils/x
execute positioned ~ ~ ~ if predicate sb.raycast:anvils/z run return run function sb.raycast:check_voxel/check_anvils/z

#signs
execute positioned ~ ~ ~ if predicate sb.raycast:signs/floor run return run function sb.raycast:check_voxel/check_signs/floor
execute positioned ~ ~ ~ if predicate sb.raycast:signs/wall_north run return run function sb.raycast:check_voxel/check_signs/wall_north
execute positioned ~ ~ ~ if predicate sb.raycast:signs/wall_south run return run function sb.raycast:check_voxel/check_signs/wall_south
execute positioned ~ ~ ~ if predicate sb.raycast:signs/wall_east run return run function sb.raycast:check_voxel/check_signs/wall_east
execute positioned ~ ~ ~ if predicate sb.raycast:signs/wall_west run return run function sb.raycast:check_voxel/check_signs/wall_west

#hanging_signs
execute positioned ~ ~ ~ if predicate sb.raycast:hanging_signs/ceiling_other run return run function sb.raycast:check_voxel/check_hanging_signs/ceiling_other
execute positioned ~ ~ ~ if predicate sb.raycast:hanging_signs/ceiling_x run return run function sb.raycast:check_voxel/check_hanging_signs/ceiling_x
execute positioned ~ ~ ~ if predicate sb.raycast:hanging_signs/ceiling_z run return run function sb.raycast:check_voxel/check_hanging_signs/ceiling_z
execute positioned ~ ~ ~ if predicate sb.raycast:hanging_signs/wall_x run return run function sb.raycast:check_voxel/check_hanging_signs/wall_x
execute positioned ~ ~ ~ if predicate sb.raycast:hanging_signs/wall_z run return run function sb.raycast:check_voxel/check_hanging_signs/wall_z

#plates
execute positioned ~ ~ ~ if predicate sb.raycast:plates/pressed run return run function sb.raycast:check_voxel/check_plates/pressed
execute positioned ~ ~ ~ if predicate sb.raycast:plates/unpressed run return run function sb.raycast:check_voxel/check_plates/unpressed

#buttons
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/ceiling_x_pressed run return run function sb.raycast:check_voxel/check_buttons/ceiling_x_pressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/ceiling_z_pressed run return run function sb.raycast:check_voxel/check_buttons/ceiling_z_pressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/floor_x_pressed run return run function sb.raycast:check_voxel/check_buttons/floor_x_pressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/floor_z_pressed run return run function sb.raycast:check_voxel/check_buttons/floor_z_pressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/wall_north_pressed run return run function sb.raycast:check_voxel/check_buttons/wall_north_pressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/wall_south_pressed run return run function sb.raycast:check_voxel/check_buttons/wall_south_pressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/wall_east_pressed run return run function sb.raycast:check_voxel/check_buttons/wall_east_pressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/wall_west_pressed run return run function sb.raycast:check_voxel/check_buttons/wall_west_pressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/ceiling_x_unpressed run return run function sb.raycast:check_voxel/check_buttons/ceiling_x_unpressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/ceiling_z_unpressed run return run function sb.raycast:check_voxel/check_buttons/ceiling_z_unpressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/floor_x_unpressed run return run function sb.raycast:check_voxel/check_buttons/floor_x_unpressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/floor_z_unpressed run return run function sb.raycast:check_voxel/check_buttons/floor_z_unpressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/wall_north_unpressed run return run function sb.raycast:check_voxel/check_buttons/wall_north_unpressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/wall_south_unpressed run return run function sb.raycast:check_voxel/check_buttons/wall_south_unpressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/wall_east_unpressed run return run function sb.raycast:check_voxel/check_buttons/wall_east_unpressed
execute positioned ~ ~ ~ if predicate sb.raycast:buttons/wall_west_unpressed run return run function sb.raycast:check_voxel/check_buttons/wall_west_unpressed

#heads
execute positioned ~ ~ ~ if predicate sb.raycast:heads/floor_normal run return run function sb.raycast:check_voxel/check_heads/floor_normal
execute positioned ~ ~ ~ if predicate sb.raycast:heads/wall_normal_north run return run function sb.raycast:check_voxel/check_heads/wall_normal_north
execute positioned ~ ~ ~ if predicate sb.raycast:heads/wall_normal_south run return run function sb.raycast:check_voxel/check_heads/wall_normal_south
execute positioned ~ ~ ~ if predicate sb.raycast:heads/wall_normal_east run return run function sb.raycast:check_voxel/check_heads/wall_normal_east
execute positioned ~ ~ ~ if predicate sb.raycast:heads/wall_normal_west run return run function sb.raycast:check_voxel/check_heads/wall_normal_west
execute positioned ~ ~ ~ if predicate sb.raycast:heads/floor_piglin run return run function sb.raycast:check_voxel/check_heads/floor_piglin
execute positioned ~ ~ ~ if predicate sb.raycast:heads/wall_piglin_north run return run function sb.raycast:check_voxel/check_heads/wall_piglin_north
execute positioned ~ ~ ~ if predicate sb.raycast:heads/wall_piglin_south run return run function sb.raycast:check_voxel/check_heads/wall_piglin_south
execute positioned ~ ~ ~ if predicate sb.raycast:heads/wall_piglin_east run return run function sb.raycast:check_voxel/check_heads/wall_piglin_east
execute positioned ~ ~ ~ if predicate sb.raycast:heads/wall_piglin_west run return run function sb.raycast:check_voxel/check_heads/wall_piglin_west

#amethyst
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/small_up run return run function sb.raycast:check_voxel/check_amethyst/small_up
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/small_down run return run function sb.raycast:check_voxel/check_amethyst/small_down
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/small_north run return run function sb.raycast:check_voxel/check_amethyst/small_north
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/small_south run return run function sb.raycast:check_voxel/check_amethyst/small_south
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/small_east run return run function sb.raycast:check_voxel/check_amethyst/small_east
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/small_west run return run function sb.raycast:check_voxel/check_amethyst/small_west
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/med_up run return run function sb.raycast:check_voxel/check_amethyst/med_up
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/med_down run return run function sb.raycast:check_voxel/check_amethyst/med_down
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/med_north run return run function sb.raycast:check_voxel/check_amethyst/med_north
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/med_south run return run function sb.raycast:check_voxel/check_amethyst/med_south
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/med_east run return run function sb.raycast:check_voxel/check_amethyst/med_east
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/med_west run return run function sb.raycast:check_voxel/check_amethyst/med_west
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/large_up run return run function sb.raycast:check_voxel/check_amethyst/large_up
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/large_down run return run function sb.raycast:check_voxel/check_amethyst/large_down
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/large_north run return run function sb.raycast:check_voxel/check_amethyst/large_north
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/large_south run return run function sb.raycast:check_voxel/check_amethyst/large_south
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/large_east run return run function sb.raycast:check_voxel/check_amethyst/large_east
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/large_west run return run function sb.raycast:check_voxel/check_amethyst/large_west
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/full_up run return run function sb.raycast:check_voxel/check_amethyst/full_up
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/full_down run return run function sb.raycast:check_voxel/check_amethyst/full_down
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/full_north run return run function sb.raycast:check_voxel/check_amethyst/full_north
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/full_south run return run function sb.raycast:check_voxel/check_amethyst/full_south
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/full_east run return run function sb.raycast:check_voxel/check_amethyst/full_east
execute positioned ~ ~ ~ if predicate sb.raycast:amethyst/full_west run return run function sb.raycast:check_voxel/check_amethyst/full_west

#walls
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_wall run return run function sb.raycast:check_voxel/check_walls/up_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_east_low_wall run return run function sb.raycast:check_voxel/check_walls/up_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_low_wall run return run function sb.raycast:check_voxel/check_walls/up_south_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_south_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_south_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_low_east_low_wall run return run function sb.raycast:check_voxel/check_walls/up_south_low_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_low_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_south_low_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_low_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_south_low_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_low_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_south_low_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_low_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_south_low_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_low_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_south_low_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_south_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_south_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_south_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_tall_east_low_wall run return run function sb.raycast:check_voxel/check_walls/up_south_tall_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_tall_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_south_tall_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_tall_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_south_tall_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_tall_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_south_tall_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_tall_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_south_tall_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_south_tall_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_south_tall_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_east_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_low_east_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_low_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_all_low_wall run return run function sb.raycast:check_voxel/check_walls/up_all_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_low_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_low_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_low_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_low_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_low_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_low_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_low_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_low_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_tall_east_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_tall_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_tall_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_tall_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_tall_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_tall_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_tall_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_tall_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_tall_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_tall_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_low_south_tall_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_low_south_tall_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_east_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_low_east_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_low_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_low_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_low_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_low_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_low_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_low_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_low_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_low_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_low_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_low_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_low_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_tall_east_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_tall_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_tall_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_tall_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_tall_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_tall_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_tall_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_tall_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_north_tall_south_tall_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/up_north_tall_south_tall_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/up_all_tall_wall run return run function sb.raycast:check_voxel/check_walls/up_all_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/west_low_wall run return run function sb.raycast:check_voxel/check_walls/west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/west_tall_wall run return run function sb.raycast:check_voxel/check_walls/west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/east_low_wall run return run function sb.raycast:check_voxel/check_walls/east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/east_tall_wall run return run function sb.raycast:check_voxel/check_walls/east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_low_wall run return run function sb.raycast:check_voxel/check_walls/south_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/south_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/south_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_low_east_low_wall run return run function sb.raycast:check_voxel/check_walls/south_low_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_low_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/south_low_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_low_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/south_low_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_low_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/south_low_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_low_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/south_low_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_low_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/south_low_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_tall_wall run return run function sb.raycast:check_voxel/check_walls/south_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/south_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/south_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_tall_east_low_wall run return run function sb.raycast:check_voxel/check_walls/south_tall_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_tall_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/south_tall_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_tall_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/south_tall_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_tall_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/south_tall_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_tall_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/south_tall_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/south_tall_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/south_tall_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_east_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_low_east_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_low_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/all_low_wall run return run function sb.raycast:check_voxel/check_walls/all_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_low_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_low_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_low_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_low_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_low_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_low_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_low_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_low_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_tall_east_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_tall_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_tall_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_tall_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_tall_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_tall_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_tall_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_tall_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_tall_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_tall_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_low_south_tall_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_low_south_tall_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_east_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_low_east_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_low_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_low_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_low_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_low_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_low_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_low_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_low_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_low_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_low_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_low_east_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_low_east_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_tall_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_tall_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_tall_east_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_tall_east_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_tall_east_low_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_tall_east_low_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_tall_east_low_west_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_tall_east_low_west_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_tall_east_tall_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_tall_east_tall_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/north_tall_south_tall_east_tall_west_low_wall run return run function sb.raycast:check_voxel/check_walls/north_tall_south_tall_east_tall_west_low_wall
execute positioned ~ ~ ~ if predicate sb.raycast:walls/all_tall_wall run return run function sb.raycast:check_voxel/check_walls/all_tall_wall

return 0