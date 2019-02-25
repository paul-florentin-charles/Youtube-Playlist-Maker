#!/usr/bin/env lua

--[[ Youtube Playlist Creator ]]

-- @author Paul Charles
-- @release Module to create your own YouTube playlists without having an account


require "utils"

--- Creates an URL correspond to a YouTube playlist
-- Uses the ids contained in <ids>
-- @return URL as a string
-- @param ids Table containing song ids as strings
function form_url(ids)
   local url = "https://www.youtube.com/watch_videos?video_ids="
   
   if #ids == 0
   then
      return url
   end
   
   url = url .. ids[1]
   for idx = 2, #ids
   do
      url = url .. ',' ..  ids[idx]
   end
   
   return url
end

--- Parses ids from a file
-- @return Table containing the ids, which are strings
-- @param file_path String leading to a valid text file
function parse_ids(file_path)
   local ids = {}
   
   local file = io.open(file_path, "rb")
   if file == nil
   then
      return ids
   end
   
   file:read('l') -- Skip firt line
   for line in file:lines()
   do
      idx = string.find(line, ',')
      if idx == nil
      then
	 table.insert(ids, line)
      else
	 table.insert(ids, string.sub(line, 1, idx - 1))
      end 
   end

   file:close()
   return ids
end

--- Creates a YouTube link redirecting to a playlist
-- Uses built-in <arg> table to get passed arguments
-- If none is passed or unknown file, returns an empty playlist
-- @return Playlist URL as a string
-- @param shuffle_ids Boolean that entails id-shuffling if set to true
function make_playlist(shuffle_ids)   
   ids = {}
   if #arg > 0
   then
      ids = parse_ids(arg[1])
   end

   if shuffle_ids
   then
      ids = shuffle(ids)
   end
   
   return form_url(ids)
end

print(make_playlist(true))
