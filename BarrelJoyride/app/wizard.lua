--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:a0b8143593b979602e71b4f29fd2c9e4:00f17cf39baf5e4c820dc86c18e6dabd:deb1b44bf97c52aed202183bf3fab238$
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
            y=83,
            width=122,
            height=36,

            sourceX = 13,
            sourceY = 32,
            sourceWidth = 150,
            sourceHeight = 100
        },
        {
            -- IMG00001
            x=1,
            y=43,
            width=122,
            height=38,

            sourceX = 13,
            sourceY = 30,
            sourceWidth = 150,
            sourceHeight = 100
        },
        {
            -- IMG00002
            x=125,
            y=43,
            width=124,
            height=36,

            sourceX = 10,
            sourceY = 31,
            sourceWidth = 150,
            sourceHeight = 100
        },
        {
            -- IMG00003
            x=129,
            y=1,
            width=120,
            height=40,

            sourceX = 14,
            sourceY = 29,
            sourceWidth = 150,
            sourceHeight = 100
        },
        {
            -- IMG00004
            x=1,
            y=1,
            width=126,
            height=40,

            sourceX = 10,
            sourceY = 30,
            sourceWidth = 150,
            sourceHeight = 100
        },
        {
            -- IMG00005
            x=125,
            y=81,
            width=124,
            height=36,

            sourceX = 12,
            sourceY = 31,
            sourceWidth = 150,
            sourceHeight = 100
        },
        {
            -- IMG00006
            x=125,
            y=119,
            width=116,
            height=36,

            sourceX = 18,
            sourceY = 31,
            sourceWidth = 150,
            sourceHeight = 100
        },
        {
            -- IMG00007
            x=1,
            y=121,
            width=112,
            height=34,

            sourceX = 21,
            sourceY = 31,
            sourceWidth = 150,
            sourceHeight = 100
        },
    },
    
    sheetContentWidth = 250,
    sheetContentHeight = 156
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
