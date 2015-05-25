require "httparty"
require "json"
require "mustache"

# get the data from the chute api
response = HTTParty.get('http://api.getchute.com/v2/albums/azS0kgsx/assets')
parsed_response = JSON.parse(response)

puts "<!DOCTYPE html>"
puts "<html>"
puts "<head>"
puts "<style type='text/css'>"
puts "img {"
puts "display: inline-block;"
puts "padding: 5px;"
puts "margin: 10px;"
puts "width: 200px;"
puts "height: 200px;"
puts "box-shadow: 0 0 5px rgba(0, 0, 0, 1);"
puts "}"
puts "</style>"
puts "<title>HELLO!!</title>"
puts "</head>"
puts "<body>"

parsed_response['data'].each do |asset|
	# Mustache.render("<img src={{image_url}}>", { image_url: asset['url'] })
	# puts "<img src="+ asset['url'] +">"
	puts Mustache.render("<div><img src={{url}}><label>{{username}}</label></div>", { url: asset['url'], username: asset['user']['name'] })
end

puts "</body>"


# hash = {
# 	name: "pooja",
# 	last: "kanipakam"
# }
# # hash[:name]

# # array = ["pooja", "kanipakam"]

# # array.each do |a|
# # 	puts a
# # end

# hash.each do |key, value|
# 	puts key
# 	print value.capitalize + " \n"
# end

# print "\n"