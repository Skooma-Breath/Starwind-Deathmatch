
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
testDMMatchSettings.sandriver_dm.matchSpecificClass = "startingclass"
testDMMatchSettings.sandriver_dm.projectileSpeed = {min = 10000.0, max = 10000.0}
testDMMatchSettings.sandriver_dm.matchSpecificStats = {
    playerLevel = 1,
    playerAttributes = 100,
    playerSkills = 100,
    playerHealth = 100,
    playerMagicka = 100,
    playerFatigue = 300,
    playerLuck = 100,
    playerSpeed = 100,
    playerAcrobatics = 125,
    playerMarksman = 150
}

-- teamdeathmatch in sandriver
testDMMatchSettings.sandriver_2t_tdm = {}
testDMMatchSettings.sandriver_2t_tdm.name = "Sandriver (team deathmatch, 2 teams)"
testDMMatchSettings.sandriver_2t_tdm.gameMode = "tdm"
testDMMatchSettings.sandriver_2t_tdm.numberOfTeams = 2
testDMMatchSettings.sandriver_2t_tdm.map = testDMMaps["tatooine, sandriver"]
testDMMatchSettings.sandriver_2t_tdm.scoreLimit = 10
testDMMatchSettings.sandriver_2t_tdm.additionalEquipment = {}
testDMMatchSettings.sandriver_2t_tdm.itemsOnMap = {}
-- testDMMatchSettings.sandriver_2t_tdm.matchSpecificRaces = {"argonian", "khajiit"}

if not jsonInterface.load("custom/testDM/testDMMatchSettings.json") then
    -- testDMMatchSettings = jsonInterface.load("custom/testDM/testDMMatchSettings.json")
    -- tableHelper.merge(testDMMatchSettings, jsonInterface.load("custom/testDM/testDMMatchSettings.json"), true)
    tes3mp.LogMessage(2, "++++ --Saving testDMMatchSettings.lua to json ... ++++")

    jsonInterface.save("custom/testDM/testDMMatchSettings.json", testDMMatchSettings)
else
    testDMMatchSettings = jsonInterface.load("custom/testDM/testDMMatchSettings.json")
end

return testDMMatchSettings
