#!/usr/bin/env lua

--[[ YouTube Playlist Id Extractor ]]

-- Ids retrieval using YouTube API (needs a focking KEY to use API)

function get_ids(playlist_id, max_video, api_key)
   local url = "https://www.googleapis.com/youtube/v3/playlistsItems?part=snippet&"
   url = url .. "maxResults=" .. max_video .. "&"
   url = url .. "playlistId=" .. playlist_id .. "&"
   url = url .. "key=" .. api_key
   return url
end
