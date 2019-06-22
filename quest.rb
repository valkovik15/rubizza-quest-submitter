require 'uri'
require 'net/http'
require 'net/https'
require 'json'

@toSend={
    :github=> "valkovik15",
    :secret_code=> "fXnssgs",
    :goal=> "I was too excited after Rubizza winter graduation party. Now I need the job related with Ruby.",
    :programming_languages=> "Python(3) Ruby, Java, JavaScript(Node.js), C++, R(a bit)",
    :have_a_job=> "Nope",
    :laptop=> "Acer Swift 3, Ubuntu 19.04",
    :english=> "quite good I would say, maybe even C1/2",
    :phone_number=> "+375291241353",
    :hours_per_day=> 5,
    :age=> 19,
    :full_name=>"Valentine Kopotchel",
    :education=>"FAMCS, end of second year, Informatics"
}.to_json

uri = URI.parse("https://rubizza.com/register")
https = Net::HTTP.new(uri.host,uri.port)
https.use_ssl = true
req = Net::HTTP::Post.new(uri.path, initheader = {'Content-Type' =>'application/json'})
req.body = "#{@toSend}"
res = https.request(req)
puts "Response #{res.code} #{res.message}: #{res.body}"
puts req.body