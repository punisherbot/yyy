do

function run(msg, matches)
  return " The Invition Link for English support is : \n"
  end
return {
  description = "shows enlish support", 
  usage = "!toengsupport : Return English supports link",
  patterns = {
    "^toengsupport$",
    "^/toengsupport$",
    "^!toengsupport$",
    "^>toengsupport$",
  },
  run = run
}
end
