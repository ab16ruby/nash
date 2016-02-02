
a = nil
b = nil

print "Kim Başlayacak (1 PC), (2 USER):"

f = nil

loop do
f = gets.strip
if(f=="1")
  a = rand(11..50)
  break
elsif(f=="2")
  loop do
    puts "a giriş:"
    a = gets.strip.to_i
    break if (a>11) and (a<100)
  end
end
end

p a
