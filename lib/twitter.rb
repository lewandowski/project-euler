
require 'rubygems'
require 'restfulie'

result = Restfulie.at("http://twitter.com/statuses/public_timeline.xml").get

result.resource.statuses.each do |status|
puts "@@@ #{status.user.screen_name}: #{status.text}, #{status.created_at}"
end