require 'net/http'
require 'uri'
require 'json'

uri = URI.parse("http://159.203.75.141/checklists")
puts "uri = " + uri.to_s
# BOUNDARY = "AaB03x"

# contentType:"application/json"

header = {"Content-Type": "application/json"}
post = ({

                   'Client_Name': 'Whatever'
                   
                      
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




# void rails_backup_checklist()
# {
# 	req = {"subject" : "suck it", "content" : "LOL" };
#     hdr = { "Content-Type" : "application/json" };
#     resp = postUrl("http://162.243.199.203/posts", req, hdr,false);
#     info resp;
# }







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