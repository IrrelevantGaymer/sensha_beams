$execute \
    if function sb.placing:predicates/does_length_exceed_max \
    as @a[nbt={UUID: $(UUID)}] \
    run return run function sb.placing:display_error {error: "Beams cannot be longer than 16 blocks"}
$execute \
    if function sb.placing:predicates/does_cost_exceed_count \
    as @a[nbt={UUID: $(UUID)}, gamemode=survival] \ 
    run return run function sb.placing:display_error {error: "Not Enough Beams"}
$execute \
    as @a[nbt={UUID: $(UUID)}, tag=sb.invalid_end] \
    run function sb.placing:clear_error
return 1