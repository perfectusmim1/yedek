local success, errorMessage = pcall(function()
    -- Github’daki raw UNC test kodunu çekiyoruz.
    local unctestCode = loadstring(game:HttpGet("https://raw.githubusercontent.com/KullaniciAdiniz/RepoAdi/main/uncTest.lua", true))
    if unctestCode then
        unctestCode()  -- UNC test kodunu çalıştırıyoruz
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
