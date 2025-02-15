wait(0.1)

local runservice = game:GetService("RunService") -- this is the service for the fps idk it handles all processing

local player = game:GetService("Players").LocalPlayer
runservice.Stepped:Connect(function()
    for i,v in pairs(player.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.CanCollide = false -- this disables the collision in your character(ALL COLLISIONS are disabled except for standing)
        end
    end
end)
