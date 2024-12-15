-- Ensure the game is fully loaded
if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- Access services
local TextChatService = game:GetService("TextChatService")

-- List of sentences to send
local sentences = {
    "ur gay",
    "i raped your mom and burned her u nigger",
    "i burned your mom she is in my dick",
    "i rape children and let them hang while torchering them",
    "kill yourself if you are gay"
}

-- Function to send a chat message
local function sendChatMessage(message)
    local generalChannel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXGeneral")
    if generalChannel then
        generalChannel:SendAsync(message)
    end
end

-- Infinite loop to send messages
while true do
    for _, sentence in ipairs(sentences) do
        sendChatMessage(sentence)
        wait(0.2) -- Delay between messages
    end
end
