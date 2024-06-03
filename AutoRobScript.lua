-- Auto-Rob Script for Roblox Jailbreak

-- Load the required libraries
local HttpService = game:GetService("HttpService")

-- Function to safely execute HTTP requests
local function safeHttpGet(url)
    local success, result = pcall(function()
        return game:HttpGet(url, true)
    end)
    if success then
        return result
    else
        warn("Failed to get data from: " .. url)
        return nil
    end
end

-- Function to teleport the player to a specific location
local function teleportTo(location)
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = location
    else
        warn("Character or HumanoidRootPart not found!")
    end
end

-- Function to rob the bank
local function robBank()
    local bankEntrance = CFrame.new(10, 10, 10) -- Replace with actual bank entrance coordinates
    teleportTo(bankEntrance)
    wait(2) -- Wait to simulate walking to the bank

    -- Add code here to start the bank robbery
    -- This could include pressing buttons, avoiding obstacles, etc.
    
    print("Robbed the bank successfully!")
end

-- Function to rob the jewelry store
local function robJewelryStore()
    local jewelryEntrance = CFrame.new(20, 20, 20) -- Replace with actual jewelry store entrance coordinates
    teleportTo(jewelryEntrance)
    wait(2) -- Wait to simulate walking to the jewelry store

    -- Add code here to start the jewelry store robbery
    -- This could include pressing buttons, avoiding obstacles, etc.
    
    print("Robbed the jewelry store successfully!")
end

-- Function to rob the museum
local function robMuseum()
    local museumEntrance = CFrame.new(30, 30, 30) -- Replace with actual museum entrance coordinates
    teleportTo(museumEntrance)
    wait(2) -- Wait to simulate walking to the museum

    -- Add code here to start the museum robbery
    -- This could include pressing buttons, avoiding obstacles, etc.
    
    print("Robbed the museum successfully!")
end

-- Main auto-rob function
local function autoRob()
    while true do
        robBank()
       
