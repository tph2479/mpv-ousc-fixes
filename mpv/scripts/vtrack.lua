local video_hidden = false

mp.add_key_binding("v", "toggle-video", function()
    video_hidden = not video_hidden
    mp.set_property("vid", video_hidden and "no" or "auto")
end)