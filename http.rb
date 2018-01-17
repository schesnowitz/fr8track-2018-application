
require 'rubygems'
require 'httparty'
require 'json'
require 'ostruct'

require 'pp'
url = 'https://api.keeptruckin.com/v1'
headers = { 'content-type': 'application/json', 'X-Api-Key': 'key here' }

@kt_users = HTTParty.get("#{url}/users", headers: headers)

@variable = @kt_users
response = JSON.parse(@kt_users.body, object_class: OpenStruct)
  
# pp respone



response.users.each do |data|
  user = data.user
  puts user.id
  puts "*" * 5
  puts user.email
end

user = response.users.find { |data| data.user.id.to_s == '669961'}.user
  puts user.id
  puts "*" * 5
  puts user.email
 



