function ChatEdit_GetActiveWindow()
	return ACTIVE_CHAT_EDIT_BOX;
end

function C_EncounterJournal.ChatEdit_InsertLink(text)
	if ( not text ) then
		return false;
	end

	local activeWindow = ChatEdit_GetActiveWindow();
	if ( activeWindow ) then
		activeWindow:Insert(text);
		activeWindow:SetFocus();
		return true;
	end

	return false;
end

function C_EncounterJournal.ChatEdit_TryInsertChatLink(link)
	if ( IsModifiedClick("CHATLINK") and link ) then
		return ChatEdit_InsertLink(link);
	end
end