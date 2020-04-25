require "digest"

puts "Введите слово или фразу для шифрования:"

frase = STDIN.gets.strip

puts "Каким способом зашифровать:"

puts "1. MD5"
puts "2. SHA1"

choice = STDIN.gets.strip

puts "Вот что получилось:"

case choice
when "1"
  puts"#{Digest::MD5.hexdigest frase}"
else
  puts"#{Digest::SHA1.hexdigest frase}"
end

