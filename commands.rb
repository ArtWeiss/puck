$commands = {
  "goodshit" => "Good shit copypasta",
  "help" => "this help message",
  "xkcd" => "Get a random xkcd",
  "qwantz" => "Get a random dinosaurcomic",
  "fortune" => "Get a drop of wisdom"
}

$puck.command :goodshit do |event|
  "👌👀👌👀👌👀👌👀👌👀 good shit go౦ԁ sHit👌 thats ✔ some good👌👌shit right👌👌there👌👌👌 right✔there ✔✔if i do ƽaү so my self 💯 i say so 💯 thats what im talking about right there right there (chorus: ʳᶦᵍʰᵗ ᵗʰᵉʳᵉ) mMMMMᎷМ💯 👌👌 👌НO0ОଠOOOOOОଠଠOoooᵒᵒᵒᵒᵒᵒᵒᵒᵒ👌 👌👌 👌 💯 👌 👀 👀 👀 👌👌Good shit"
end

$puck.command :help do |event|
  output = "```"
  $commands.each do |key, val|
    output += "p!#{key} - #{val}\n"
  end
  output += "```"
  output
end

$puck.command :xkcd do |event|
  maxXKCD = 1821
  num = rand(1..maxXKCD)
  "https://xkcd.com/#{num}/"
end

$puck.command :qwantz do |event|
  max = 3128
  num = rand(1..max)
  "http://www.qwantz.com/index.php?comic=#{num}"
end

$puck.command :fortune do |event|
  output = "```"
  output += %x(fortune)
  output += "```"
  output
end
