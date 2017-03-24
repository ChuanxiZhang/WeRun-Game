--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:1a24a5e301f7413a4db6eda9516e0145:89e99a7e8d20d2c9caa48cbb7af3f9f6:dbd5426b93c4d858c2c36d95935b2a2b$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- IMG00000
            x=1,
            y=1,
            width=1024,
            height=92,

            sourceX = 0,
            sourceY = 19,
            sourceWidth = 1024,
            sourceHeight = 136
        },
        {
            -- IMG00001
            x=1,
            y=95,
            width=1024,
            height=90,

            sourceX = 0,
            sourceY = 21,
            sourceWidth = 1024,
            sourceHeight = 136
        },
        {
            -- IMG00002
            x=1027,
            y=93,
            width=1008,
            height=88,

            sourceX = 0,
            sourceY = 22,
            sourceWidth = 1024,
            sourceHeight = 136
        },
        {
            -- IMG00003
            x=1027,
            y=1,
            width=1008,
            height=90,

            sourceX = 0,
            sourceY = 21,
            sourceWidth = 1024,
            sourceHeight = 136
        },
        {
            -- IMG00004
            x=1027,
            y=183,
            width=1008,
            height=88,

            sourceX = 0,
            sourceY = 22,
            sourceWidth = 1024,
            sourceHeight = 136
        },
        {
            -- IMG00005
            x=1,
            y=187,
            width=1002,
            height=86,

            sourceX = 0,
            sourceY = 23,
            sourceWidth = 1024,
            sourceHeight = 136
        },
        {
            -- IMG00006
            x=1005,
            y=273,
            width=1000,
            height=84,

            sourceX = 0,
            sourceY = 24,
            sourceWidth = 1024,
            sourceHeight = 136
        },
        {
            -- IMG00007
            x=1,
            y=275,
            width=992,
            height=82,

            sourceX = 0,
            sourceY = 25,
            sourceWidth = 1024,
            sourceHeight = 136
        },
    },
    
    sheetContentWidth = 2036,
    sheetContentHeight = 358
}

SheetInfo.frameIndex =
{

    ["IMG00000"] = 1,
    ["IMG00001"] = 2,
    ["IMG00002"] = 3,
    ["IMG00003"] = 4,
    ["IMG00004"] = 5,
    ["IMG00005"] = 6,
    ["IMG00006"] = 7,
    ["IMG00007"] = 8,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
