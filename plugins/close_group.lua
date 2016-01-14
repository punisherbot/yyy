local function kick_user(user_id, chat_id)
  local chat = 'chat#id'..chat_id
  local user = 'user#id'..user_id
  chat_del_user(chat, user, ok_cb, true)
end

local function returnids(cb_extra, success, result)
   local receiver = cb_extra.receiver
   local chat_id = result.id
   local chatname = result.print_name
   local get_cmd = cb_extra.get_cmd
   if get_cmd == 'cgroup' then
   	for k,v in pairs(result.members) do
   		local data = load_data(_config.moderation.data)
   		--[[if data[tostring(chat_id)] then
   			if data[tostring(chat_id)]['moderators'][tostring(v.id)] then
   				return nil
   			end
   		end]]
   		if data['admins'] then
   			if data['admins'][tostring(v.id)] then
   				return nil
   			end
   		end
   		if v.id ~= our_id then
   			ban_user(v.id, chat_id)
   		end
   	end
   end
end

local function run(msg, matches)
   local receiver = get_receiver(msg)
   if not is_chat_msg(msg) then
      return 'This function only works on group'
   end
   if matches[1] == 'cgroup' and matches[2] then
   	  if matches[2] ~= tostring(msg.to.id) then
   	  	return 'Chat id missmatch'
   	  end
   	  local get_cmd = matches[1]
   	  local user_id = msg.to.id
      local text = 'Closing ' .. string.gsub(msg.to.print_name, '_', ' ') .. '...'
      send_large_msg(receiver, text)
      chat_info(receiver, returnids, {receiver=receiver, get_cmd=get_cmd})
   end
end

return {
   description = "close groups if need",
   usage = {
   	  admin = {
   	  	"!cgroup <chat_id> : Close Group And Kick all users from group",
   	  	},
   },
   patterns = {
      "^[!/](cgroup) (%d+)$",
   },
   run = run,
   moderated = true
}
