if not VoiceOver or not VoiceOver.DataModules then return end

AI_VoiceOverData_VanillaExtra = {}

function AI_VoiceOverData_VanillaExtra:GetSoundPath(fileName, event)
    setfenv(1, VoiceOver)
    if Enums.SoundEvent:IsQuestEvent(event) then
        return format([[generated\sounds\quests\%s.mp3]], fileName)
    elseif Enums.SoundEvent:IsGossipEvent(event) then
        return format([[generated\sounds\gossip\%s.mp3]], fileName)
    end
end

VoiceOver.DataModules:Register("AI_VoiceOverData_VanillaExtra", AI_VoiceOverData_VanillaExtra)
