--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:b92fbc3849f0b1229d4b85e2278456aa:04bd385575e1ffd17897f18229ff588f:45038b2596efb19207fc913076fd4d72$
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
            y=771,
            width=1246,
            height=766,

            sourceX = 30,
            sourceY = 2,
            sourceWidth = 1280,
            sourceHeight = 768
        },
        {
            -- IMG00001
            x=1,
            y=1,
            width=1280,
            height=768,

        },
    },
    
    sheetContentWidth = 1282,
    sheetContentHeight = 1538
}

SheetInfo.frameIndex =
{

    ["IMG00000"] = 1,
    ["IMG00001"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
