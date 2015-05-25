require 'httparty'

response = HTTParty.get('http://api.getchute.com/v2/albums/azS0kgsx')
puts response["data"]["name"]

# a = {
# 	data: {
# 		name: {
# 			first: 'pooja',
# 			last: 'kanipakam'
# 		}
# 	}
# }

# puts a[:data][:name][:first] + ' ' + a[:data][:name][:last]
