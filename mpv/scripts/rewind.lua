mp.add_forced_key_binding("SPACE", "smart_space", function()
    local pos = mp.get_property_number("time-pos") or 0
    local dur = mp.get_property_number("duration") or 0

    if dur > 0 and pos >= dur - 0.05 then
        mp.commandv("seek", 0, "absolute")
        mp.set_property_native("pause", false)
    else
        mp.commandv("cycle", "pause")
    end
end)
