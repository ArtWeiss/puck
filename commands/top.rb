$commands["top"] = "See the top chat leaders!"

$puck.command :top do |event, *args|
  serverId = event.user.server.id
  serverName = event.user.server.name
  top = DB[:top]
  topSQL = <<-SQL
SELECT name, score FROM top WHERE server = ? ORDER BY score DESC LIMIT 10;
SQL
  rows = top.where(server: serverId).reverse_order(:score)
  output = ":bangbang: **Top chatters for #{serverName}**"
  output += '```'
  num = 1
  rows.each { |user|
    output += "##{num}: #{user[:name]} - #{user[:score]}\n\n"
    num += 1
  }
  output += '```'
  output
end
