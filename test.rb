require 'erb'

def web_page
  <<-PAGE
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>タイトル</title>
  </head>
  <body>
    <ul>
      <% (1..9).each do |num| %>
        <li><%= num %></li>
      <% end %>
    </ul>
  </body>
</html>
  PAGE
end

erb = ERB.new(web_page)
result = erb.result
puts result