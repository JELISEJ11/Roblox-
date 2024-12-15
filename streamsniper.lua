-- Ensure the game is fully loaded
if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- Access services
local TextChatService = game:GetService("TextChatService")

-- List of sentences to send
local sentences = {
    "ur gay ",
    "i raped u ",
    "i fucked your mom and burned her alive ",
    "i rape children for fun ",
    "ur gay and u should kys "
}

-- Function to send a chat message
local function sendChatMessage(message)
    local generalChannel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXGeneral")
    if generalChannel then
        generalChannel:SendAsync(message)
    end
end

-- Send all sentences with a 0.2 second delay
for _, sentence in ipairs(sentences) do
    sendChatMessage(sentence)
    wait(0.2) -- Delay between messages
end
