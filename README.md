
fork of https://github.com/testman42/tes3mp-deathmatch made to work with starwind

Installation: 

download the project as a zip and drop the `scripts` folder into your `server` folder and overwrite ( will overwrite your config.lua and menu/help.lua )

then open up `server/scripts/customscripts.lua` and add `require("custom/testDM/testDM")`

currently just deathmatch and team deathmatch

`/help` in game for command info on setting up new matches

weapons and stats are setup in testDMConfig.lua
