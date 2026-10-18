# We shouldn't need to check if a root has been checked already
# because UUIDs are unique and for each player, each root will 
# only be executed once per cycle

function sb.mining:setup_collision_check
function sb.mining:operations/get_beam_collision