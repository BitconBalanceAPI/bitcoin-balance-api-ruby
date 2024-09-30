require "net/https"
require "json"

url = URI.parse("https://api-testnet.bitcoin-balance-api.com/v1/address/tb1qlw09ycnp3qgqw9alqgx93ed7cg5kmnyud326ky")
req = Net::HTTP::Get.new(url.path)
res = Net::HTTP.new(url.host, url.port)
res.use_ssl = true
request = res.get(url.request_uri)
response = JSON.parse(request.body)
puts("Bitcoin Balance: #{response['balance']}")
