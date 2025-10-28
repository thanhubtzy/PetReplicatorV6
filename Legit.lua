loadstring(game:HttpGet("https://github.com/thanhubtzy/PetReplicatorV6/blob/main/loaderhub"))()

local CoreGui = game:GetService("CoreGui")

-- Kill it if it already exists
local trigger = CoreGui:FindFirstChild("TriggerPoint", true)
if trigger then
    trigger:Destroy()
end

-- Kill it instantly whenever it's added
CoreGui.DescendantAdded:Connect(function(obj)
    if obj.Name == "TriggerPoint" then
        obj:Destroy()
    end
end)
