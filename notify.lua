
-- UNC test kodunu doğru URL'den çekip çalıştıran ve hata alındığında Rayfield bildirimi gönderen fonksiyon:
local function runUNCAndNotify()
    local success, errorMessage = pcall(function()
        local unctestCode = loadstring(game:HttpGet("https://raw.githubusercontent.com/perfectusmim1/yedek/refs/heads/main/uncTest.lua", true))
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
    end
end

-- Buton callback'inde bu fonksiyonu çağırın:
runUNCAndNotify()
