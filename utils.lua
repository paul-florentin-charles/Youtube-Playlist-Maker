--[[ Youtube Playlist Creator ]]

-- @author Paul Charles
-- @release Module to create your own YouTube playlists without having an account


--- Shuffles a table
-- @return Same table with randomised ordering of elements
-- @param array Table representing an array
function shuffle(array)
   local r_idx = 1
   math.randomseed(os.time())
   for i = 1, #array - 1
   do
      r_idx = math.random(i + 1, #array)
      array[i], array[r_idx] = array[r_idx], array[i]
   end
   return array
end
