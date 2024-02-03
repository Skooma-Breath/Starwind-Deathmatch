
-- file that contains configuration for each possible match
-- variable names must be the same as in the testDMConfig.lua in order to take effect

--
-- name is human-readable description of match
-- gameMode tells testDM.lua how to handle game logic
-- map holds the map data from testDMMaps.lua
-- scoreLimit determines the score victory condition
-- defaultEquipment determines if players will start with default equipment or with
-- additionalEquipment is a list of equipment to be added to player
-- itemsOnMap is a list of items that appear on map

testDMmaps = require("custom/testDM/testDMMaps")

testDMMatchSettings = {}

--TODO add a boolean setting for if the the match will enforce a global loadout or allow classes.
--TODO add a boolean setting for if the the match will use the global stats or have match specific stats for players.
-- deathmatch in sandriver
testDMMatchSettings.sandriver_dm = {}
testDMMatchSettings.sandriver_dm.name = "Sandriver (deathmatch)"
testDMMatchSettings.sandriver_dm.gameMode = "dm"
testDMMatchSettings.sandriver_dm.map = testDMMaps["tatooine, sandriver"]
testDMMatchSettings.sandriver_dm.scoreLimit = 10
testDMMatchSettings.sandriver_dm.additionalEquipment = {}
testDMMatchSettings.sandriver_dm.itemsOnMap = {}
testDMMatchSettings.sandriver_dm.matchSpecificClass = "sith"

-- teamdeathmatch in sandriver
testDMMatchSettings.sandriver_2t_tdm = {}
testDMMatchSettings.sandriver_2t_tdm.name = "Sandriver (team deathmatch, 2 teams)"
testDMMatchSettings.sandriver_2t_tdm.gameMode = "tdm"
testDMMatchSettings.sandriver_2t_tdm.numberOfTeams = 2
testDMMatchSettings.sandriver_2t_tdm.map = testDMMaps["tatooine, sandriver"]
testDMMatchSettings.sandriver_2t_tdm.scoreLimit = 10
testDMMatchSettings.sandriver_2t_tdm.additionalEquipment = {}
testDMMatchSettings.sandriver_2t_tdm.itemsOnMap = {}
-- testDMMatchSettings.sandriver_dm.matchSpecificClass = "jedi"

if jsonInterface.load("custom/testDM/testDMMatchSettings.json") then
    -- testDMMatchSettings = jsonInterface.load("custom/testDM/testDMMatchSettings.json")
    tableHelper.merge(testDMMatchSettings, jsonInterface.load("custom/testDM/testDMMatchSettings.json"))
end

tes3mp.LogMessage(2, "++++ --Loading testDMMatchSettings.json ... ++++")

jsonInterface.save("custom/testDM/testDMMatchSettings.json", testDMMatchSettings)

return testDMMatchSettings
