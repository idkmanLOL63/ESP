local function highlightPlayer(player)
    if player.Character then
        local highlight = Instance.new("Highlight")
        highlight.Parent = player.Character
        highlight.FillColor = Color3.fromRGB(255, 255, 0)
        highlight.OutlineColor = Color3.fromRGB(0, 0, 0)
    end
end


for _, player in pairs(game.Players:GetPlayers()) do
    highlightPlayer(player)
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        highlightPlayer(player)
    end)
end)
