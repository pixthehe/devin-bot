--* Init
local discordia = require("discordia")
local client = discordia.Client()

--* Varibles
local prefix = "-"

--[[
TODO: Add furry % cmd to bot
]] 

--* Main if found message fundtion

client:on("messageCreate", function(message)
    local content = message.content
    local member = message.member
    local memberId = message.member.id

    if content:lower() == prefix.."ping" then
        message:reply("pong")
    end
    if content:lower() == prefix.."furry" then
        message:reply("You are "..math.random(1,100).."% a furry")
    end
end)



client:run("Bot "..io.open("./token.haha"):read())