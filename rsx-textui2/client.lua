function TextToHtml(text)
    text = text:gsub("~r~", "<span style=Color:red;>") 
    text = text:gsub("~b~", "<span style=Color:blue;>")
    text = text:gsub("~g~", "<span style=Color:green;>")
    text = text:gsub("~y~", "<span style=Color:yellow;>")
    text = text:gsub("~p~", "<span style=Color:purple;>")
    text = text:gsub("~c~", "<span style=Color:grey;>")
    text = text:gsub("~m~", "<span style=Color:darkgrey;>")
    text = text:gsub("~u~", "<span style=Color:black;>")
    text = text:gsub("~o~", "<span style=Color:gold;>")
    text = text:gsub("~s~", "</span>")
    text = text:gsub("~w~", "</span>")
    text = text:gsub("~b~", "<b>")
    text = text:gsub("~n~", "<br>")
    text = "<span>" .. text .. "</span>"

    return text
end


function textui(text)
    SendNUIMessage({
        msg = TextToHtml(text)
    })
end

exports("textui", function(text)
    textui(text)
end)