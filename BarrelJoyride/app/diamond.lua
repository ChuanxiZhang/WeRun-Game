--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:24a2e44b8c402765b7e3746566a2a821:9cb18c775fabe7b42605171d463aac01:6d321e86c7c085f8a07ccb56d70077e2$
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
            width=58,
            height=44,

            sourceX = 46,
            sourceY = 34,
            sourceWidth = 150,
            sourceHeight = 112
        },
        {
            -- IMG00001
            x=61,
            y=1,
            width=58,
            height=44,

            sourceX = 46,
            sourceY = 34,
            sourceWidth = 150,
            sourceHeight = 112
        },
        {
            -- IMG00002
            x=121,
            y=1,
            width=58,
            height=44,

            sourceX = 46,
            sourceY = 34,
            sourceWidth = 150,
            sourceHeight = 112
        },
        {
            -- IMG00003
            x=181,
            y=1,
            width=58,
            height=44,

            sourceX = 46,
            sourceY = 34,
            sourceWidth = 150,
            sourceHeight = 112
        },
        {
            -- IMG00004
            x=241,
            y=1,
            width=58,
            height=44,

            sourceX = 46,
            sourceY = 34,
            sourceWidth = 150,
            sourceHeight = 112
        },
        {
            -- IMG00005
            x=301,
            y=1,
            width=58,
            height=44,

            sourceX = 46,
            sourceY = 34,
            sourceWidth = 150,
            sourceHeight = 112
        },
    },
    
    sheetContentWidth = 360,
    sheetContentHeight = 46
}

SheetInfo.frameIndex =
{

    ["IMG00000"] = 1,
    ["IMG00001"] = 2,
    ["IMG00002"] = 3,
    ["IMG00003"] = 4,
    ["IMG00004"] = 5,
    ["IMG00005"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
