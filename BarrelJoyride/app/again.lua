--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:7be1f6b10503fe76ea9ec16f71d190b2:3acf8276bdd51fab41c6cc8d6a0c5d97:6cb749e283b0b7fb47c87bfa5b2d33d9$
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
            width=232,
            height=130,

        },
        {
            -- IMG00001
            x=235,
            y=1,
            width=232,
            height=130,

        },
        {
            -- IMG00002
            x=469,
            y=1,
            width=232,
            height=130,

        },
        {
            -- IMG00003
            x=703,
            y=1,
            width=232,
            height=130,

        },
        {
            -- IMG00004
            x=937,
            y=1,
            width=232,
            height=130,

        },
        {
            -- IMG00005
            x=1171,
            y=1,
            width=232,
            height=130,

        },
        {
            -- IMG00006
            x=1405,
            y=1,
            width=232,
            height=130,

        },
        {
            -- IMG00007
            x=1639,
            y=1,
            width=232,
            height=130,

        },
    },
    
    sheetContentWidth = 1872,
    sheetContentHeight = 132
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
