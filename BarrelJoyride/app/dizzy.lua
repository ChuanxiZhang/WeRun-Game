--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:3190fe23f99b413646d3d84462bba81f:2dcef0d735be40cba9aad509969b1848:c164febafe51640f10f63ad8304e1d31$
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
            x=67,
            y=67,
            width=62,
            height=66,

            sourceX = 54,
            sourceY = 27,
            sourceWidth = 172,
            sourceHeight = 120
        },
        {
            -- IMG00001
            x=67,
            y=1,
            width=66,
            height=64,

            sourceX = 51,
            sourceY = 27,
            sourceWidth = 172,
            sourceHeight = 120
        },
        {
            -- IMG00002
            x=67,
            y=135,
            width=66,
            height=62,

            sourceX = 52,
            sourceY = 29,
            sourceWidth = 172,
            sourceHeight = 120
        },
        {
            -- IMG00003
            x=135,
            y=1,
            width=64,
            height=64,

            sourceX = 55,
            sourceY = 27,
            sourceWidth = 172,
            sourceHeight = 120
        },
        {
            -- IMG00004
            x=1,
            y=1,
            width=64,
            height=66,

            sourceX = 54,
            sourceY = 27,
            sourceWidth = 172,
            sourceHeight = 120
        },
        {
            -- IMG00005
            x=1,
            y=69,
            width=64,
            height=66,

            sourceX = 54,
            sourceY = 28,
            sourceWidth = 172,
            sourceHeight = 120
        },
        {
            -- IMG00006
            x=135,
            y=67,
            width=64,
            height=64,

            sourceX = 53,
            sourceY = 29,
            sourceWidth = 172,
            sourceHeight = 120
        },
        {
            -- IMG00007
            x=135,
            y=133,
            width=64,
            height=64,

            sourceX = 52,
            sourceY = 29,
            sourceWidth = 172,
            sourceHeight = 120
        },
    },
    
    sheetContentWidth = 200,
    sheetContentHeight = 198
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
