--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:88ca470ee3cbbdbd4788ffba9bf53430:20df6c7acd08df854ab86ad4b6901f2c:1eeab4b07709ea8785c89dffa64c516a$
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
            width=37,
            height=56,

            sourceX = 8,
            sourceY = 13,
            sourceWidth = 97,
            sourceHeight = 76
        },
        {
            -- IMG00001
            x=40,
            y=1,
            width=37,
            height=54,

            sourceX = 8,
            sourceY = 15,
            sourceWidth = 97,
            sourceHeight = 76
        },
        {
            -- IMG00002
            x=79,
            y=1,
            width=71,
            height=52,

            sourceX = 8,
            sourceY = 17,
            sourceWidth = 97,
            sourceHeight = 76
        },
        {
            -- IMG00003
            x=1,
            y=59,
            width=81,
            height=50,

            sourceX = 8,
            sourceY = 19,
            sourceWidth = 97,
            sourceHeight = 76
        },
        {
            -- IMG00004
            x=125,
            y=55,
            width=81,
            height=50,

            sourceX = 8,
            sourceY = 19,
            sourceWidth = 97,
            sourceHeight = 76
        },
        {
            -- IMG00005
            x=152,
            y=1,
            width=81,
            height=50,

            sourceX = 8,
            sourceY = 19,
            sourceWidth = 97,
            sourceHeight = 76
        },
        {
            -- IMG00006
            x=208,
            y=53,
            width=81,
            height=50,

            sourceX = 8,
            sourceY = 19,
            sourceWidth = 97,
            sourceHeight = 76
        },
        {
            -- IMG00007
            x=235,
            y=1,
            width=53,
            height=50,

            sourceX = 8,
            sourceY = 19,
            sourceWidth = 97,
            sourceHeight = 76
        },
        {
            -- IMG00008
            x=84,
            y=55,
            width=39,
            height=52,

            sourceX = 8,
            sourceY = 17,
            sourceWidth = 97,
            sourceHeight = 76
        },
    },
    
    sheetContentWidth = 290,
    sheetContentHeight = 110
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
    ["IMG00008"] = 9,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
