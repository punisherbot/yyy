do

function run(msg, matches)
  return " 👥Sudoers of Infernal :\n🔭 Master sudoer : @ArashInfernal 109722284 \n🔭 @Mustafaflux 171604508 👥\n🔭 @digitalboys  99743635 👥 "
  end
return {
  description = "shows sudoers", 
  usage = "!sudoers : return sudousers",
  patterns = {
    "^SUDOERS$",
    "^/sudoers$",
    "^!sudoers$",
    "^sudoers$",
  },
  run = run
}
end
