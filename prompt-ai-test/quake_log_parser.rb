# typed: false
require "uri"
require "open-uri"

# https://gist.github.com/drake-cloudwalk/77a7046303292b4c4d6440a59ae07c59
# uri = URI.join(
#   "https://gist.githubusercontent.com/",
#   "cloudwalk-tests/be1b636e58abff14088c8b5309f575d8/",
#   "raw/df6ef4a9c0b326ce3760233ef24ae8bfa8e33940/",
#   "qgames.log"
# )

# URI.open(uri) do |file|
#   file.each_line do |line|
#     p line
#   end
# end

log_data = <<~LOGS
  0:00 Kill: 1022 2 22: <world> killed Isgalamido by MOD_TRIGGER_HURT
  0:15 Kill: 3 2 10: Isgalamido killed Dono da Bola by MOD_RAILGUN
  1:00 Kill: 3 2 10: Isgalamido killed Zeh by MOD_RAILGUN
LOGS

pattern = /(\d+:\d+) Kill: (\d+ \d+ \d+:) (.+?) killed (.+?) by (.+)/
scores = {}
scores[:players] = Set.new
scores[:kills] = Hash.new(0)

log_data.each_line do |line|
  match = line.squeeze(" ").match(pattern)
  time, data, killer, killed, weapon = match.captures

  scores[:players].add(killer) unless killer.include?("world")
  scores[:players].add(killed)

  if killer.include?("world")
    scores[:kills][killed] -= 1
  else
    scores[:kills][killer] += 1
  end
end
