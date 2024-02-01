-- file that contains data about maps and configuration of per-map mechanics
-- this file does NOT affect the way server selects map

-- TODO: describe data format
-- usedCells because it is possible that map contains a cell with no spawin points
--  in game commands:
--                   /addmap will create new map data using your current cell and save it to server/data/testDM/testDMMaps.json
--                   /addspawn 1 will add your current location as a spawnpoint to team 1 spawnpoint
--                   /addspawn 2 will add your current location as a spawnpoint to team 2 spawnpoint

-- TODO server will crash if match loaded and no spawn locations exist so coc to it from a diff match

testDMMaps = {}

testDMMaps["tatooine, sandriver"] = {}
testDMMaps["tatooine, sandriver"].usedCells = {"tatooine, sandriver"}
testDMMaps["tatooine, sandriver"].teamSpawnLocations = {}
testDMMaps["tatooine, sandriver"].teamSpawnLocations[1] = {
    {"tatooine, sandriver", 4743, 8230, 13171, 2},
    {"Tatooine, Sandriver", 7809.833984375, 7908.8427734375, 12274.478515625, -2.6777489185333},
    {"Tatooine, Sandriver", 8963.150390625, 6980.89453125, 12291.173828125, -2.2129061222076},
    {"Tatooine, Sandriver", 7719.8017578125, 5478.712890625, 12300.856445313, -1.0707190036774},
    {"Tatooine, Sandriver", 5925.03125, 9186.228515625, 12302.625, -2.9511849880219},
    {"Tatooine, Sandriver", 4990.2734375, 8153.033203125, 12315.431640625, 2.4616901874542},
    {"Tatooine, Sandriver", 6814.240234375, 9016.103515625, 12294.205078125, -2.0738427639008}
}
testDMMaps["tatooine, sandriver"].teamSpawnLocations[2] = {
    {"tatooine, sandriver", 3983, -528, 13446, 2},
    {"Tatooine, Sandriver", 626.69006347656, 59.419456481934, 12294.7734375, 2.2937185764313},
    {"Tatooine, Sandriver", 250.44555664063, -367.04043579102, 12277.626953125, 2.2937185764313},
    {"Tatooine, Sandriver", 2075.36328125, -1721.3762207031, 12260.759765625, -0.25159215927124},
    {"Tatooine, Sandriver", -576.70971679688, -384.27325439453, 12271.90234375, 1.5577805042267},
    {"Tatooine, Sandriver", 672.17535400391, 2064.0588378906, 12307.631835938, 0.86090731620789},
    {"Tatooine, Sandriver", 2795.4016113281, 59.234127044678, 12264.759765625, 0.16481018066406}
}

if jsonInterface.load("custom/testDM/testDMMaps.json") then
    -- testDMMaps = jsonInterface.load("custom/testDM/testDMMaps.json")
    tableHelper.merge(testDMMaps, jsonInterface.load("custom/testDM/testDMMaps.json"))
end

tes3mp.LogMessage(
    2,
    "++++ --Loading maps from server/data/custom/testDMMaps.json and adding any that exist from server/scripts/custom/testDMMaps.lua ... ++++"
)
jsonInterface.save("custom/testDM/testDMMaps.json", testDMMaps)

return testDMMaps
