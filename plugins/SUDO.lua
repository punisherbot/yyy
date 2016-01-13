do

function run(msg, matches)
  return [[
  👥Sudoers of Infernal : 
  🔭 @ArashInfernal 109722284👥
  🔭 @Mustafaflux 171604508 👥 
  🔭 @digitalboys  99743635 👥
  ]]

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
