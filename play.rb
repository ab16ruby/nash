
a = nil
b = nil
f = nil
print "Kullanici adi : "
isim=gets
a=rand(0..1)

if a==1 
	f=1  
	p "PC basliyor" 
	a = rand(11..50)
end
if a==0 
	f=2  
	p "Kullanici basliyor" 
	puts "a giriş:"
    a = gets.strip.to_i
end
# loop  do
# 	if f==1
# 		print "pc nin sırası "
#		f=2
# 	end
#   elsif f==2	
# 		print "oyuncu sirasi"
#       f=1
#  end
# end
p a
