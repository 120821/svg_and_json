hash1={"color"=>"Black","object"=>"car","love"=>"friends","fruit"=>"Kiwi","vege"=>"potato"}

puts "Hash store implementation"

puts "Enter the key:"
ky = gets.chomp

puts "Enter the value:"
val = gets.chomp

hsh = hash1.store(ky,val)
puts  "Key updated is #{hsh}"

puts "Self hash object : #{hash1}"
