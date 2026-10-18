$tag @a[nbt={UUID: $(UUID)}] add sb.validating_beam

execute \
    if predicate sb.placing:does_length_exceed_max \
    as @a[tag=sb.validating_beam] \
    run return run function sb.placing:display_error {error: "Beams cannot be longer than 16 blocks"}
execute \
    if predicate sb.placing:does_cost_exceed_count \
    as @a[tag=sb.validating_beam, gamemode=survival] \ 
    run return run function sb.placing:display_error {error: "Not Enough Beams"}
execute \
    as @a[tag=sb.validating_beam, tag=sb.invalid_end] \
    run function sb.placing:clear_error
return 1