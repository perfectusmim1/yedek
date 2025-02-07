
local Rayfield = Rayfield or loadstring(game:HttpGet("https://raw.githubusercontent.com/perfectusmim1/script/refs/heads/main/editedui", true))()

local success, errorMessage = pcall(function()
    local unctestCode = loadstring(game:HttpGet("https://raw.githubusercontent.com/perfectusmim1/yedek/refs/heads/main/uncTest.lua", true))
    if unctestCode then
        unctestCode()
    else
        error("UNC test kodu yüklenemedi.")
    end
end)

if not success then
    Rayfield:Notify({
        Title = "UNC Test Error",
        Content = "UNC test kodu yüklenirken hata oluştu: " .. errorMessage,
        Duration = 5,
        Image = 133212968396061,
    })
    return
end


task.defer(function()
    repeat task.wait() until _G.uncResult ~= nil
    Rayfield:Notify({
        Title = "UNC Test Result",
        Content = _G.uncResult,
        Duration = 5,
        Image = 133212968396061,
    })
end)
