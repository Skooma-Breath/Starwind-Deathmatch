
fork of https://github.com/testman42/tes3mp-deathmatch made to work with starwind

admin commands

-- `/newmap` -- creates new match data using the current cell location inside testDMMaps, testDMMatchSettings, and testDMConfig.matchList

-- `/addspawn` `team` (1 or 2) -- uses your current location to create spawn locations for your newly created map

-- `/forcend` -- ends the current match and starts a random new one

-- `/newmatch` `matchname` -- used to start a new match of your choice

-- `/matchlist` -- prints matchlist to console for now


player commands

-- `/startvote` -- to start a vote to change the current map to a new random one `/yes` or `/no` to vote

-- `/newoutfit` -- gives you a new outfit when playing DM

-- `/switch` -- switch teams (untested)...

-- `/score` -- shows score (untested)...


weapons and stats are setup in testDMConfig.lua
