-- file that determines server-wide behaviour

testDMConfig = {}

--------------------------
-- CONFIG/SETTINGS SECTION
--------------------------

-- already includes a lot of variables for functionality that is not yet implemented

-- 0 - random, 1 - rotation, 2 - player vote
testDMConfig.matchSelectionMethod = 1

-- all the matches that can be played on the server
testDMConfig.matchList = {"sandriver_2t_tdm", "sandriver_dm",}

-- Number of kills required for either team to win
testDMConfig.scoreLimit = 10

-- at which points to teams get notified about the score state
-- for example, both teams get notified if one team is 10, 5, 3, 2 or 1 point away from winning the match
testDMConfig.scoreNotifications = {10, 5, 3, 2, 1}

-- Determines if newly joined player will be put on the team with least players or if player will join the team that is stored in player file
testDMConfig.ensureTeamBalance = true

-- Determines whether players are allowed to manually switch teams
testDMConfig.canSwitchTeams = true

-- do players go to lobby between matches
testDMConfig.enableLobby = false
testDMConfig.lobbyTime = 30

-- spawn time in seconds
testDMConfig.spawnTime = 5

-- Determines whether suicide & team-killing add spawn delay and its duration
testDMConfig.addSpawnDelay = true
testDMConfig.spawnDelay = 3

-- how fast time passes
-- you will most likely want this to be very low in order to have skybox remain the same
testDMConfig.timeScale = 0.1

-- determines defaulttime of day for maps that do not have it specified
testDMConfig.timeOfDay = 9

-- determines default weather
testDMConfig.weather = 0

-- determines if players are allowed to wait
testDMConfig.allowWait = false

-- How long do players have to vote for next map
testDMConfig.mapSelectionVoteTime = 30

-- Prevent repetition by removing specified number of recently played maps from rotation / vote
testDMConfig.disableCurrentMapVote = 1

-- Names of the teams
-- (Change "color.Blue" and "...Brown" in --ProcessDeath)
testDMConfig.teamNames = {"Blue Team", "Brown Team"}

-- colours for teams
testDMConfig.teamColors = {color.RoyalBlue, color.SandyBrown}

-- Each team's  uniforms with format: {shirt, pants, shoes, robe}
testDMConfig.teamUniforms = {{"expensive_shirt_02", "expensive_pants_02", "expensive_shoes_02", "SWE_outfit3glo"}, {"expensive_shirt_01", "expensive_pants_01", "expensive_shoes_01", "SWE_outfit1cyber"}}

-- list of possible clothes to be selected from {shirts, pants, shoes}
testDMConfig.possibleClothing = {
{"common_shirt_01", "common_shirt_01_a", "common_shirt_01_e", "common_shirt_01_u", "common_shirt_01_z", "common_shirt_02", "common_shirt_02_h", "common_shirt_02_hh", "common_shirt_02_r", "common_shirt_02_rr", "common_shirt_02_t", "common_shirt_02_tt", "common_shirt_03", "common_shirt_03_b", "common_shirt_03_c", "common_shirt_04", "common_shirt_04_a", "common_shirt_04_b", "common_shirt_04_c", "common_shirt_05", "expensive_shirt_01", "expensive_shirt_01_a", "expensive_shirt_01_e",        "expensive_shirt_01_u", "expensive_shirt_01_z", "expensive_shirt_02", "expensive_shirt_03", "extravagant_shirt_01", "extravagant_shirt_01_h", "extravagant_shirt_01_r", "extravagant_shirt_01_t", "extravagant_shirt_02"},
{"common_pants_01", "common_pants_01_a", "common_pants_01_e", "common_pants_01_u", "common_pants_01_z", "common_pants_02", "common_pants_03", "common_pants_03_b", "common_pants_03_c", "common_pants_04", "common_pants_04_b", "common_pants_05", "expensive_pants_01", "expensive_pants_01_a", "expensive_pants_01_e", "expensive_pants_01_u", "expensive_pants_01_z", "expensive_pants_02", "expensive_pants_03", "extravagant_pants_01", "extravagant_pants_02", "exquisite_pants_01"},
{"common_shoes_01", "common_shoes_02", "common_shoes_03", "common_shoes_04", "common_shoes_05", "expensive_shoes_01", "expensive_shoes_02", "expensive_shoes_03", "extravagant_shoes_01", "extravagant_shoes_02", "exquisite_shoes_01"}
}

