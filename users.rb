
require 'rubygems'
require 'httparty'
require 'json'
require 'ostruct'

require 'pp'
url = 'https://api.keeptruckin.com/v1'
headers = { 'content-type': 'application/json', 'X-Api-Key': '091333c7-bfcc-4724-a936-d7f4a02966e9' }

@kt_users = HTTParty.get("#{url}/users", headers: headers)


response = JSON.parse(@kt_users.body, object_class: OpenStruct)

pp response



response.users.each do |data|
  user = data.user
  puts user.id
  puts "*" * 5
  puts user.email
end
puts 'GFYS'
user = response.users.find { |data| data.user.id.to_s == '669961'}.user
  puts user.id
  puts "*" * 5
  puts user.email
 



