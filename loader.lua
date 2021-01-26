-- just a simple loader for a simple hub :) just exe from here if you dont want to go looking for your fav game
local games = loadstring(game:HttpGet("https://raw.githubusercontent.com/skeletalz/CONSOLE/main/games.lua"))()
local ingame = false
for i,gam in pairs(games) do
  if game.PlaceId == gam.ID then
     ingame = true
     loadstring(game:HttpGet("https://raw.githubusercontent.com/skeletalz/CONSOLE/main/games/"..gam.Script))()
 else
     ingame = false
  end
end
if ingame == false then
 error("HEY! YOUR NOT IN A SUPPORTED GAME!")
end