-- Determines if the effects from player's chosen race get applied
testDMConfig.allowRacePowers = false

-- Determines if the effects from player's chosen celestial sign get applied
testDMConfig.allowSignPowers = false

-- Determines if it is possible to use different presets of equipment / stats
--TODO don't really need this one now...
-- testDMConfig.allowClasses = true

-- simple placeholder classes...
testDMConfig.playerLoadouts = {
  ["startingclass"] = {
    [16] = {refId = "SW_BlasterSniperArk", count = 1, charge = -1, enchantmentCharge = -1},
    [18] = {refId = "SW_BlastBoltBest", count = 75, charge = -1, enchantmentCharge = -1}
  },
  ["jedi"] = {
    [16] = {refId = "SW_LightSpeasilv", count = 1, charge = -1, enchantmentCharge = -1},
  },
  ["sith"] = {
    [16] = {refId = "SW_LightSpeaDark", count = 1, charge = -1, enchantmentCharge = -1},
  },
  ["bounty hunter"] = {
    [16] = {refId = "SW_GrenadeLaunchArkanian", count = 1, charge = -1, enchantmentCharge = -1},
    [18] = {refId = "SW_GRFrag", count = 75, charge = -1, enchantmentCharge = -1}
  },
}

-- testDMConfig.playerEquipInstagib = {{"daedric long bow", 1, -1}, {"daedric arrow", 75, -1}}
--TODO make command to set this in game
testDMConfig.classGlobalOverride = false

--TODO make a command to set any class to the global class
testDMConfig.playerEquipmentGlobal = {
  ["global class"] = {
    [16] = {refId = "SW_Revolver", count = 1, charge = -1, enchantmentCharge = -1},
    [18] = {refId = "SW_BlastArrowBest", count = 75, charge = -1, enchantmentCharge = -1}
  },
}

-- list of default values
-- these are used when match does not specify it's own value
testDMConfig.defaultSettings = {

-- Number of kills required for either team to win
scoreToWin = 6,

-- Determines whether players are allowed to manually switch teams
canSwitchTeams = true,

-- Default spawn time in seconds
spawnTime = 5,

-- Determines whether suicide & team-killing add spawn delay and its duration
addSpawnDelay = true,
spawnDelay = 3,

-- Names of the two teams
-- (Change "color.Blue" and "...Brown" in --ProcessDeath)
numberOfTeams = nil,

-- Starting inventory items for both teams
-- (You can add as many items as you want; simply follow the format {"reference ID", count, charge})
playerInventory =  {{"ingred_bread_01_UNI3", 1, -1},} ,

--TODO Make this more configurable (diff stats for diff match types etc...)
-- stats for players
playerLevel = 1,
playerAttributes = 100,
playerSkills = 75,
playerHealth = 15,
playerMagicka = 50,
playerFatigue = 300,
playerLuck = 50,
playerSpeed = 200,
playerAcrobatics = 100,
playerMarksman = 150

}

if jsonInterface.load("custom/testDM/testDMConfig.json") then
    -- testDMConfig.matchList = jsonInterface.load("custom/testDM/testDMConfig_Matchlist.json")
    tableHelper.merge(testDMConfig, jsonInterface.load("custom/testDM/testDMConfig.json"))
end

tes3mp.LogMessage(2, "++++ --Loading testDMConfig.json ... ++++")
jsonInterface.save("custom/testDM/testDMConfig.json", testDMConfig)

return testDMConfig
