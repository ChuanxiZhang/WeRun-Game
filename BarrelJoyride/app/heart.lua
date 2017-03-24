--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:def6acb75904903731c8efc2f48f7b56:b20d55136e91fad85c3d708b5f6fa36f:01603195ac16abacff3fc3bb5536e157$
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
            width=54,
            height=44,

            sourceX = 1,
            sourceY = 1,
            sourceWidth = 56,
            sourceHeight = 46
        },
        {
            -- IMG00001
            x=57,
            y=1,
            width=54,
            height=44,

            sourceX = 1,
            sourceY = 1,
            sourceWidth = 56,
            sourceHeight = 46
        },
    },
    
    sheetContentWidth = 112,
    sheetContentHeight = 46
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
