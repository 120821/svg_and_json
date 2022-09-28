a = "zzzzzzzzzzzzzzzzzzzzz.dot?children=all"
c = "zzzzzzzzzzzzzzzzzzzzz.eth?children=all"
b = a.split('.')
#subdomain_type = a.split('.').last
subdomain_type = c.split('.').last
query_type = a.split('?').last
puts subdomain_type
puts query_type
case subdomain_type
when 'dot'
  puts 'dot'
else
  puts 'not dot'
end
puts '========'
if subdomain_type.include?('dot')
  puts 'dot'
elsif subdomain_type.include?('eth')
  puts 'eth'
else
  puts 'error'
end
