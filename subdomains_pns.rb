require 'json'
result = {"code":1,"message":"success","result":{"name":"zzzzzzzzzzzzzzzzzzzzz.dot","namehash":"","labelName":"zzzzzzzzzzzzzzzzzzzzz","labelhash":"0xc40a066a5a14b7cf1a860b96cab9c3b5b945f77824de421109012bed498c151b","owner":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c","parent":"0x3fce7d1364a893e213bc4212792b517ffc88f5b13b86c8ef9c8d390c3a1370ce","expiryDate":"","registrationDate":"","subdomainCount":12,"records":{"DOT":"168EsqUaRF6teT9enPx9X6dbHR7JbWN5hDeNAKtHGUPh4RCy","ETH":"0x0b23E3588c906C3F723C58Ef4d6baEe7840A977c","BTC":"36b6xyDZzvUEJ7QfzqhPzFMKbwzHLZ5tFc","IPFS":"QmQhCuJqSk9fF58wU58oiaJ1qbZwQ1eQ8mVzNWe7tgLNiD","Email":"some@email1.com","Notice":"00302notice","twitter":"https://twitter.com/zou326865641","github":"https://github.com/hebochang","Url":"https://twitter.com/zou32686564","Avatar":"0050103avatar","CNAME":"a.b.c.d.com"},"subdomains":[{"name":"zfd2.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"zfd.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"test6.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"zfd10.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"test1.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"test3.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"zfd3.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"test2.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"zfd11.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"test.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"test4.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}},{"name":"test5.zzzzzzzzzzzzzzzzzzzzz.dot","owner":{"id":"0x0b23e3588c906c3f723c58ef4d6baee7840a977c"}}]}}.to_json
hi = JSON.parse(result)
puts hi['result']['subdomains']
ha = hi['result']['subdomains']
a = ha.map {|e| e['owner']['id']}
puts a
ha.each do |a|
  puts '---'
  puts a['owner']['id']
  puts '---------'
  a['owner'] = a['owner']['id']
  puts a['owner']
end
puts ha
puts '==='
puts a
#ha.each do |e|
#  e.map {|key,value|
#    #puts key
#    #puts key.inspect
#    puts value
#    puts value.inspect
#  }
#end
#hash = {"some_wierd_name"=>"cheesemonster"}

#hash["preferred_name"] = hash["some_wierd_name"]
#hash.delete("some_wierd_name")
#替换key
#mappings = {"Bruce" => "Bruce Wayne", "Clark" => "Clark Kent"}
#ha.keys.each { |k| ha[ mappings[k] ] = ha.delete(k) if mappings[k] }
