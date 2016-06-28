require 'net/http'
require 'uri'
require 'json'

uri = URI.parse("http://162.243.199.203/posts")
puts "uri = " + uri.to_s
# BOUNDARY = "AaB03x"

# contentType:"application/json"

header = {"Content-Type": "application/json"}
post = ({

                   'subject': 'totally',
                   'content': 'awesome'
                   
                      
            })
# Create the HTTP objects
http = Net::HTTP.new(uri.host, uri.port)

puts uri.host.to_s + uri.port.to_s 

request = Net::HTTP::Post.new(uri.request_uri, header)
puts uri.request_uri
request.body = post.to_json
# puts request.body
# Send the request
response = http.request(request)
puts request


# http.each do |key, value|
#     key.to_s + ' : ' + value + "\n ******* \n"
# end


#({"post": {"subject": "yeah","content": "kinda"}})

                   
                
            

# require "net/http"
# require "uri"

# uri = URI.parse("http://example.com/search")

# # Shortcut
# response = Net::HTTP.post_form(uri, {"q" => "My query", "per_page" => "50"})

# # Full control
# http = Net::HTTP.new(uri.host, uri.port)

# request = Net::HTTP::Post.new(uri.request_uri)
# request.set_form_data({"q" => "My query", "per_page" => "50"})

# response = http.request(request)